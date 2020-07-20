a= 1:10
b= seq(2,10,length.out = 10)
c= c(rep("Supriyo",5),rep("Bittu",5))
matrix1= cbind(a,b,c)
matrix2=rbind(a,b,c)
data1= data.frame(a=a,b=b,c=c)
matrix1[4,3]
data1[,c(1,2)]
data1[-c(6,7),]
 write.csv(data1,"practice.csv", row.names = FALSE)     
 data2= read.csv("practice.csv")
 
