import json
import psycopg2

username = 'Vavrovskiy_Viktor'
password = 'postgres'
database = 'laboratoryworks'
host = 'localhost'
port = '5432'


tables = [
    'Airport',
    'Airline',
    'Flight_Route',
]

conn = psycopg2.connect(user=username, password=password, dbname=database, host=host, port=port)


data = {}
with conn:

    cur = conn.cursor()
    
    for table in tables:
        cur.execute('select * from ' + table)
        rows = []
        fields = [x[0] for x in cur.description]

        for row in cur:
            rows.append(dict(zip(fields, row)))

        data[table] = rows

with open('l5.json', 'w') as outf:
    json.dump(data, outf, default = str)