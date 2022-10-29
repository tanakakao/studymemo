# sample script 2_3
# 相関係数と大数の法則

pop2 <- read.csv("data_2_1.csv")
cr <- numeric(10000)
for(i in 1:10000){ cr[i] <- with(pop2,cor(income[1:i], cons[1:i]))}
plot(cr, type='l', xlab="標本数", ylab="相関係数", main="大数の法則:相関係数")
