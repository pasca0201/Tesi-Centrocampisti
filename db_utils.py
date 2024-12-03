import mysql.connector
import pandas as pd


def connect_to_database(host, user, password, database):
    """Stabilisce connessione con il database"""
    try:
        connection = mysql.connector.connect(
            host=host,
            user=user,
            password=password,
            database=database
        )
        print("Connessione al database riuscita!")
        return connection
    except mysql.connector.Error as err:
        print(f"Errore di connessione: {err}")
        return None


def load_data(connection, tipo_centrocampista=None):
    """Carica i giocatori e li JOINA in un unica tabella"""
    query = """
    SELECT *
    FROM giocatori
    JOIN statistiche_fisiologiche ON giocatori.id_giocatore = statistiche_fisiologiche.id_giocatore
    JOIN statistiche_psicologiche ON giocatori.id_giocatore = statistiche_psicologiche.id_giocatore
    JOIN statistiche_tattiche ON giocatori.id_giocatore = statistiche_tattiche.id_giocatore
    JOIN statistiche_tecniche_difensive ON giocatori.id_giocatore = statistiche_tecniche_difensive.id_giocatore
    LEFT JOIN statistiche_tecniche_offensive ON giocatori.id_giocatore = statistiche_tecniche_offensive.id_giocatore
    JOIN statistiche_internazionali ON giocatori.id_giocatore = statistiche_internazionali.id_giocatore
    """
    if tipo_centrocampista:
        query += f" WHERE giocatori.posizione = '{tipo_centrocampista}'"
    return pd.read_sql(query, connection)
