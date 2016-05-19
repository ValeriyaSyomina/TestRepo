SELECT DISTINCT(CustomerId) FROM PurchaiseTable P1 
WHERE P1.ProductName LIKE '%������%' AND NOT EXISTS 
( 
	SELECT P2.CustomerId FROM PurchaiseTable P2 
	WHERE P2.ProductName LIKE '%�������%' 
	AND P2.CustomerId = P1.CustomerId 
)