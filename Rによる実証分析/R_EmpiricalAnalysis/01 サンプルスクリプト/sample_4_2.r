### sample_4_2.r
### ノンパラメトリック回帰

data <- read.csv("data_4_1.csv")	# データの読み込み
mx <- numeric(24)				# 回帰関数m(x)の準備

for(i in 0:23){				# 時刻によるグループ分け
 group <- data[data$time==i, ]	# 時刻=iのグループの抜き出し
 mx[i+1] <- mean(group$temp)		# グループ内で気温の平均値を計算
}

plot(0:23,mx,type='l',xlab="時刻",ylab="気温",ylim=c(20,30))	# 回帰曲線
par(new=TRUE)	#　重ね描きの許可
plot(data$time,data$temp,xlab=" ",ylab=" ",ylim=c(20,30))	#　散布図