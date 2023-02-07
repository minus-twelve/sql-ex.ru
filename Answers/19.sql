Select maker, avg(Laptop.screen)
from Laptop join Product on Laptop.model=Product.model
group by maker
