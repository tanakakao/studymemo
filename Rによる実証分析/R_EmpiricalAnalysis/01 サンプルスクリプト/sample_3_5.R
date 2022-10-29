### Sample_3_5.r
### 中心極限定理シミュレーション用スクリプト

S <- 10000		# シミュレーション回数
n <- 10000		# 標本の大きさ
Zn <- numeric(S)	# 結果記録用のリスト
for(i in 1:S){	# 繰り返し開始
	X <- rnorm(n,50,10)	# N(50,10)から標本抽出
	Xbar <- mean(X)
Sn <- var(X)
Zn[i] <- sqrt(n)*(Xbar-50)/sqrt(Sn)
}	# 繰り返し終了
hist(Zn)		# ヒストグラム作成
