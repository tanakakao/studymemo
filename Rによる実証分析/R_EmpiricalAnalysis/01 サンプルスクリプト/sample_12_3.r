### Sample_12_2.r
### 推定結果を検証する

#data.full <- read.csv("data_Males_full.csv") # データ読み込み
#data <- data.full[data.full$year==1980,]

data <- read.csv("data_Males_full.csv") # データ読み込み

black <- (data$ethn=="black")
hisp <- (data$ethn=="hisp")
hlth <- (data$health=="yes")
union <- (data$union=="yes")
married <- (data$married=="yes")

agricultural <- (data$industry=="Agricultural")
business <- (data$industry=="Business_and_Repair_Service")
construction <- (data$industry=="Construction")
finance <- (data$industry=="Finance")
manufacturing <- (data$industry=="Manufacturing")
trade <- (data$industry=="Trade")
transportation <- (data$industry=="Transportation")
professional <- (data$industry=="Professional_and_Related Service")

clerical <- (data$occupation=="Clerical_and_kindred")
craftsman <- (data$occupation=="Craftsmen, Foremen_and_kindred")
laborer <- (data$occupation=="Laborers_and_farmers")
manager <- (data$occupation=="Managers, Officials_and_Proprietors")
operative <- (data$occupation=="Operatives_and_kindred")
servise <- (data$occupation=="Service_Workers")
technical <- (data$occupation=="Professional, Technical_and_kindred")


res <- with(data,lm(wage~school+exper+married+union+black+hisp+
+agricultural+business+construction+finance+manufacturing+
+trade+transportation+professional+
+clerical+craftsman+laborer+manager+operative+servise+technical
))
summary(res)