Select maker, count(model) as Count_Model 
From product 
Where type = 'pc' group by maker 
having count(model) >= 3
