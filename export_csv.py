import csv
import psycopg2

username = 'Vavrovskiy_Viktor'
password = 'postgres'
database = 'laboratoryworks'
host = 'localhost'
port = '5432'


output_file = 'Viktor_Vavrovskiy_{}.csv'

tables = [
    'Airport',
    'Airline',
    'Flight_Route',
]

conn = psycopg2.connect(user=username, password=password, dbname=database, host=host, port=port)

with conn:
    cur = conn.cursor()

    for table_name in tables:
        cur.execute('select * from ' + table_name)
        fieldnames = [x[0] for x in cur.description]
        with open(output_file.format(table_name), 'w', newline='') as csvfile:
            writer = csv.writer(csvfile)
            writer.writerow(fieldnames)
            for row in cur:
                writer.writerow(row)
