aba<-read.table("C:\\Users\\Administrator\\git\\R_practice_program_1\\NoteBook_R\\Book_Note_R���Ա������\\abalone.csv",header=T,as.is=T,sep=",")
	#������abalone�������ݼ�

m=which(aba[,"Gender"]=="M")
f=which(aba[,"Gender"]=="F")
i=which(aba[,"Gender"]=="I")
	#�����Ա�ɸѡ����

grps<-list()
	#������grps�б�

for(gen in c("M","F","I")){
	grps[[gen]]=which(aba[,"Gender"]==gen)
}
	#�����Ա�ɸѡ�������������������б�grps��

abaM=aba[grps[["M"]],]
abaF=aba[grps[["F"]],]
abaI=aba[grps[["I"]],]
	#�����������������ݰ���������ڶ����
plot(abaM$Length,abaM$Diameter)
points(abaF$Length,abaF$Diameter,col="red",pch="x")







