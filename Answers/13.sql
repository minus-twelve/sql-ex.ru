Select avg(speed)
from product join pc on product.model=pc.model
where product.maker='a'