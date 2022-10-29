### answer_4_1.r
### 問題4.1の解答例

data <- read.csv("data_4_1.csv")	# データの読み込み

# 4.1(1)

# 午前ダミー
morning <- with(data, (time>=6)&(time<=12))
# 午後ダミー
afternoon <- with(data, (time>=13)&(time<=18))

# 4.1(2)

# 土曜ダミー
saturday <- with(data,(date=="2014/8/2")|(date=="2014/8/9")| +
		(date=="2014/8/16")|(date=="2014/8/23")|(date=="2014/8/30"))
# 日曜ダミー
sunday <- with(data,(date=="2014/8/3")|(date=="2014/8/10")| +
		(date=="2014/8/17")|(date=="2014/8/24")|(date=="2014/8/31"))
# 夏休みダミー
recess <- with(data,(date=="2014/8/11")|(date=="2014/8/12")| +
		(date=="2014/8/13")|(date=="2014/8/14")| +
		(date=="2014/8/15")|(date=="2014/8/16"))

# 4.1(3)

# OLS推定の実行
summary(with(data,
lm(elec~temp+morning+afternoon+prec+saturday+sunday+recess)))