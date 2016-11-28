from numpy import*
dataset=array([[1,2],[2,3],[1,3],[7,8],[6,9],[8,8]])
m = shape(dataset)[0]
n = shape(dataset)[1]
k = 2
#random k points
kPoints = array(zeros([k,n]))
for i in range(n):
    kMin= min(dataset[:,i-1])
    kRange = max(dataset[:,0]) - min(dataset[:,i-1])
    row_kPoints = kPoints[:,i-1]
    column_kPoints = row_kPoints.reshape((-1,1))
    column_kPoints = kMin + kRange * random.rand(k,1)
    print shape(column_kPoints)