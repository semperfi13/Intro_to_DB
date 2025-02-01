import mysql.connector


def connect_database():
    # Replace with your connection details
    mydb = mysql.connector.connect(
        host="localhost", user="root", password="root", database="alx_be"
    )
    return mydb


def add_book(id, title, author, isbn):
    sql = "INSERT INTO Books (ID,Title,Author,ISBN) VALUES(%s,%s,%s,%s)"
    val = (id, title, author, isbn)
    mycursor.execute(sql, val)
    mydb.commit()


def display_books():
    sql = "SELECT * FROM Books"
    mycursor.execute(sql)
    return mycursor.fetchall()


def search_book(title):
    sql = "SELECT * FROM Books WHERE Title = %s OR Author = %s OR ISBN = %s"
    val = (title,)
    mycursor.execute(sql, val)
    return mycursor.fetchall()


def delete_book(ID):
    sql = "DELETE FROM Books WHERE ID = %s"
    val = (ID,)
    mycursor.execute(sql, val)


def create_table():

    create_table = """CREATE TABLE IF NOT EXISTS Books (
    ID INT PRIMARY KEY, Title VARCHAR(255) NOT NULL,
    Author VARCHAR(255) NOT NULL,ISBN VARCHAR(255) NOT NULL)"""

    mycursor.execute(create_table)
    mydb.commit()

    print("Table created successfully!")


mydb = connect_database()


mycursor = mydb.cursor()

# Execute SQL statements using the execute() method on the cursor


# add_book(2, "Semper", "Samad", "3GDH12")
# result = search_book("Semper fi")
delete_book(2)
result = display_books()

create_table()

if len(result) == 0:
    print("No books")
else:
    for i in result:
        print(i)

# Close connection to the databasse
mycursor.close()
mydb.close()
print("Database connection closed.")
