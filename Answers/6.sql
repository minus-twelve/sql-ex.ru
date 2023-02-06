Select distinct Product.maker,Laptop.speed
From Product join Laptop on Product.model=Laptop.model
Where Laptop.hd>=10