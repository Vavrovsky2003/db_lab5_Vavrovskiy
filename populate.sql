INSERT INTO Airport(Airport_id, Airport_name, City, State)
VALUES('ANC','Ted Stevens Anchorage International Airport', 'Anchorage', 'PA');
INSERT INTO Airport(Airport_id, Airport_name, City, State)
VALUES('ATL','Hartsfield-Jackson Atlanta International Airport', 'Atlanta', 'TX');
INSERT INTO Airport(Airport_id, Airport_name, City, State)
VALUES('CLT','Charlotte Douglas International Airport', 'Charlotte', 'NM');
INSERT INTO Airport(Airport_id, Airport_name, City, State)
VALUES('DEN','Denver International Airport', 'Denver', 'SD');
INSERT INTO Airport(Airport_id, Airport_name, City, State)
VALUES('DFW','Dallas/Fort Worth International Airport', 'Dallas-Fort Worth', 'GA');
INSERT INTO Airport(Airport_id, Airport_name, City, State)
VALUES('IAH','George Bush Intercontinental Airport', 'Houston', 'MA');
INSERT INTO Airport(Airport_id, Airport_name, City, State)
VALUES('LAS','McCarran International Airport', 'Las Vegas', 'TX');
INSERT INTO Airport(Airport_id, Airport_name, City, State)
VALUES('LAX','Los Angeles International Airport', 'Los Angeles', 'CA');
INSERT INTO Airport(Airport_id, Airport_name, City, State)
VALUES('MIA','Miami International Airport', 'Miami', 'NJ');
INSERT INTO Airport(Airport_id, Airport_name, City, State)
VALUES('MSP','Minneapolis-Saint Paul International Airport', 'Minneapolis', 'AK');
INSERT INTO Airport(Airport_id, Airport_name, City, State)
VALUES('PBI','Palm Beach International Airport', 'West Palm Beach', 'AK');
INSERT INTO Airport(Airport_id, Airport_name, City, State)
VALUES('PDX','Portland International Airport', 'Portlands', 'LA');
INSERT INTO Airport(Airport_id, Airport_name, City, State)
VALUES('SEA','Seattle-Tacoma International Airport', 'Seattle', 'GA');
INSERT INTO Airport(Airport_id, Airport_name, City, State)
VALUES('SFO','San Francisco International Airport', 'San Francisco', 'AK');
INSERT INTO Airport(Airport_id, Airport_name, City, State)
VALUES('SLC','Salt Lake City International Airport', 'Salt Lake City', 'NY');


INSERT INTO Airline(Airline_id, Airline_name)
VALUES('AA','American Airlines Inc.');
INSERT INTO Airline(Airline_id, Airline_name)
VALUES('AS','Alaska Airlines Inc.');
INSERT INTO Airline(Airline_id, Airline_name)
VALUES('DL','Delta Air Lines Inc.');
INSERT INTO Airline(Airline_id, Airline_name)
VALUES('NK','Spirit Air Lines');
INSERT INTO Airline(Airline_id, Airline_name)
VALUES('UA','United Air Lines Inc.');
INSERT INTO Airline(Airline_id, Airline_name)
VALUES('US','US Airways Inc.');



INSERT INTO Flight_Route(Flight_id, Flight_Number, Origin_Airport, Destination_Airport, Airline)
VALUES(1, 98, 'ANC', 'SEA', 'AS');
INSERT INTO Flight_Route(Flight_id, Flight_Number, Origin_Airport, Destination_Airport, Airline)
VALUES(2, 2336, 'LAX', 'PBI', 'AA');
INSERT INTO Flight_Route(Flight_id, Flight_Number, Origin_Airport, Destination_Airport, Airline)
VALUES(3, 840, 'SFO', 'CLT', 'US');
INSERT INTO Flight_Route(Flight_id, Flight_Number, Origin_Airport, Destination_Airport, Airline)
VALUES(4, 258, 'LAX', 'PBI', 'AA');
INSERT INTO Flight_Route(Flight_id, Flight_Number, Origin_Airport, Destination_Airport, Airline)
VALUES(5, 135, 'SEA', 'ANC', 'AS');
INSERT INTO Flight_Route(Flight_id, Flight_Number, Origin_Airport, Destination_Airport, Airline)
VALUES(6, 806, 'SFO', 'MSP', 'DL');
INSERT INTO Flight_Route(Flight_id, Flight_Number, Origin_Airport, Destination_Airport, Airline)
VALUES(7, 612, 'LAS', 'MSP', 'NK');
INSERT INTO Flight_Route(Flight_id, Flight_Number, Origin_Airport, Destination_Airport, Airline)
VALUES(8, 2013, 'LAX', 'CLT', 'US');
INSERT INTO Flight_Route(Flight_id, Flight_Number, Origin_Airport, Destination_Airport, Airline)
VALUES(9, 1112, 'SFO', 'DFW', 'AA');
INSERT INTO Flight_Route(Flight_id, Flight_Number, Origin_Airport, Destination_Airport, Airline)
VALUES(10, 1173, 'LAS', 'ATL', 'DL');
INSERT INTO Flight_Route(Flight_id, Flight_Number, Origin_Airport, Destination_Airport, Airline)
VALUES(11, 2336, 'DEN', 'ATL', 'DL');
INSERT INTO Flight_Route(Flight_id, Flight_Number, Origin_Airport, Destination_Airport, Airline)
VALUES(12, 1674, 'LAS', 'MIA', 'AA');
INSERT INTO Flight_Route(Flight_id, Flight_Number, Origin_Airport, Destination_Airport, Airline)
VALUES(13, 1434, 'LAX', 'MSP', 'DL');
INSERT INTO Flight_Route(Flight_id, Flight_Number, Origin_Airport, Destination_Airport, Airline)
VALUES(14, 2324, 'SLC', 'ATL', 'DL');
INSERT INTO Flight_Route(Flight_id, Flight_Number, Origin_Airport, Destination_Airport, Airline)
VALUES(15, 2440, 'SEA', 'MSP', 'DL');
INSERT INTO Flight_Route(Flight_id, Flight_Number, Origin_Airport, Destination_Airport, Airline)
VALUES(16, 108, 'ANC', 'SEA', 'AS');
INSERT INTO Flight_Route(Flight_id, Flight_Number, Origin_Airport, Destination_Airport, Airline)
VALUES(17, 1560, 'ANC', 'SEA', 'DL');
INSERT INTO Flight_Route(Flight_id, Flight_Number, Origin_Airport, Destination_Airport, Airline)
VALUES(18, 1197, 'SFO', 'IAH', 'UA');
INSERT INTO Flight_Route(Flight_id, Flight_Number, Origin_Airport, Destination_Airport, Airline)
VALUES(19, 122, 'ANC', 'PDX', 'AS');
INSERT INTO Flight_Route(Flight_id, Flight_Number, Origin_Airport, Destination_Airport, Airline)
VALUES(20, 1670, 'PDX', 'MSP', 'DL');