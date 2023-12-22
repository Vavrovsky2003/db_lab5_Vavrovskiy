import psycopg2
import matplotlib.pyplot as plt

username = 'Vavrovskiy_Viktor'
password = 'postgres'
database = 'laboratoryworks'
host = 'localhost'
port = '5432'


query_1 = '''
Create View AirlinesDestination As 
Select Destination_Airport.IATA_code, Count (airline) 
From  Destination_Airport Left Join flight_route
On Destination_Airport=IATA_code
Group By Destination_Airport.IATA_code 
'''

query_2 = '''
Create View AirlinesOrigin As 
Select Origin_Airport.IATA_code, Count (airline) 
From Origin_Airport Left Join flight_route
On Origin_Airport=IATA_code
Group By Origin_Airport.IATA_code 
'''

query_3 = '''
Create View FlightRoutesOrigin As 
Select Origin_Airport.IATA_code, Count (flight_number) 
From Origin_Airport Left Join flight_route
On Origin_Airport=IATA_code
Group By Origin_Airport.IATA_code 
'''

conn = psycopg2.connect(user=username, password=password, dbname=database, host=host, port=port)



with conn:
    cur = conn.cursor()
    #стовпчикова діаграма
    cur.execute('DROP VIEW IF EXISTS AirlinesDestination')
    cur.execute(query_1)
    cur.execute('SELECT * FROM AirlinesDestination')
    Destination_Airport= []
    Count_Of_Airlines = []


    for row in cur:
        Destination_Airport.append(row[0])
        Count_Of_Airlines.append(row[1])

    x_range = range(len(Destination_Airport))
 
    figure, (bar_ax, pie_ax, graph_ax) = plt.subplots(1, 3)
    bar = bar_ax.bar(x_range, Count_Of_Airlines, label='count')
    bar_ax.bar_label(bar, label_type='center') 
    bar_ax.set_xticks(x_range)
    bar_ax.set_xticklabels(Destination_Airport)
    bar_ax.tick_params(axis='both', which='major', labelsize=7)
    bar_ax.set_xlabel('IATA-код аеропорту')
    bar_ax.set_ylabel('Кількість рейсів')
    bar_ax.set_title('Кількість аероперевізників, літаки яких, прибували в кожен аеропорт')

    #кругова діаграма 
    cur.execute('DROP VIEW IF EXISTS AirlinesOrigin')
    cur.execute(query_2)
    cur.execute('SELECT * FROM AirlinesOrigin')
    Destination_Airport = []
    Count_Of_Airlines = []
    for row in cur:
        Destination_Airport.append(row[0])
        Count_Of_Airlines.append(row[1])

    pie_ax.pie(Count_Of_Airlines, labels=Destination_Airport, autopct='%1.1f%%',textprops={'fontsize': 8})
    pie_ax.set_title('Кількість аероперевізників, літаки яких, \nвідправлялися з кожного аеропорта')

    #точковий графік залежності
    cur.execute('DROP VIEW IF EXISTS FlightRoutesOrigin')
    cur.execute(query_3)
    cur.execute('SELECT * FROM FlightRoutesOrigin')
    Origin_Airport = []
    Count_Of_Flight_Routes = []
    for row in cur:
        Origin_Airport.append(row[0])
        Count_Of_Flight_Routes.append(row[1])


    graph_ax.plot(Origin_Airport, Count_Of_Flight_Routes, marker='o')
    graph_ax.set_xlabel('IATA-код аеропорту')
    graph_ax.set_ylabel('Кількість рейсів')
    graph_ax.tick_params(axis='both', which='major', labelsize=7)
    graph_ax.set_title('Кількість рейсів, що, вилітали з кожного аеропорту')

    for qnt, price in zip(Origin_Airport, Count_Of_Flight_Routes):
        graph_ax.annotate(price, xy=(qnt, price), xytext=(7, 2), textcoords='offset points')


mng = plt.get_current_fig_manager()
mng.resize(2000, 800)

plt.show()
