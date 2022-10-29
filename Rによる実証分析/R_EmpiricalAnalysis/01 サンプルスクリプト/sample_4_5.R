### sample_4_5.r
### 重回帰分析：電力使用量の予測

data <- read.csv("data_4_1.csv")	# データの読み込み

# 昼間ダミー
daytime <- with(data, (time>=9)&(time<=18))
# 日曜ダミー
sunday <- with(data,(date=="2014/8/3")|(date=="2014/8/10")| +
		(date=="2014/8/17")|(date=="2014/8/24")|(date=="2014/8/31"))
# 夏休みダミー
recess <- with(data,(date=="2014/8/11")|(date=="2014/8/12")| +
		(date=="2014/8/13")|(date=="2014/8/14")| +
		(date=="2014/8/15")|(date=="2014/8/16"))

# OLS推定の実行
with(data, lm(elec~temp+daytime+prec+sunday+recess))
