Select maker, max(pc.price)
from product join pc on product.model=pc.model
group by maker
