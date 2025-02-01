import mysql.connector


# Replace with your connection details
try:
    mydb = mysql.connector.connect(
        host="localhost",
        user="root",
        password="root",
        database="alx_book_store",
    )
except mysql.connector.Error as e:
    print(e)


mycursor = mydb.cursor()

sql = "CREATE DATABASE IF NOT EXISTS alx_book_store"
mycursor.execute(sql)

# Execute SQL statements using the execute() method on the cursor
print("Database 'alx_book_store' created successfully! ")

# Close connection to the databasse
mycursor.close()
mydb.close()
