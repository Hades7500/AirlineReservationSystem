CREATE DATABASE AirlineReservation;

USE AirlineReservation;

CREATE TABLE Passengers (
    PassengerID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(50) NOT NULL,
    Email VARCHAR(50) UNIQUE NOT NULL,
    Phone VARCHAR(10)
);

CREATE TABLE Airlines (
    AirlineID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(50) NOT NULL
);

CREATE TABLE Airports (
    AirportCode VARCHAR(3) PRIMARY KEY,
    Name VARCHAR(50) NOT NULL,
    City VARCHAR(50) NOT NULL,
    Country VARCHAR(50) NOT NULL
);

CREATE TABLE Flights (
    FlightID VARCHAR(20) PRIMARY KEY,
    AirlineID INT,
    DepartureAirportCode VARCHAR(3),
    ArrivalAirportCode VARCHAR(3),
    DepartureTime DATETIME NOT NULL,
    ArrivalTime DATETIME NOT NULL,
    Price DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (AirlineID) REFERENCES Airlines(AirlineID),
    FOREIGN KEY (DepartureAirportCode) REFERENCES Airports(AirportCode),
    FOREIGN KEY (ArrivalAirportCode) REFERENCES Airports(AirportCode)
);

CREATE TABLE Bookings (
    BookingID INT PRIMARY KEY AUTO_INCREMENT,
    PassengerID INT,
    FlightID VARCHAR(20),
    BookingDate DATE NOT NULL,
    Status VARCHAR(20) DEFAULT 'Confirmed',
    FOREIGN KEY (PassengerID) REFERENCES Passengers(PassengerID),
    FOREIGN KEY (FlightID) REFERENCES Flights(FlightID)
);

CREATE TABLE Seats (
    SeatNumber VARCHAR(5) PRIMARY KEY,
    FlightID VARCHAR(20),
    BookingID INT,
    IsAvailable BOOLEAN DEFAULT TRUE,
    FOREIGN KEY (FlightID) REFERENCES Flights(FlightID)
    FOREIGN KEY (BookingID) REFERENCES Bookings(BookingID)
);
