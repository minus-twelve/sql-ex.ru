Select distinct maker  
From pc inner join product on pc.model = product.model  
Where pc.speed >= 750 and maker in (select  maker from laptop inner join product on laptop.model = product.model where laptop.speed >= 750)
