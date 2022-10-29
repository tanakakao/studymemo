# sample_2_1.r
# 標本平均と大数の法則

m <- numeric(10000)
for(i in 1:10000){m[i] <- mean(pop[1:i])}
plot(m, type='l', xlab="標本数", ylab="標本平均", main="大数の法則")