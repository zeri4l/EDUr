# 데이터입력
year <- 2006:2020
ad <- c(18, 8, 10, 15, 12, 15, 14, 15, 17, 19, 20, 21, 22, 21, 25)
sales <- c(94, 70, 90, 100, 95, 100, 85, 95, 105, 105, 110, 105, 104, 105, 121)
# 데이터프레임 생성
df <- data.frame(year, ad, sales)
# 입력된 데이터프레임 확인
df

model <- lm(sales ~ ad, data=df)
 summary(model)