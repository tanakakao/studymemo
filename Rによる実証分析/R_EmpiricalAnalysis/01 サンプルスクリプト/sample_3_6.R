### Sample_3_6.r
### 信頼区間シミュレーション用スクリプト

S <- 10000		# シミュレーション回数
n <- 10000		# 標本の大きさ
rec <- numeric(S)	# 結果記録用のリスト
for(i in 1:S){	# 繰り返し開始
X <- rnorm(n,50,10)	# N(50,10)から標本抽出
Xbar <- mean(X); Sn <- var(X)
rec[i] <- (Xbar-1.96*sqrt(Sn/n)<50) *(50<Xbar+1.96*sqrt(Sn/n))
}	# 繰り返し終了
mean(rec)		# 確率を計算
