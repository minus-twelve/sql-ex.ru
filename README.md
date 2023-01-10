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
