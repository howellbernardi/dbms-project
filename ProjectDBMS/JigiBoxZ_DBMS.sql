-- Kelompok 1 Database JigiBoxZ LD11

CREATE DATABASE JigiBoxZ
GO
USE JigiBoxZ
GO

CREATE TABLE Customer (
	CustomerID CHAR(5) PRIMARY KEY CHECK (CustomerID LIKE 'CU[0-9][0-9][0-9]'),
	CustomerName VARCHAR(50) NOT NULL,
	CustomerGender VARCHAR(25) NOT NULL CHECK (CustomerGender IN ('Male', 'Female')),
	CustomerEmail VARCHAR(50) NOT NULL,
	CustomerDOB DATE NOT NULL,
	CustomerAddress VARCHAR(255)
);

INSERT INTO Customer (CustomerID, CustomerName, CustomerGender, CustomerEmail, CustomerDOB, CustomerAddress) VALUES 
('CU001', 'Don Jarrod', 'Male', 'don.jarrod@Gmail.com', '1999-02-13', 'Jl Tomang Utara'),
('CU002', 'Peter Kaufman', 'Male', 'peter.kaufman@Gmail.com', '1995-01-12', 'Jl Mandala Utara'),
('CU003', 'Siti Sarah', 'Female', 'siti.sarah@Yahoo.com', '1998-07-07', 'Jl Tanah Abang 2'),
('CU004', 'John Pork', 'Male', 'john.pork@Yahoo.com', '1998-11-12', 'Jl Slipi 1'),
('CU005', 'Ela Musk', 'Female', 'ela.musk@Gmail.com', '1996-11-25', 'Jl Raya Ragunan'),
('CU006', 'Bob Sane', 'Male', 'bob.sane@Yahoo.com', '1995-04-11', 'Jl KS Tubun 2C'),
('CU007', 'Aisha Purnawati', 'Female', 'aisha.purnawati@Gmail.com', '1991-08-02', 'Jl Petamburan 3'),
('CU008', 'Alisa Lee', 'Female', 'alisa.lee@Gmail.com', '1993-08-13', 'Jl Senopati'),
('CU009', 'Zoya', 'Female', 'Zoya@Gmail.com', '1994-09-30', 'Jl Cibaten'),
('CU010', 'Banyu', 'Male', 'Banyu@Yahoo.com', '1991-09-09', 'jl Anggrek Garuda 4');

CREATE TABLE Staff (
	StaffID CHAR(5) PRIMARY KEY CHECK (StaffID LIKE 'ST[0-9][0-9][0-9]'),
	StaffName VARCHAR(255) NOT NULL,
	StaffGender VARCHAR(25) NOT NULL CHECK (StaffGender IN ('Male', 'Female')),
	StaffEmail VARCHAR(255) NOT NULL,
	StaffDOB Date NOT NULL,
	StaffAddress VARCHAR(255) NOT NULL,
);

INSERT INTO Staff
(StaffID,StaffName,StaffEmail,StaffGender,StaffDOB,StaffAddress)
VALUES('ST001', 'Budi Santoso', 'budi.santoso@gmail.com', 'Male', '1990-01-15', 'Jl. Sudirman No. 123, Jakarta, Indonesia'),
('ST002', 'Siti Nurhaliza', 'siti.nurhaliza@gmail.com', 'Female', '1985-03-22', 'Jl. Thamrin No. 456, Jakarta, Indonesia'),
('ST003', 'Andi Saputra', 'andi.saputra@gmail.com', 'Male', '1992-07-08', 'Jl. Kuningan No. 789, Jakarta, Indonesia'),
('ST004', 'Rina Kurnia', 'rina.kurnia@gmail.com', 'Female', '1988-11-30', 'Jl. Gatot Subroto No. 101, Jakarta, Indonesia'),
('ST005', 'Dedi Supriyadi', 'dedi.supriyadi@gmail.com', 'Male', '1995-05-10', 'Jl. Sudirman No. 202, Jakarta, Indonesia'),
('ST006', 'Maya Sari', 'maya.sari@gmail.com', 'Female', '1993-09-18', 'Jl. MH Thamrin No. 303, Jakarta, Indonesia'),
('ST007', 'Rahmat Hidayat', 'rahmat.hidayat@gmail.com', 'Male', '1987-02-14', 'Jl. Setiabudi No. 404, Jakarta, Indonesia'),
('ST008', 'Sri Rahayu', 'sri.rahayu@gmail.com', 'Female', '1991-06-25', 'Jl. Rasuna Said No. 505, Jakarta, Indonesia'),
('ST009', 'Agus Prasetyo', 'agus.prasetyo@gmail.com', 'Male', '1994-08-12', 'Jl. Senayan No. 606, Jakarta, Indonesia'),
('ST010', 'Dewi Lestari', 'dewi.lestari@gmail.com', 'Female', '1990-12-05', 'Jl. Kemang No. 707, Jakarta, Indonesia')

CREATE TABLE Vendor (
	VendorID CHAR(5) PRIMARY KEY CHECK (VendorID LIKE 'VR[0-9][0-9][0-9]'),
	VendorName VARCHAR(255) NOT NULL,
	VendorGender VARCHAR(25) NOT NULL CHECK (VendorGender IN ('Male', 'Female')),
	VendorEmail VARCHAR(255) NOT NULL,
	VendorDOB Date NOT NULL,
	VendorAddress VARCHAR(255) NOT NULL,
);

INSERT INTO Vendor
(VendorID,VendorName,VendorEmail,VendorGender,VendorDOB,VendorAddress)
VALUES('VR001', 'Ahmad Fauzi', 'ahmad.fauzi@example.com', 'Male', '1982-03-12', 'Jl. Diponegoro No. 5, Bandung, Indonesia'),
('VR002', 'Dian Kartika', 'dian.kartika@example.com', 'Female', '1990-04-23', 'Jl. Merdeka No. 22, Surabaya, Indonesia'),
('VR003', 'Bagus Santoso', 'bagus.santoso@example.com', 'Male', '1985-07-30', 'Jl. Pahlawan No. 3, Yogyakarta, Indonesia'),
('VR004', 'Fitri Amalia', 'fitri.amalia@example.com', 'Female', '1993-11-15', 'Jl. Sisingamangaraja No. 10, Medan, Indonesia'),
('VR005', 'Indra Wijaya', 'indra.wijaya@example.com', 'Male', '1988-02-28', 'Jl. Gajah Mada No. 45, Semarang, Indonesia'),
('VR006', 'Ratna Sari', 'ratna.sari@example.com', 'Female', '1992-06-10', 'Jl. Sudirman No. 67, Denpasar, Indonesia'),
('VR007', 'Fajar Prasetyo', 'fajar.prasetyo@example.com', 'Male', '1987-09-05', 'Jl. Gatot Subroto No. 89, Makassar, Indonesia'),
('VR008', 'Wulan Pertiwi', 'wulan.pertiwi@example.com', 'Female', '1995-12-20', 'Jl. Ahmad Yani No. 12, Palembang, Indonesia'),
('VR009', 'Rizki Maulana', 'rizki.maulana@example.com', 'Male', '1991-01-17', 'Jl. Teuku Umar No. 33, Malang, Indonesia'),
('VR010', 'Nurul Hidayah', 'nurul.hidayah@example.com', 'Female', '1989-05-22', 'Jl. Panglima Polim No. 50, Jakarta, Indonesia')


CREATE TABLE ElectronicCategory (
	CategoryID CHAR(5) PRIMARY KEY CHECK (CategoryID Like 'CT[0-9][0-9][0-9]'),
	ElectronicCategoryName VARCHAR(255) NOT NULL
);

INSERT INTO ElectronicCategory (CategoryID, ElectronicCategoryName) VALUES 
('CT001', 'Mobile Phones'),
('CT002', 'Flagship Phones'),
('CT003', 'Smartphones'),
('CT004', 'Phone Accessories'),
('CT005', 'Android Phones'),
('CT006', 'Phone Cases'),
('CT007', 'IOS Devices'),
('CT008', 'Wireless Earbuds'),
('CT009', 'Budget Smartphones'),
('CT010', 'Mobile Phone Chargers');

CREATE TABLE Electronic (
	ProductID CHAR(5) PRIMARY KEY CHECK (ProductID LIKE 'PT[0-9][0-9][0-9]'),
	CategoryID CHAR(5) FOREIGN KEY REFERENCES ElectronicCategory(CategoryID) ON UPDATE CASCADE ON DELETE CASCADE NOT NULL,
        Name VARCHAR(255) NOT NULL,
	Weight INT NOT NULL,
	Price FLOAT NOT NULL
);

INSERT INTO Electronic (ProductID, CategoryID, Name,Price, Weight) VALUES 
('PT001', 'CT001', 'Samsung Galaxy S24', 1999, 168),
('PT002', 'CT002', 'iPhone 15 Pro', 2199, 187),
('PT003', 'CT003', 'Redmi Note 12 5G', 1599, 188),
('PT004', 'CT004', 'CASETiFY Case', 1099, 50),
('PT005', 'CT005', 'Infinix NOTE 40 PRO', 1499, 190),
('PT006', 'CT006', 'Rinke Case', 1089, 45),
('PT007', 'CT007', 'iPhone XS', 1599, 177),
('PT008', 'CT008', 'HAKII IPX7 Earbuds', 1199, 10),
('PT009', 'CT009', 'POCO X6 PRO', 1299, 186),
('PT010', 'CT010', 'JETE E31 Charger', 1199, 60);

CREATE TABLE TransactionHeader (
	TransactionID CHAR(5) PRIMARY KEY CHECK (TransactionID LIKE 'SH[0-9][0-9][0-9]'),
	StaffID CHAR(5) FOREIGN KEY REFERENCES Staff(StaffID) ON UPDATE CASCADE ON DELETE CASCADE NOT NULL,
	CustomerID CHAR(5) FOREIGN KEY REFERENCES Customer(CustomerID) ON UPDATE CASCADE ON DELETE CASCADE NOT NULL,
	TransactionDate DATE NOT NULL
);

INSERT INTO TransactionHeader (TransactionID, StaffID, CustomerID, TransactionDate) VALUES 
('SH001', 'ST001', 'CU001', '2024-06-01'),
('SH002', 'ST002', 'CU002', '2024-06-02'),
('SH003', 'ST003', 'CU003', '2024-06-03'),
('SH004', 'ST004', 'CU004', '2024-06-04'),
('SH005', 'ST005', 'CU005', '2024-06-05'),
('SH006', 'ST006', 'CU006', '2024-06-06'),
('SH007', 'ST007', 'CU007', '2024-06-07'),
('SH008', 'ST008', 'CU008', '2024-06-08'),
('SH009', 'ST009', 'CU009', '2024-06-09'),
('SH010', 'ST010', 'CU010', '2024-06-10'),
('SH011', 'ST001', 'CU001', '2024-06-11'),
('SH012', 'ST002', 'CU002', '2024-06-12'),
('SH013', 'ST003', 'CU003', '2024-06-13'),
('SH014', 'ST004', 'CU004', '2024-06-14'),
('SH015', 'ST005', 'CU005', '2024-06-15');
INSERT INTO TransactionHeader (TransactionID, StaffID, CustomerID, TransactionDate) VALUES 
('SH016', 'ST005', 'CU005', '2023-07-11'),
('SH017', 'ST003', 'CU009', '2023-09-21'),
('SH018', 'ST002', 'CU007', '2023-10-20'),
('SH019', 'ST007', 'CU002', '2023-01-13'),
('SH020', 'ST009', 'CU001', '2023-03-01')



CREATE TABLE TransactionDetail (
	TransactionID CHAR(5) FOREIGN KEY REFERENCES TransactionHeader(TransactionID) ON UPDATE CASCADE ON DELETE CASCADE NOT NULL,
	ProductID CHAR(5) FOREIGN KEY REFERENCES Electronic(ProductID) ON UPDATE CASCADE ON DELETE CASCADE NOT NULL,
	Quantity INT NOT NULL,
	PRIMARY KEY(TransactionID, ProductID)
);

INSERT INTO TransactionDetail (TransactionID, ProductID, Quantity) VALUES 
('SH001', 'PT010', 12),
('SH001', 'PT002', 2),
('SH002', 'PT009', 4),
('SH002', 'PT004', 9),
('SH003', 'PT005', 11),
('SH003', 'PT007', 10),
('SH004', 'PT007', 21),
('SH004', 'PT010', 16),
('SH005', 'PT010', 1),
('SH005', 'PT002', 2),
('SH006', 'PT005', 6),
('SH006', 'PT002', 19),
('SH007', 'PT005', 31),
('SH007', 'PT003', 4),
('SH008', 'PT006', 7),
('SH008', 'PT009', 6),
('SH009', 'PT009', 4),
('SH009', 'PT001', 1),
('SH010', 'PT001', 2),
('SH010', 'PT004', 9),
('SH011', 'PT001', 13),
('SH012', 'PT002', 24),
('SH013', 'PT004', 5),
('SH014', 'PT005', 6),
('SH015', 'PT006', 8),
('SH015', 'PT003', 28)
INSERT INTO TransactionDetail (TransactionID, ProductID, Quantity) VALUES 
('SH016', 'PT003', 28),
('SH017', 'PT004', 18),
('SH018', 'PT007', 8),
('SH019', 'PT003', 11),
('SH020', 'PT005', 21)



CREATE TABLE PurchaseTransaction (
	PurchaseID CHAR(5) PRIMARY KEY CHECK (PurchaseID LIKE 'PH[0-9][0-9][0-9]'),
	StaffID CHAR(5) FOREIGN KEY REFERENCES Staff(StaffID) ON UPDATE CASCADE ON DELETE CASCADE NOT NULL,
	VendorID CHAR(5) FOREIGN KEY REFERENCES Vendor(VendorID) ON UPDATE CASCADE ON DELETE CASCADE NOT NULL,
	PurchaseDate DATE NOT NULL
);

INSERT INTO PurchaseTransaction
(PurchaseID,StaffID,VendorID,PurchaseDate)
Values
('PH001','ST001','VR001','2024-06-01'),
('PH002','ST002','VR002','2024-06-02'),
('PH003','ST003','VR003','2024-06-03'),
('PH004','ST004','VR004','2024-06-04'),
('PH005','ST005','VR005','2024-06-05'),
('PH006','ST006','VR006','2024-06-06'),
('PH007','ST007','VR007','2024-06-07'),
('PH008','ST008','VR008','2024-06-08'),
('PH009','ST009','VR009','2024-06-09'),
('PH010','ST010','VR010','2024-06-10'),
('PH011','ST001','VR001','2024-06-01'),
('PH012','ST002','VR002','2024-06-02'),
('PH013','ST003','VR003','2024-06-03'),
('PH014','ST004','VR004','2024-06-04'),
('PH015','ST005','VR005','2024-06-05')
INSERT INTO PurchaseTransaction
(PurchaseID,StaffID,VendorID,PurchaseDate)
Values
('PH016','ST005','VR005','2023-06-07'),
('PH017','ST004','VR001','2023-07-21'),
('PH018','ST009','VR002','2023-09-29'),
('PH019','ST001','VR007','2023-01-17'),
('PH020','ST007','VR006','2023-03-11')

CREATE TABLE PurchaseTransactionDetail (
	PurchaseID CHAR(5) FOREIGN KEY REFERENCES PurchaseTransaction(PurchaseID) ON UPDATE CASCADE ON DELETE CASCADE NOT NULL,
	ProductID CHAR(5) FOREIGN KEY REFERENCES Electronic(ProductID) ON UPDATE CASCADE ON DELETE CASCADE NOT NULL,
	Quantity INT NOT NULL,
	PRIMARY KEY(PurchaseID, ProductID)
);

INSERT INTO PurchaseTransactionDetail 
(PurchaseID, ProductID, Quantity)
VALUES
('PH001','PT001', 12),
('PH002','PT002', 2),
('PH003','PT003', 4),
('PH004','PT004', 9),
('PH005','PT005', 11),
('PH006','PT006', 10),
('PH007','PT007', 21),
('PH008','PT008', 16),
('PH009','PT009', 1),
('PH010','PT010', 2),
('PH001','PT002', 13),
('PH002','PT003', 24),
('PH003','PT004', 5),
('PH004','PT005', 6),
('PH005','PT006', 8),
('PH006','PT007', 28);



SELECT * FROM [Customer];
SELECT * FROM [Staff];
SELECT * FROM [Vendor];
SELECT * FROM [ElectronicCategory];
SELECT * FROM [Electronic];
SELECT * FROM [TransactionHeader];
SELECT * FROM [TransactionDetail];
SELECT * FROM [PurchaseTransaction];
SELECT * FROM [PurchaseTransactionDetail];

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- SOAL CASE STUDY JigiBoxZ
--1
Select
Case
When
CustomerGender = 'Male' Then 'Mr.' + CustomerName Else 'Mrs.' + CustomerName END AS [Customer Name],
S.StaffID + '_' + StaffName AS[Staff Name],
Count(TransactionID) as [Total Transaction Male]
From Customer C
Join
TransactionHeader TH ON C.CustomerID = TH.CustomerID
Join
Staff S ON TH.StaffID = S.StaffID
Where
Year(TH.TransactionDate) = 2023 AND
Year(CustomerDOB) = 1999
Group By
S.StaffID,CustomerGender,CustomerName,StaffName

--2
SELECT 
    REPLACE(th.TransactionID, 'SH', 'SalesID') AS SalesID,
    e.Name AS ProductName,
    SUM(td.Quantity) AS TotalProductSold
FROM
    TransactionHeader th
 JOIN TransactionDetail td ON th.TransactionID = td.TransactionID
 JOIN Electronic e ON td.ProductID = e.ProductID
WHERE
    RIGHT(th.TransactionID, 3) % 2 = 0 
    AND td.Quantity BETWEEN 1 AND 5
GROUP BY 
    th.TransactionID, e.Name;

--3
Select
PT.PurchaseID,
Replace(StaffEmail, '@gmail,com' , '@DigiBoxZ.com') AS [Staff Email],
VendorName,
Count(PT.PurchaseID) AS [Total Purchase],
SUM(Quantity) AS [Total Quantity]
From 
Staff S
Join
PurchaseTransaction PT ON S.StaffID = PT.StaffID
Join
Vendor V ON PT.VendorID = V.VendorID
Join
PurchaseTransactionDetail PTD ON PT.PurchaseID = PTD.PurchaseID
Where
Len(StaffName)>5
Group By 
Pt.PurchaseID,
StaffEmail,
VendorName
Having SUM(Quantity) Between 1 AND 5

--4
SELECT 
    REPLACE(th.TransactionID, 'SH', 'SalesID ') AS SalesID,
    c.CustomerName AS CustomerName,
    FORMAT(GETDATE(), 'MMMM/dd/yyyy') AS SalesDate,
    DATEPART(QUARTER, th.TransactionDate) AS SalesDateQuarter,
    SUM(td.Quantity) AS TotalProductSold,
    COUNT(DISTINCT th.TransactionID) AS TotalSalesTransactionsMade
FROM
    TransactionHeader th
 JOIN TransactionDetail td ON th.TransactionID = td.TransactionID
 JOIN Customer c ON th.CustomerID = c.CustomerID
WHERE
    th.TransactionDate BETWEEN '2023-01-01' AND '2023-06-30'
GROUP BY 
    REPLACE(th.TransactionID, 'SH', 'SalesID '),
    c.CustomerName,
    DATEPART(QUARTER, th.TransactionDate);

--5
SELECT
  RIGHT(e.ProductID, 3) AS ProductID,
  CONCAT(REPLACE(s.StaffID, 'ST', 'Staff'), ' - ', s.StaffName) AS StaffName,
  CONCAT(REPLACE(e.ProductID, 'PT', 'Product'), ' - ', e.Name) AS ProductName,
  e.Price AS ProductPrice,
  AVG(Price) as AveragePrice
FROM PurchaseTransaction pt
  JOIN PurchaseTransactionDetail pd ON pt.PurchaseID = pd.PurchaseID
  JOIN Electronic e ON pd.ProductID = e.ProductID
  JOIN Staff s ON pt.StaffID = s.StaffID
WHERE 
  RIGHT(pt.PurchaseID, 1) % 2 = 1 AND e.Price > (SELECT AVG(Price) FROM 
  (Select Price from Electronic)x)
  Group By
  RIGHT(e.ProductID, 3),
  CONCAT(REPLACE(s.StaffID, 'ST', 'Staff'), ' - ', s.StaffName),
  CONCAT(REPLACE(e.ProductID, 'PT', 'Product'), ' - ', e.Name),
  e.Price

  -- 6
SELECT 
  th.TransactionID AS SalesID,
  FORMAT(TH.TransactionDate, 'dd/MM/yyyy', 'en-US') AS SalesDate,
  e.Name AS ProductName,
  ec.ElectronicCategoryName AS CategoryName,
  CONCAT(td.Quantity, 'PCS') AS Quantity,
  CONCAT('$ ', e.Price) AS ProductPrice
FROM 
  TransactionHeader th
  JOIN TransactionDetail td ON th.TransactionID = td.TransactionID
  JOIN Electronic e ON td.ProductID = e.ProductID
  JOIN ElectronicCategory ec ON e.CategoryID = ec.CategoryID
WHERE 
  YEAR(th.TransactionDate) = 2023
  AND 14000 < ((SELECT SUM(td.Quantity * e.Price) as TotalPrice
  FROM TransactionDetail td JOIN Electronic e ON td.ProductID = e.ProductID
  WHERE td.TransactionID = th.TransactionID )-e.Price);

  -- 7
  SELECT 
  TH.TransactionID AS SalesID,
  REPLACE(C.CustomerEmail, '@example.com', '@DigiBoxZ.com') AS CustomerEmail,
  FORMAT(TransactionDate, 'MM dd,yyyy', 'en-US') AS SalesDate,
  E.Name AS ProductName,
  CONCAT('$ ', E.Price) AS ProductPrice,
  MaxMinPrice.MaxMinPriceDiff AS MaxMinPriceDifference
FROM TransactionHeader TH
JOIN TransactionDetail TD ON TH.TransactionID = TD.TransactionID
JOIN Electronic E ON TD.ProductID = E.ProductID
JOIN Customer C ON TH.CustomerID = C.CustomerID
JOIN 
    (SELECT E.CategoryID,
    (SELECT MAX(Price) FROM Electronic) - (SELECT MIN(Price) FROM Electronic) AS MaxMinPriceDiff
     FROM Electronic E
     GROUP BY E.CategoryID) AS MaxMinPrice ON E.CategoryID = MaxMinPrice.CategoryID
WHERE 
    TD.Quantity > 4
    AND E.Price <= MaxMinPrice.MaxMinPriceDiff
ORDER BY 
    TH.TransactionID;

-- 8. 
SELECT 
    th.TransactionID AS SalesID,
    'VIP CUSTOMER - ' + UPPER(C.CustomerName) AS 'VIP Customer',
    FORMAT(TH.TransactionDate, 'MMMM') AS Month,
    CONCAT('$ ', CAST((TD.Quantity * E.Price) AS VARCHAR(20))) AS 'Total Expenses'
FROM
    TransactionHeader th
JOIN
    Customer c ON th.CustomerID = c.CustomerID
JOIN
    TransactionDetail td ON th.TransactionID = td.TransactionID
JOIN
    Electronic e ON td.ProductID = e.ProductID
WHERE
    MONTH(th.TransactionDate) IN (2, 4, 7) 
    AND td.Quantity * e.Price > (
        SELECT 
			AVG(td2.Quantity * e2.Price) 
        FROM TransactionDetail td2
        JOIN Electronic e2 ON TD2.ProductID = E2.ProductID
    );

-- 9.
GO
CREATE VIEW MostAndLessBoughtProductPerCustomer AS
SELECT 
	REPLACE(th.TransactionID, 'SH', 'Sales ID ') AS SalesID,
	REPLACE(td.ProductID, 'PT', 'Product ID ') AS ProductID,
	FORMAT(th.TransactionDate, 'MMM dd, yyyy') AS 'Sales Date',
	MAX(td.Quantity) AS 'Most Bought Product',
	MIN(td.Quantity) AS 'Less Bought Product'
FROM TransactionHeader th 
	JOIN TransactionDetail td ON th.TransactionID = td.TransactionID
	JOIN Electronic e ON td.ProductID = e.ProductID
WHERE e.Weight > 180 AND e.Price > 1500
GROUP BY 
	th.TransactionID, td.ProductID, th.TransactionDate;
GO
SELECT * FROM MostAndLessBoughtProductPerCustomer

-- 10.
GO
CREATE VIEW SpentAboveMaximumTotalSalesCustomerIn2023
AS
SELECT 
	UPPER(CustomerName) AS 'Customer Name',
	SUM(Price*Quantity) AS 'Total Transaction',
	MAX(Price*Quantity) AS 'Max Total Transaction'
FROM Customer c
	JOIN TransactionHeader th ON c.CustomerID = th.CustomerID
	JOIN TransactionDetail td ON th.TransactionID = td.TransactionID
	JOIN Electronic e ON td.ProductID = e.ProductID
WHERE YEAR(TransactionDate) = 2023
GROUP BY CustomerName
HAVING SUM(Price*Quantity) > MAX(Price*Quantity);
GO
SELECT * FROM SpentAboveMaximumTotalSalesCustomerIn2023
-- ^ untuk yang ini HAVINGnya membuat tabelnya tidak mengeluarkan hasil jika hanya select sampai group by tabel akan mengeluarkan hasil

