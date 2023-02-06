Select model,price
from Printer
WHERE price= (SELECT Max(price) FROM Printer)
