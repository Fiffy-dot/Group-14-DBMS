SELECT ZoneID, COUNT(DISTINCT CustomerID) FROM premises
GROUP BY ZoneID


SELECT PremiseID
FROM Premises
WHERE (PremiseStatus = 'Active')


SELECT PremiseID
FROM premises
WHERE (PremiseStatus = 'Suspended')


SELECT Bill, CustomerID
FROM customer_payments


SELECT P.CustomerID, C.customer_name
FROM customer_payments as P, customers as C
WHERE (BillStatus = 'unpaid') AND (P.CustomerID=C.CustomerID)


SELECT PremiseID, Classification
FROM premises
WHERE (Classification = 'Domestic') 


SELECT PremiseID, Classification
FROM premises
WHERE (Classification = 'Commercial')


SELECT MonthlySupply, PlantID
FROM plants


SELECT ConsumptionCapacity, ZoneID
FROM zones


SELECT C.CustomerName, P. PremiseName
FROM customers as C, premises as P
WHERE (P.CustomerID = C.CustomerID)


SELECT SectorID, COUNT(ALL SectorID) FROM Staff
WHERE (StaffRank = 'Biller')
GROUP BY SectorID


SELECT Z.ZoneID
FROM zones as Z, routes as R
Where (R.RouteNumber = Z.RouteNumber) AND (RouteStatus = 'off')


SELECT StaffID, COUNT(ALL CustomerID) FROM customer_payments
GROUP BY StaffID
