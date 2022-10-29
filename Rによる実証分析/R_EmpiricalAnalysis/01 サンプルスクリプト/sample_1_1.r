### sample_1_1.r
###

data(USPersonalExpenditure)
dat<-USPersonalExpenditure
fig<-data.frame(Food.and.Tabacco=dat[,1],Household.Operation=dat[,2],Medical.and.Health=dat[,3],Personal.Care=dat[,4],Personal.Education=dat[,5])

par(mfrow=c(2,3)) 
with(fig, plot(Household.Operation~Food.and.Tabacco,type='o'))
with(fig, plot(Household.Operation~Medical.and.Health,type='o'))
with(fig, plot(Household.Operation~Personal.Education,type='o'))
with(fig, plot(Personal.Care~Food.and.Tabacco,type='o'))
with(fig, plot(Personal.Care~Medical.and.Health,type='o'))
with(fig, plot(Personal.Care~Personal.Education,type='o'))