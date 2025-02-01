import mysql.connector


""" CREATE DATABASE IF NOT EXISTS alx_book_store
 """


def connect_database():
    # Replace with your connection details
    mydb = mysql.connector.connect(
        host="localhost",
        user="root",
        password="root",
        database="alx_book_store",
    )
    return mydb
