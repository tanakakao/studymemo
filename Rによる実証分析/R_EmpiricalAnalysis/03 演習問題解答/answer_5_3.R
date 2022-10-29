### answer_5_3.r
### 95%信頼区間のシミュレーション

S <- 10000 		# 繰り返し回数
CI.count <- numeric(S) 	# 結果の保存用

for(i in 1:S){ 	# 繰り返しスタート
 x <- rnorm(1000,0,1)
 y <- 1+5*x+rnorm(1000,0,1)
 result <-summary(lm(y~x))
 beta1 <- result$coefficients[2,1]
 sigma <- result$coefficients[2,2]
 CI.count[i] <- (abs(beta1-5)<1.96*sigma)
} 			# 繰り返し終了

mean(CI.count)