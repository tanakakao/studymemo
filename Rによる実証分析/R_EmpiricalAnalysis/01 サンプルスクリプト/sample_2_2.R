# sample_2_2.r
# 標本分散と大数の法則

v <- numeric(10000)
for(i in 1:10000){v[i] <- var(pop[1:i])}
plot(v, type='l', xlab="標本数", ylab="標本分散", main="大数の法則")