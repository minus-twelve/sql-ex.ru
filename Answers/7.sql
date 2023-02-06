Select PC.model,PC.price
from PC join Product on PC.model=Product.model
where Product.maker='B'
UNION
Select Laptop.model,Laptop.price
from Laptop join Product on Laptop.model=Product.model
where Product.maker='B'
UNION
Select Printer.model,Printer.price
from Printer join Product on Printer.model=Product.model
where Product.maker='B'