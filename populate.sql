INSERT INTO Origin_Airport(IATA_code, Name, City, State)
VALUES('ANC','Ted Stevens Anchorage International Airport', 'Anchorage', 'PA');
INSERT INTO Origin_Airport(IATA_code, Name, City, State)
VALUES('ATL','Hartsfield-Jackson Atlanta International Airport', 'Atlanta', 'TX');
INSERT INTO Origin_Airport(IATA_code, Name, City, State)
VALUES('CLT','Charlotte Douglas International Airport', 'Charlotte', 'NM');
INSERT INTO Origin_Airport(IATA_code, Name, City, State)
VALUES('DEN','Denver International Airport', 'Denver', 'SD');
INSERT INTO Origin_Airport(IATA_code, Name, City, State)
VALUES('DFW','Dallas/Fort Worth International Airport', 'Dallas-Fort Worth', 'GA');
INSERT INTO Origin_Airport(IATA_code, Name, City, State)
VALUES('IAH','George Bush Intercontinental Airport', 'Houston', 'MA');
INSERT INTO Origin_Airport(IATA_code, Name, City, State)
VALUES('LAS','McCarran International Airport', 'Las Vegas', 'TX');
INSERT INTO Origin_Airport(IATA_code, Name, City, State)
VALUES('LAX','Los Angeles International Airport', 'Los Angeles', 'CA');
INSERT INTO Origin_Airport(IATA_code, Name, City, State)
VALUES('MIA','Miami International Airport', 'Miami', 'NJ');
INSERT INTO Origin_Airport(IATA_code, Name, City, State)
VALUES('MSP','Minneapolis-Saint Paul International Airport', 'Minneapolis', 'AK');
INSERT INTO Origin_Airport(IATA_code, Name, City, State)
VALUES('PBI','Palm Beach International Airport', 'West Palm Beach', 'AK');
INSERT INTO Origin_Airport(IATA_code, Name, City, State)
VALUES('PDX','Portland International Airport', 'Portlands', 'LA');
INSERT INTO Origin_Airport(IATA_code, Name, City, State)
VALUES('SEA','Seattle-Tacoma International Airport', 'Seattle', 'GA');
INSERT INTO Origin_Airport(IATA_code, Name, City, State)
VALUES('SFO','San Francisco International Airport', 'San Francisco', 'AK');
INSERT INTO Origin_Airport(IATA_code, Name, City, State)
VALUES('SLC','Salt Lake City International Airport', 'Salt Lake City', 'NY');


INSERT INTO Airline(IATA_code, Name)
VALUES('AA','American Airlines Inc.');
INSERT INTO Airline(IATA_code, Name)
VALUES('AS','Alaska Airlines Inc.');
INSERT INTO Airline(IATA_code, Name)
VALUES('DL','Delta Air Lines Inc.');
INSERT INTO Airline(IATA_code, Name)
VALUES('NK','Spirit Air Lines');
INSERT INTO Airline(IATA_code, Name)
VALUES('UA','United Air Lines Inc.');
INSERT INTO Airline(IATA_code, Name)
VALUES('US','US Airways Inc.');

INSERT INTO Destination_Airport(IATA_code, Name, City, State)
VALUES('ANC','Ted Stevens Anchorage International Airport', 'Anchorage', 'PA');
INSERT INTO Destination_Airport(IATA_code, Name, City, State)
VALUES('ATL','Hartsfield-Jackson Atlanta International Airport', 'Atlanta', 'TX');
INSERT INTO Destination_Airport(IATA_code, Name, City, State)
VALUES('CLT','Charlotte Douglas International Airport', 'Charlotte', 'NM');
INSERT INTO Destination_Airport(IATA_code, Name, City, State)
VALUES('DEN','Denver International Airport', 'Denver', 'SD');
INSERT INTO Destination_Airport(IATA_code, Name, City, State)
VALUES('DFW','Dallas/Fort Worth International Airport', 'Dallas-Fort Worth', 'GA');
INSERT INTO Destination_Airport(IATA_code, Name, City, State)
VALUES('IAH','George Bush Intercontinental Airport', 'Houston', 'MA');
INSERT INTO Destination_Airport(IATA_code, Name, City, State)
VALUES('LAS','McCarran International Airport', 'Las Vegas', 'TX');
INSERT INTO Destination_Airport(IATA_code, Name, City, State)
VALUES('LAX','Los Angeles International Airport', 'Los Angeles', 'CA');
INSERT INTO Destination_Airport(IATA_code, Name, City, State)
VALUES('MIA','Miami International Airport', 'Miami', 'NJ');
INSERT INTO Destination_Airport(IATA_code, Name, City, State)
VALUES('MSP','Minneapolis-Saint Paul International Airport', 'Minneapolis', 'AK');
INSERT INTO Destination_Airport(IATA_code, Name, City, State)
VALUES('PBI','Palm Beach International Airport', 'West Palm Beach', 'AK');
INSERT INTO Destination_Airport(IATA_code, Name, City, State)
VALUES('PDX','Portland International Airport', 'Portlands', 'LA');
INSERT INTO Destination_Airport(IATA_code, Name, City, State)
VALUES('SEA','Seattle-Tacoma International Airport', 'Seattle', 'GA');
INSERT INTO Destination_Airport(IATA_code, Name, City, State)
VALUES('SFO','San Francisco International Airport', 'San Francisco', 'AK');
INSERT INTO Destination_Airport(IATA_code, Name, City, State)
VALUES('SLC','Salt Lake City International Airport', 'Salt Lake City', 'NY');


INSERT INTO Flight_Route(Flight_Number, Origin_Airport, Destination_Airport, Airline)
VALUES(98,'ANC', 'SEA', 'AS');
INSERT INTO Flight_Route(Flight_Number, Origin_Airport, Destination_Airport, Airline)
VALUES(2336,'LAX', 'PBI', 'AA');
INSERT INTO Flight_Route(Flight_Number, Origin_Airport, Destination_Airport, Airline)
VALUES(840,'SFO', 'CLT', 'US');
INSERT INTO Flight_Route(Flight_Number, Origin_Airport, Destination_Airport, Airline)
VALUES(258,'LAX', 'PBI', 'AA');
INSERT INTO Flight_Route(Flight_Number, Origin_Airport, Destination_Airport, Airline)
VALUES(135,'SEA', 'ANC', 'AS');
INSERT INTO Flight_Route(Flight_Number, Origin_Airport, Destination_Airport, Airline)
VALUES(806,'SFO', 'MSP', 'DL');
INSERT INTO Flight_Route(Flight_Number, Origin_Airport, Destination_Airport, Airline)
VALUES(612,'LAS', 'MSP', 'NK');
INSERT INTO Flight_Route(Flight_Number, Origin_Airport, Destination_Airport, Airline)
VALUES(2013,'LAX', 'CLT', 'US');
INSERT INTO Flight_Route(Flight_Number, Origin_Airport, Destination_Airport, Airline)
VALUES(1112,'SFO', 'DFW', 'AA');
INSERT INTO Flight_Route(Flight_Number, Origin_Airport, Destination_Airport, Airline)
VALUES(1173,'LAS', 'ATL', 'DL');
INSERT INTO Flight_Route(Flight_Number, Origin_Airport, Destination_Airport, Airline)
VALUES(2336,'DEN', 'ATL', 'DL');
INSERT INTO Flight_Route(Flight_Number, Origin_Airport, Destination_Airport, Airline)
VALUES(1674,'LAS', 'MIA', 'AA');
INSERT INTO Flight_Route(Flight_Number, Origin_Airport, Destination_Airport, Airline)
VALUES(1434,'LAX', 'MSP', 'DL');
INSERT INTO Flight_Route(Flight_Number, Origin_Airport, Destination_Airport, Airline)
VALUES(2324,'SLC', 'ATL', 'DL');
INSERT INTO Flight_Route(Flight_Number, Origin_Airport, Destination_Airport, Airline)
VALUES(2440,'SEA', 'MSP', 'DL');
INSERT INTO Flight_Route(Flight_Number, Origin_Airport, Destination_Airport, Airline)
VALUES(108,'ANC', 'SEA', 'AS');
INSERT INTO Flight_Route(Flight_Number, Origin_Airport, Destination_Airport, Airline)
VALUES(1560,'ANC', 'SEA', 'DL');
INSERT INTO Flight_Route(Flight_Number, Origin_Airport, Destination_Airport, Airline)
VALUES(1197,'SFO', 'IAH', 'UA');
INSERT INTO Flight_Route(Flight_Number, Origin_Airport, Destination_Airport, Airline)
VALUES(122,'ANC', 'PDX', 'AS');
INSERT INTO Flight_Route(Flight_Number, Origin_Airport, Destination_Airport, Airline)
VALUES(1670,'PDX', 'MSP', 'DL');