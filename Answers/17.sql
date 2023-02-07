Select distinct product.type,laptop.model,laptop.speed
from product join laptop on product.model=laptop.model
where laptop.speed<(select min(pc.speed) from pc)
