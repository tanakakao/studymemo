### sample_4_4.r
### 線形回帰：電力使用量vs気温

data <- read.csv("data_4_1.csv")	# データの読み込み
rec  <- lm(data$elec~data$temp)	# OLS推定の実行

plot(data$temp,data$elec,xlab="気温",ylab="電気使用量（万kW）")	# 散布図
abline(rec)			# 回帰直線
rec 				# 推定結果
