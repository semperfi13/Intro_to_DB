import mysql.connector

# Replace with your connection details
mydb = mysql.connector.connect(
    host="localhost",
    user="root",
    password="root",
    database="alx_be",
)


mycursor = mydb.cursor()
# Execute SQL statements using the execute() method on the cursor

""" sql = "INSERT INTO Products (ProductID,Name,Price) VALUES(%s,%s,%s)"
val = (12, "Phone", 1000)


mycursor.execute(sql, val)

mydb.commit()  # Commit the changes """

sql2 = "SELECT * FROM Products"
mycursor.execute(sql2)
result = mycursor.fetchall()

print("All products before update")
for i in result:
    print(i)

print("All products after update")

sql3 = "UPDATE Products SET Price = %s WHERE ProductID = %s"
val = (250500, 2)
mycursor.execute(sql3, val)
mydb.commit()


mycursor.execute(sql2)
result = mycursor.fetchall()

for i in result:
    print(i)

print("All products after delete")

sql4 = "DELETE FROM Products WHERE ProductID = %s AND Price = %s "
val = (2, 250500)
mycursor.execute(sql4, val)
mydb.commit()


mycursor.execute(sql2)
result = mycursor.fetchall()

for i in result:
    print(i)

# Close connection to the databasse
mycursor.close()
mydb.close()
