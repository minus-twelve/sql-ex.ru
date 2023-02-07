Select distinct hd
from PC
group by hd having count(model)>1
