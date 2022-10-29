### Sample_12_1.r
### データを眺める

data <- read.csv("data_Males.csv") # データ読み込み
head(data)	# データの冒頭部分
summary(data) # データの基本統計量

par(mfrow=c(3,1)) # 複数グラフの配置を指定
hist(data$wage)
hist(data$school)
hist(data$exper)