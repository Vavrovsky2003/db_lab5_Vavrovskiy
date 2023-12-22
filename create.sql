CREATE TABLE Origin_Airport
(
  IATA_code VARCHAR(3) NOT NULL,
  Name VARCHAR(100) NOT NULL,
  City VARCHAR(100) NOT NULL,
  State VARCHAR(20) NOT NULL,
  PRIMARY KEY (IATA_code)
);

CREATE TABLE Airline
(
  IATA_code VARCHAR(3) NOT NULL,
  Name VARCHAR(50) NOT NULL,
  PRIMARY KEY (IATA_code)
);

CREATE TABLE Destination_Airport
(
  IATA_code VARCHAR(3) NOT NULL,
  Name VARCHAR(100) NOT NULL,
  City VARCHAR(100) NOT NULL,
  State VARCHAR(20) NOT NULL,
  PRIMARY KEY (IATA_code)
);

CREATE TABLE Flight_Route
(
  Flight_Number INT NOT NULL,
  Origin_Airport VARCHAR(3) NOT NULL,
  Destination_Airport VARCHAR(3) NOT NULL,
  Airline VARCHAR(3) NOT NULL,
  FOREIGN KEY (Origin_Airport) REFERENCES Origin_Airport(IATA_code),
  FOREIGN KEY (Destination_Airport) REFERENCES Destination_Airport(IATA_code),
  FOREIGN KEY (Airline) REFERENCES Airline(IATA_code)
)