#kMeans Clustering Algorithm
#Author: Manrui Li
#Time: 2016/10/17

from numpy import*

#Read datasets from .txt
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

#make random centroids
def randCentriods(dataset,k):
	n = shape(dataset)[1]
	kCentriod = matrix(zeros([k,n]))
	for i in range(n):
		kMin= min(dataset[:,i])
		kRange = float(max(dataset[:,0]) - min(dataset[:,i]))
		kCentriod[:,i] = kMin + kRange * random.rand(k,1)
	return kCentriod

#calculate distance
def disCalu(vecA,vecB):
	distance = sqrt(sum(power(vecA-vecB,2)))
	return distance

def kMeans(dataset,k):
	m = shape(dataset)[0]
	n = shape(dataset)[1]
	kCentriod = randCentriods(dataset,k)
	minkDist = matrix(zeros([m,2]))
	clusterChanged = True
	clusterRank = array(zeros(6))

	while clusterChanged:
		#find the nearest centriods
		for i in range(m):
			minDist = inf
			minJ = 0
			for j in range(k):
				distCal = disCalu(dataset[i,:],kCentriod[j,:]) 
				if distCal < minDist:
					minDist = distCal
					minJ = j
			minkDist[i,:] = minJ, minDist ** 2
		#update the centeriods
		for cent in range(k):
			inkCluster = dataset[nonzero(minkDist[:,0].A==cent)[0]]
			kCentriod[cent,:] = mean(inkCluster,axis=0)

		if all(clusterRank == minkDist[i,0]):
			clusterChanged = False 
		else:
			clusterRank = minkDist[i,0]
	return kCentriod,minkDist

#dataset = array([[1,2],[2,3],[1,3],[7,8],[6,9],[8,8]])
#kCentriod,minkDist = kMeans(dataset,2)
#print kCentriod
#kCentriod,minkDist = kMeans(dataset,2)
#print minkDist

