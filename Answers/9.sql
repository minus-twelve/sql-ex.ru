Select distinct maker
from product join pc on product.model=pc.model
where speed>=450