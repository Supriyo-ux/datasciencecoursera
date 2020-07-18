fy <-rep(c(1999,1991,2001),3)
company <- c(rep("png",3),rep("hul",3),rep("marico",3))
revenue <- c(1123,1254,4561,1423,1568,12369,1587,12458,4578)
margin <- c(11,12,13,14,15,16,17,18,19)
Data <- data.frame(fy, company, revenue,margin)
Data$cost= Data$revenue*(100-Data$margin)/100

library(dplyr)
myresults <- Data %>% group_by(company) %>%  mutate(highestMargin= max(margin), lowestMargin= max(margin))



myresults1 <- Data %>% group_by(company) %>%  summarise(bestMargin= max(margin))

#averagecost
avg_cost <- Data %>% group_by(company) %>%  summarise(average_cost= mean(cost))
#ifelse
Data$costcat= ifelse(Data$cost> 8000, "Yes", ifelse(Data$cost>5000,"Low","No"))

avg_cost$highcost=ifelse(avg_cost$average_cost>10000,"YES","NO")

#loop
for(i in 1:dim(Data)[1]){
  Data$margin[i]=Data$margin[i]+i
}

#functions
a= c(100,105,118,125,137)

growth_rate= function(x){
  a=x
  b= c(NA,a)
  b=b[-length(b)]
  g=(a-b)/b
  g=mean(g,na.rm = TRUE)
  return(g)
}

growth_rate(a)
