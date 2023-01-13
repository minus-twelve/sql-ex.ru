# **sql-ex.ru**

## 1. Найдите номер модели, скорость и размер жесткого диска для всех ПК стоимостью менее 500 дол. Вывести: model, speed и hd
```
select model, speed, hd
from PC
where price<500
```


## 2. Найдите производителей принтеров. Вывести: maker
```
select distinct maker
from product
where product.type='printer'
```


## 3. Найдите номер модели, объем памяти и размеры экранов ПК-блокнотов, цена которых превышает 1000 дол.
```
Select model, ram, screen
from Laptop
where price>1000
```


## 4. Найдите все записи таблицы Printer для цветных принтеров.
```
select *
from Printer
where color='y'
```


## 5. Найдите номер модели, скорость и размер жесткого диска ПК, имеющих 12x или 24x CD и цену менее 600 дол.
```
Select model, speed, hd
from PC
where (cd='12x' AND price<600) or (cd='24x' AND price<600)
```


## 6. Для каждого производителя, выпускающего ПК-блокноты c объёмом жесткого диска не менее 10 Гбайт, найти скорости таких ПК-блокнотов. Вывод: производитель, скорость.
```
Select distinct Product.maker,Laptop.speed
From Product join Laptop on Product.model=Laptop.model
Where Laptop.hd>=10
```


## 7. Найдите номера моделей и цены всех имеющихся в продаже продуктов (любого типа) производителя B (латинская буква).
```
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
```


## 8. Найдите производителя, выпускающего ПК, но не ПК-блокноты.
```
select maker 
from Product 
where type='PC' and maker not in (select maker from Product where type = 'Laptop') group by maker

```


## 9. Найдите производителей ПК с процессором не менее 450 Мгц. Вывести: Maker
```
Select distinct maker
from product join pc on product.model=pc.model
where speed>=450
```


## 11. Найдите среднюю скорость ПК.
```
Select avg(speed)
from PC
```


## 12. Найдите среднюю скорость ПК-блокнотов, цена которых превышает 1000 дол.
```
Select avg(speed)
from laptop
where price>1000
```


## 13. Найдите среднюю скорость ПК, выпущенных производителем A.
```
Select avg(speed)
from product join pc on product.model=pc.model
where product.maker='a'
```


## 
