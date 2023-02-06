Select Classes.class,Ships.name,Classes.country
from Ships join classes on Ships.class=Classes.class
where Classes.numGuns>=10
