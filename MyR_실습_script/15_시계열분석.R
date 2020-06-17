# 1871년부터 1970년도까지 아스완댐에서 측정한
# 나일강의 연간 유입력에 관한 시계열 데이터

Nile

# 나일강 연간 유입량 시계열 그림
plot(Nile)


# 1974년부터 1979년까지의 영국내의 월별 폐질환 사망자에 관한 시계열 데이터
# mdeath는 남성, fdeath는 여성에 관한 폐질환 사망자 자료
ldeaths

# 폐질환 사망자 시계열 그림
plot(ldeaths)
# 계절성을 띄는 자료로 보임 - 매년 4분기에 사망자수가 급증, 2분기에 급감
# 추세요인, 계절요인, 불규칙요인, 순환요인 --> 분해시계열 데이터로 만들어보자.
# decompose 함수를 사용하여 시계열 자료를 4가지 요인으로 분해
ldeaths.decompose <- decompose(ldeaths)
ldeaths.decompose$seasonal
# 폐질환 사망자 시계열 분해 그림
plot(ldeaths.decompose)

# 폐질환 사망자 계절요인 제거 시계열 그림
ldeaths.decompose.adj <- ldeaths - ldeaths.decompose$seasonal
plot(ldeaths.decompose.adj)




# 나일강 연간 유입량은 평균이 일정하지 않은 비정상 시계열
# diff 함수를 사용하여 차분
Nile.diff1 <- diff(Nile, diffrence=1)
# 나일강 유입량 1차 차분 시계열 그림
plot(Nile.diff1)

# diff 함수를 사용하여 2차 차분
Nile.diff2 <- diff(Nile, differences=2)
# 나일강 유입량 2차 차분 시계열 그림
plot(Nile.diff2)

# 
Nile.arima <- arima(Nile, order=c(1,1,1))
Nile.arima

install.packages("forecast")
library(forecast)

Nile.forecasts <- forecast(Nile.arima, h=10)
Nile.forecasts
plot(Nile.forecasts)
