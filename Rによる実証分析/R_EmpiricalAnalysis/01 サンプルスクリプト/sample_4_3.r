### sample_4_3.r
### ノンパラメトリック回帰

data <- read.csv("data_4_1.csv")	# データの読み込み
x <- seq(20,35,0.1)	# x=最小値20，最大値30，刻み0.1
n <- length(x)		# xの長さをnとする
mx <- numeric(n)		# 回帰関数m(x)の準備

for(i in 1:n){				# 気温によるグループ分け
 group <- data[data$temp==x[i], ]	# 気温=x[i]のグループの抜き出し
 mx[i] <- mean(group$elec)		# 電力使用量の平均値を計算
}
plot(x,mx,type='l',xlab="気温",ylab="電力使用量（万kW）")	# 描画
