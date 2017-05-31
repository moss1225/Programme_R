#������һ������������i�е�j�е�Ԫ�ش������i�ͳ���j��ľ��롣
#������Ҫд�º�����������о������������м���̵ľ��룬
#�Լ���Ӧ���������У��������£�

# returns the minimum value of d[i , j] , i != j , and the row/col attaining
# that minimum, for square symmetric d, no special policy on ties
mind<-function(d){
	n<-nrow(d)
	dd<-cbind(d,1:n)
# add a column to identify row number for apply()
	wmins<-apply(dd[-n, ],1,imin)
# apply data dd by row in function imin() 
	i <-which.min(wmins[2, ])
	j<-wmins[1 ,i]
	return(c(d[i,j], i, j))
}

imin <- function(x){
	lx <- length(x)
	i <-x[lx] 
# original row number
	j<-which.min(x[i+1:(lx-1)])
	k<- i+j
	return(c(k,x[k]))
}

dataQ=matrix(c(0,12,13,8,20,12,0,15,28,88,13,15,0,6,9,8,28,6,0,33,20,88,9,33,0),nrow=5,byrow=T)
resultQ=mind(dataQ)
print( paste("��С����",resultQ[1] , sep = "",collapse=""))