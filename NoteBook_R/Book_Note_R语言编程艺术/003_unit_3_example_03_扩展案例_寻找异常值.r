#Ѱ��ÿһ����ƽ��ֵ��Զ��ֵ��λ��
findols<-function(x){
	findol<-function(xrow){
		mdn<-median(xrow)	
		devs<-abs(xrow-mdn)
		return(which.max(devs))
	}
	return(apply(x,1,findol))
	#���������ڵ����Ӻ���
}

x=matrix(c(1,2,3,4,5,9,2,3,5,6,4,5),nrow=2,byrow=T)

findols(x)

