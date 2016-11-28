from numpy import*
from pandas import*

dataset = array([[1,2],[2,3],[1,3],[7,8],[6,9],[8,8]])
test = nonzero(dataset[:,0].A==1)
print test