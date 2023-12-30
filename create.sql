CREATE TABLE Airport
(
  Airport_id VARCHAR(3) NOT NULL,
  Airport_name VARCHAR(100) NOT NULL,
  City VARCHAR(100) NOT NULL,
  State VARCHAR(20) NOT NULL,
  PRIMARY KEY (Airport_id)
);

CREATE TABLE Airline
(
  Airline_id VARCHAR(3) NOT NULL,
  Airline_name VARCHAR(50) NOT NULL,
  PRIMARY KEY (Airline_id)
);


CREATE TABLE Flight_Route
(
  Flight_id INT NOT NULL,
  Flight_Number INT NOT NULL,
  Origin_Airport VARCHAR(3) NOT NULL,
  Destination_Airport VARCHAR(3) NOT NULL,
  Airline VARCHAR(3) NOT NULL,
  PRIMARY KEY (Flight_id),  
  FOREIGN KEY (Origin_Airport) REFERENCES Airport(Airport_id),
  FOREIGN KEY (Destination_Airport) REFERENCES Airport(Airport_id),
  FOREIGN KEY (Airline) REFERENCES Airline(Airline_id)
)