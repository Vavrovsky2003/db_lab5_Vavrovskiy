import csv
import decimal
import psycopg2

username = 'Vavrovskiy_Viktor'
password = 'postgres'
database = 'laboratoryworks'
host = 'localhost'
port = '5432'
INPUT_CSV_FILE_1 = 'airlines.csv'
INPUT_CSV_FILE_2 = 'airports.csv'
INPUT_CSV_FILE_3 = 'flights.csv'


query_1 = '''
INSERT INTO Airport(Airport_id, Airport_name, City, State) VALUES (%s, %s, %s, %s)
'''

query_2 = '''
INSERT INTO Airline(Airline_id, Airline_name) VALUES (%s, %s)
'''

query_3 = '''
INSERT INTO Flight_Route(Flight_id, Flight_Number, Origin_Airport, Destination_Airport, Airline) VALUES (%s, %s, %s, %s, %s)
'''

query_4 = '''
DELETE FROM Airport
'''

query_5 = '''
DELETE FROM Airline
'''

query_6 = '''
DELETE FROM Flight_Route
'''
  
conn = psycopg2.connect(user=username, password=password, dbname=database)

with conn:
    cur = conn.cursor()
    cur.execute(query_6)
    cur.execute(query_4)
    cur.execute(query_5)   
    with open(INPUT_CSV_FILE_1, 'r') as file:
        reader = csv.DictReader(file)

        for idx, row in enumerate(reader):
            values = (row['IATA_CODE'], row['AIRLINE']) 
            cur.execute(query_2, values)
    with open(INPUT_CSV_FILE_2, 'r') as file:
        reader = csv.DictReader(file)

        for idx, row in enumerate(reader):
            values = (row['IATA_CODE'], row['AIRPORT'], row['CITY'], row['STATE']) 
            cur.execute(query_1, values)


    with open(INPUT_CSV_FILE_3, 'r') as file:
        reader = csv.DictReader(file)  
        for idx, row in enumerate(reader):
            values = (idx+1, row['FLIGHT_NUMBER'], row['ORIGIN_AIRPORT'], row['DESTINATION_AIRPORT'], row['AIRLINE']) 
            cur.execute(query_3, values)
        

conn.commit()  