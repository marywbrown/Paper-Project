#Bikmeans Clustering Algorithm
#Author: Manrui Li
#Time: 2016/10/19

from numpy import*
import kMeans as km

def biKmeans(dataset,k):
	m = shape(dataset)[0]
	n = shape(dataset)[1]
	clusterAssment = mat(zeros([m,2]))
	centriods0 = mean(dataset,axis=0).tolist()
	centList = [centriods0]
	for i in range(m):
		clusterAssment[i,1] = km.disCalu(mat(centriods0),dataset[i,:]) ** 2

	while(len(centList) < k):
		SSE_initial = inf
		for i in range(len(centList)):
			dataInClusterI = dataset[nonzero(clusterAssment[:,0].A==i)[0],:]
			centMat,clusterSSE = km.kMeans(dataInClusterI,2)
			SSE_devide = sum(clusterSSE[:,1])
			SSE_nondevide =\
			sum(clusterAssment[nonzero(clusterAssment[:,0].A!=i)[0],1])
			SSE_all = SSE_devide + SSE_nondevide
			if SSE_all < SSE_initial:
				SSE_initial = SSE_all
				bestCentToDevide = i
				bestNewCent = centMat
				bestClustAss = clusterSSE.copy()
		bestClustAss[nonzero(bestClustAss[:,0].A==1)[0],0] = len(centList)
		bestClustAss[nonzero(bestClustAss[:,0].A==0)[0],0] = bestCentToDevide
		centList[bestCentToDevide] = bestNewCent[0,:]
		centList.append(bestNewCent[1,:])
		clusterAssment[nonzero(clusterAssment[:,0].A==bestCentToDevide)[0],:] = bestClustAss
	return centList, clusterAssment


#test
dataset = array([[1,2],[2,3],[1,3],[7,8],[6,9],[8,8],[5,6],[4,2],[4,6]])
centList,clusterAssment = biKmeans(dataset,5)
print centList