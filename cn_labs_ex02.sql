CREATE DATABASE airtravel;

USE airtravel;

CREATE TABLE Location (
    id INT AUTO_INCREMENT,
    address VARCHAR(40) NOT NULL,
    city VARCHAR(40) NOT NULL,
    country VARCHAR(40) NOT NULL,
    postcode VARCHAR(10) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE Passenger (
    id INT AUTO_INCREMENT,
    firstName VARCHAR(40) NOT NULL,
    lastName VARCHAR(40) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE Airport (
    id INT AUTO_INCREMENT,
    locationID INT NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (locationID) REFERENCES Location (id)
);

CREATE TABLE Airline (
    id INT AUTO_INCREMENT,
    name VARCHAR(40) NOT NULL,
    phone VARCHAR(15) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE Airplane (
	id INT AUTO_INCREMENT,
    make VARCHAR(20) NOT NULL,
    model VARCHAR(20) NOT NULL,
    PRIMARY KEY (id)
);

CREATE table Flight (
    id INT AUTO_INCREMENT,
    airlineID INT NOT NULL,
    airplaneID INT NOT NULL,
    departureLoc INT NOT NULL,
    arrivalLoc INT NOT NULL,
    departureTime DATETIME NOT NULL,
    arrivalTime DATETIME NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (airlineID) REFERENCES Airline (id),
    FOREIGN KEY (airplaneID) REFERENCES Airplane (id),
    FOREIGN KEY (departureLoc) REFERENCES Airport (id),
    FOREIGN KEY (arrivalLoc) REFERENCES Airport (id)
    );
    
CREATE TABLE Ticket (
  id INT AUTO_INCREMENT,
  passengerID INT NOT NULL,
  flightID INT NOT NULL,
  meal VARCHAR(20) NOT NULL,
  PRIMARY KEY (id),
  FOREIGN KEY (passengerID) REFERENCES Passenger (id),
  FOREIGN KEY (flightID) REFERENCES Flight (id)
  );
