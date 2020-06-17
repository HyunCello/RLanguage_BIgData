# reshape 활용

install.packages("reshape")    # reshape 패키지 설치
library(reshape)               # reshape 로드

data("airquality")     # airquality 데이터를 불러온다.
head(airquality)     # airquality 데이터 일부분을 불러온다.
head(airquality, 10)     # airquality 데이터 10개 행을 불러온다.

names(airquality)   # 변수명이 무엇인지 보고자 할 경우 names를 사용하여 변수를 나열한다.
names(airquality) <- tolower(names(airquality)) # 변수명을 모두 문자로 변환
names(airquality)

# id에 있는 변수를 기준으로 하여 나머지 각 변수를 variable이라는 이름으로 데이터를 만든다.
# 연산 시 결측값(missing data)를 제거하는 옵션 na.rm을 'TRUE'로 설정한다.
aqm = melt(airquality, id=c("month","day"), na.rm=TRUE);aqm


# cast를 이용하여 엑셀의 피벗팅을 하듯 자료를 변환
# melt된 aqm을 이용해 "~"를 y, x축의 dimension과 measur에 해당흔 변수값을 쵸시
a <- cast(aqm, day ~ month ~ variable)
a
# y축은 month, x축은 variable 그리고 ","로 구분하여 mean 함수 적용 - 월별 평균값 산출
b <- cast(aqm, month ~ variable, mean)
b
# y축은 month, 모든 변수에 대한 평균을 구함 "|"를 사용하여 산출물을 분리 표시
c <- cast(aqm, month ~.|variable,mean)
c
# margin 옵션, 행과 열에 대한 소계 산출
d <- cast(aqm, month ~ variable, mean, margins=c("grand_row","grand_col"))
d
# subset 옵션, 모든 데이터를 처리하지 않고 특정 변수만 처리
e <- cast(aqm, day ~ month, mean, subset=variable=="ozone")
e
# range 함수는 min과 max를 동시에 표시
f <- cast(aqm, month ~ variable, range)
f





# reshape2 melt 활용1
install.packages("reshape2")
library(reshape2)
head(french_fries)    # french_fries의 데이터를 불러온다. 
str(french_fries)     # french_fries의 형식을 확인한다. 
# 1행 ~ 4행 : 실험조건
# 5행 ~ 9행 : 맛결과

# 1:4 컬럼을 id로 나머지를 결과로 melt
m <- melt(id=1:4, french_fries)
head(m,3)
tail(m,3)

# reshape2 melt활용 2
smiths             # smiths의 데이터를 불러온다.
str(smiths)        # smiths의 형식을 확인한다.

#melt : id=subject, time / 측정치 : age, weight, height
melt(id=1:2,smiths)
melt(id=1:2, smiths, na.rm=TRUE)  #NA제거


# NA 제거 complete.cases()
# 행의 모든 값이 NA가 아닌 경우 T 하나라도 NA가 있으면 FALSE
smiths[complete.cases(smiths),]
smiths[!complete.cases(smiths),]

french_fries[!complete.cases(french_fries),]






# reshape2의 dcast
# dcast 예시 : melt된 smiths data
m <- melt(id=1:2, smiths); m
x <- dcast(m, subject + time~...); x
x <- dcast(m, subject + time ~ variable); x


no <- c(1,1,2,2)
day <- c(1,2,1,2)
A1 <- c(40,30,40,25)
A2 <- c(70,55,80,45)
data <- data.frame(no, day, A1,A2)
data

m_data <- melt(data,id=c("no","day")); m_data

dcast(m_data,no+day~variable)
dcast(m_data,no+variable~day)
dcast(m_data,no~variable+day)
dcast(m_data, no~variable,mean)
dcase(m_data, day~varible, mean)
dcast(m_data,no~day, mean)

