Select distinct product.maker,printer.price
from product join printer on product.model=printer.model
where printer.price=(select min(price) from printer where printer.color='y')
and printer.color='y'
