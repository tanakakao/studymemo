### sample_5_1.r
### OLS推定量の漸近分布

S <- 10000 # 繰り返し回数
beta1 <- numeric(S) # 結果の保存用

for(i in 1:S){ 	# 繰り返しスタート
 x <- rnorm(1000,0,1)
 y <- 1+5*x+rnorm(1000,0,1)
 beta1[i] <- lm(y~x)$coef[2]
} 			# 繰り返し終了

summary(beta1) 	# 結果の整理
sd(beta1)		# 標準偏差
hist(beta1)		# 結果の描画