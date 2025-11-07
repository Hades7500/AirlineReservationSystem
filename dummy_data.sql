
USE AirlineReservation;

-- Airlines
INSERT INTO Airlines (Name) VALUES
('IndiGo'),
('Vistara'),
('Air India'),
('SpiceJet');

-- Airports
INSERT INTO Airports (AirportCode, Name, City, Country) VALUES
('DEL', 'Indira Gandhi International Airport', 'Delhi', 'India'),
('BOM', 'Chhatrapati Shivaji Maharaj International Airport', 'Mumbai', 'India'),
('BLR', 'Kempegowda International Airport', 'Bengaluru', 'India'),
('MAA', 'Chennai International Airport', 'Chennai', 'India'),
('CCU', 'Netaji Subhas Chandra Bose International Airport', 'Kolkata', 'India');

-- Flights
INSERT INTO Flights (FlightID, AirlineID, DepartureAirportCode, ArrivalAirportCode, DepartureTime, ArrivalTime, Price) VALUES
('6E2041', 1, 'DEL', 'BOM', '2025-11-08 06:00:00', '2025-11-08 08:00:00', 4500.00),
('UK995', 2, 'DEL', 'BOM', '2025-11-08 07:30:00', '2025-11-08 09:30:00', 5500.00),
('AI887', 3, 'DEL', 'BLR', '2025-11-08 08:00:00', '2025-11-08 10:30:00', 6000.00),
('SG8169', 4, 'DEL', 'MAA', '2025-11-08 09:00:00', '2025-11-08 11:45:00', 5000.00);

-- Passengers
INSERT INTO Passengers (Name, Email, Phone) VALUES
('Abhinav Kumar', 'abhinav.kumar@example.com', '9876543210'),
('Riya Sharma', 'riya.sharma@example.com', '9876543211'),
('Amit Singh', 'amit.singh@example.com', '9876543212');

-- Bookings
INSERT INTO Bookings (PassengerID, FlightID, BookingDate, Status) VALUES
(1, '6E2041', '2025-10-20', 'Confirmed'),
(2, 'UK995', '2025-10-22', 'Confirmed'),
(3, 'AI887', '2025-10-25', 'Confirmed');

-- Seats
-- For flight 6E2041
INSERT INTO Seats (SeatNumber, FlightID, BookingID, IsAvailable) VALUES
('1A', '6E2041', 1, FALSE),
('1B', '6E2041', NULL, TRUE),
('1C', '6E2041', NULL, TRUE);

-- For flight UK995
INSERT INTO Seats (SeatNumber, FlightID, BookingID, IsAvailable) VALUES
('2A', 'UK995', 2, FALSE),
('2B', 'UK995', NULL, TRUE),
('2C', 'UK995', NULL, TRUE);

-- For flight AI887
INSERT INTO Seats (SeatNumber, FlightID, BookingID, IsAvailable) VALUES
('3A', 'AI887', 3, FALSE),
('3B', 'AI887', NULL, TRUE),
('3C', 'AI887', NULL, TRUE);
