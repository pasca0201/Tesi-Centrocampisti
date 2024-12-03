from data_processing import clean_data, fit_model, plot_regression_results, print_and_plot_outliers_with_details
from db_utils import connect_to_database, load_data
from kpi_selection import select_top_kpi_by_p_value, fit_and_print_r2_with_custom_kpi, select_custom_kpi
from regression_analysis import print_and_plot_model_summary

# Connessione al database e caricamento dei dati
connection = connect_to_database(
    host="localhost",
    user="root",
    password="NuovaPassword",
    database="centrocampisti serie a"
)

# Caricamento e pulizia dei dati
df_all = clean_data(load_data(connection))
df_offensivi = clean_data(load_data(connection, 'Centrocampista Offensivo'))
df_difensivi = clean_data(load_data(connection, 'Centrocampista Difensivo'))

# Definizione delle variabili
target = 'valore_mercato'
initial_features = df_all.columns.difference(
    ['id_giocatore', 'nome', 'cognome', 'nazionalita', 'squadra', 'posizione', 'valore_mercato'])

# Modello di regressione per tutti i centrocampisti
model_all = fit_model(df_all, target, initial_features)
print_and_plot_model_summary(model_all, "Modello Tutti i Centrocampisti")
plot_regression_results(df_all, model_all, target, "Regressione Lineare per Tutti i Centrocampisti")

# Modelli di regressione per centrocampisti offensivi e difensivi
model_offensivi = fit_model(df_offensivi, target, initial_features)
print_and_plot_model_summary(model_offensivi, "Modello Centrocampisti Offensivi")
plot_regression_results(df_offensivi, model_offensivi, target, "Regressione Lineare per Centrocampisti Offensivi")

model_difensivi = fit_model(df_difensivi, target, initial_features)
print_and_plot_model_summary(model_difensivi, "Modello Centrocampisti Difensivi")
plot_regression_results(df_difensivi, model_difensivi, target, "Regressione Lineare per Centrocampisti Difensivi")

# Analisi Top 10 KPI per p-value
top_kpi_all = select_top_kpi_by_p_value(model_all, p_value_threshold=0.2, top_n=10)
top_model_all = fit_model(df_all, target, top_kpi_all['KPI'].values)
print_and_plot_model_summary(top_model_all, "Top 10 KPI per p-value - Tutti i Centrocampisti")
plot_regression_results(df_all, top_model_all, target, "Top 10 KPI per p-value - Tutti i Centrocampisti")

top_kpi_offensivi = select_top_kpi_by_p_value(model_offensivi, p_value_threshold=0.2, top_n=10)
top_model_offensivi = fit_model(df_offensivi, target, top_kpi_offensivi['KPI'].values)
print_and_plot_model_summary(top_model_offensivi, "Top 10 KPI per p-value - Centrocampisti Offensivi")
plot_regression_results(df_offensivi, top_model_offensivi, target, "Top 10 KPI per p-value - Centrocampisti Offensivi")

top_kpi_difensivi = select_top_kpi_by_p_value(model_difensivi, p_value_threshold=0.2, top_n=10)
top_model_difensivi = fit_model(df_difensivi, target, top_kpi_difensivi['KPI'].values)
print_and_plot_model_summary(top_model_difensivi, "Top 10 KPI per p-value - Centrocampisti Difensivi")
plot_regression_results(df_difensivi, top_model_difensivi, target, "Top 10 KPI per p-value - Centrocampisti Difensivi")

# Definizione dei KPI manualmente scelti per centrocampisti offensivi e difensivi
offensive_kpi_selected = ['minuti_giocati', 'tiri_totali', 'const',
                          'dribling_riciti', 'passaggi_completati', 'expected_goals', 'duelli_aerei_totali']
defensive_kpi_selected = ['duelli_aerei_totali', 'passaggi_chiave', 'passaggi_completati',
                          'eta', 'percentuale_duelli', 'precisione_passaggi', 'const']
general_kpi_selected = ['eta', 'expected_goals', 'passaggi_completati',
                        'precisione_passaggi', 'const']

# Selezione dei KPI validi per i centrocampisti offensivi
valid_offensive_kpi = select_custom_kpi(df_offensivi, offensive_kpi_selected)

# Adattamento del modello per i centrocampisti offensivi con KPI selezionati manualmente
model_offensivi = fit_and_print_r2_with_custom_kpi(df_offensivi, target, valid_offensive_kpi)
print_and_plot_model_summary(model_offensivi, "KPI selezionati manualmente - Centrocampisti Offensivi")
plot_regression_results(df_offensivi, model_offensivi, target, "KPI selezionati manualmente - Centrocampisti Offensivi")

# Selezione dei KPI validi per i centrocampisti difensivi
valid_defensive_kpi = select_custom_kpi(df_difensivi, defensive_kpi_selected)

# Adattamento del modello per i centrocampisti difensivi con KPI selezionati manualmente
model_difensivi = fit_and_print_r2_with_custom_kpi(df_difensivi, target, valid_defensive_kpi)
print_and_plot_model_summary(model_difensivi, "KPI selezionati manualmente - Centrocampisti Difensivi")
plot_regression_results(df_difensivi, model_difensivi, target, "KPI selezionati manualmente - Centrocampisti Difensivi")

# Selezione dei KPI validi per i centrocampisti generali
valid_general_kpi = select_custom_kpi(df_all, general_kpi_selected)

# Adattamento del modello per i centrocampisti generali con KPI selezionati manualmente
model_general = fit_and_print_r2_with_custom_kpi(df_all, target, valid_general_kpi)

# Mostra l'analisi del modello per i centrocampisti generali
print_and_plot_model_summary(model_general, "KPI selezionati manualmente - Centrocampisti Generali")
plot_regression_results(df_all, model_general, target, "KPI selezionati manualmente - Centrocampisti Generali")

# Outlier per i centrocampisti offensivi
print_and_plot_outliers_with_details(df_offensivi, model_offensivi, target, threshold=3)

# Outlier per i centrocampisti difensivi
print_and_plot_outliers_with_details(df_difensivi, model_difensivi, target, threshold=3)

