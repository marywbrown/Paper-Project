# -*- coding: utf-8 -*
# 正式编写K-means啦，看懂别人的，用自己的风格编写
from numpy import *

#提取地点ID、经纬度，并写入列表datamat,注意是一维列表
def loadDataset(filename):
	datamat = []
	fr = open(filename)
	for line in fr.readlines():
		venues_id = line.strip('"').strip('"').split('\t')[0] 
		venues_la = line.strip().split('\t')[2]
		venues_lo = line.strip().split('\t')[3]
		venues_la = float(venues_la)
		venues_lo = float(venues_lo)
		datamat.extend([venues_id,venues_la,venues_lo])
	return datamat

#注意这里vector定义用numpy里面的向量定义，=numpy(x,y)
def disCalcu(vecA,vecB):
	return sqrt(sum(power(vecA-vecB,2)))

#这里dataset是m行n列，m代表训练点的个数，n代表训练点的特征,dataset一定要是array.
def randCentriods(dataset,k):
	n = shape(dataset)[1]
	kCentriod = matrix(zeros([k,n]))
	for i in range(n):
		kMin= min(dataset[:,i])
		kRange = float(max(dataset[:,0]) - min(dataset[:,i]))
		kCentriod[:,i] = kMin + kRange * random.rand(k,1)
	return kCentriod



