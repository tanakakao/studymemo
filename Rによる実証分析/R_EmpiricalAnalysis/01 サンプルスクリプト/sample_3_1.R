### Sample_3_1.r
### コイン100回投げシミュレーション用スクリプト

S <- 100000		# シミュレーション回数
rec <- numeric(S)	# 結果記録用のリスト
coin <- c(1,0)	# コインの表裏を定義
for(i in 1:S){	# 繰り返し開始
	z <- sample(coin,100,replace=TRUE)	# コイン投げを実行
	rec[i] <- sum(z)	# 表が出た回数を計算
}	# 繰り返し終了
hist(rec)		# ヒストグラム作成
summary(rec)		# 基本統計量を計算
count <- (rec==50)	# 事象Aの成立回数をカウント
mean(count)		# 事象Aの成立する確率を計算
