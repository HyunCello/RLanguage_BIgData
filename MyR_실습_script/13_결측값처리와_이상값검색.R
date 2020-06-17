# 데이터 탐색 - 기초통계
data(iris)
head(iris)        # 데이터의 앞 6줄만 조회한다.
head(iris,10)   # 데이터의 앞 10줄만 조회한다.
str(iris)        # 데이터의구조를 파악한다.
summary(iris)     # 데이터의 기초통계량을 확인한다.
cov(iris[,1:4])   # 공분산행렬
cor(iris[,1:4])    # 상관계수행렬

# 결측값
y <- c(1,2,3,NA)
is.na(y)
# 해당 결측값을 제외하는 방법
x <- c(1,2,NA,3)
mean(x)
mean(x,na.rm=T)






# NA확인
na_data <- iris[1:10,]
na_data[c(1,5,10),3] <- NA
na_data[c(2,10),1] <- NA
na_data

# NA확인
# is.na(data)
is.na(na_data)       #결측값 확인, NA가 있는 곳에 TRUE값 출력

# 특정열 NA 확인
# is.na(data$행이름)
is.na(na_data$Sepal.Length)
is.na(na_data$Petal.Length)

# NA가 있는 행 불러오기
# data[is.na(data$행이름),]
na_data[is.na(na_data$Sepal.Length),]
na_data[is.na(na_data$Petal.Length),]

# NA 갯수 구하기 
# sum(is.na(data))
sum(is.na(na_data))
# 특정열의 NA 갯수 구하기
# sum(is.na(data$행이름))
sum(is.na(na_data$Sepal.Length))
sum(is.na(na_data$Petal.Length))


# NA확인 방법
# complete.cases() 각 행에 저장된 모든 값이 NA가 아닐때만 TRUE
complete.cases(na_data)   # 1,2,5,10행은 적어도 하나의 NA가 있다.

# NA가 있는 행 찾기
na_data[!complete.cases(na_data),]


# NA처리
# na.rm=T / na.omit 활용
# na.rm=TRUE  통계 계산 시 NA를 제외하고 계산한다.
mean(na_data$Sepal.Length)   # NA로 인해 계산 불가
mean(na_data$Sepal.Length, na.rm=TRUE)
mapply(median, na_data[1:4], na.rm=T)

# na.omit() NA가 있는 행을 제거
new_na_data <- na.omit(na_data); new_na_data  # NA가 있는 1,2,5,10행 제거

# NA 처리
# NA값을 특정값으로 대체하기
# NA를 모두 0으로 바꾼다.
na_data1 <- na_data
is.na(na_data1)
na_data1[is.na(na_data1)] <- 0
na_data1

# 특정 열의 NA만 바꾸기
na_data2 <- na_data
is.na(na_data2$Sepal.Length)
na_data2$Sepal.Length[is.na(na_data2$Sepal.Length)] <- 0
na_data2

# NA값을 mean으로 대체하기
na_data3 <- na_data
mean_1 <- mean(na_data3[,1], na.rm=T)
mean_1        # 1열의 평균
mean_3 <- mean(na_data3[,3], na.rm=T)
mean_3        # 3열의 평균
mean_3 <- round(mean_3,2)  # 소수점 2자리까지만 표시

na_data3$Sepal.Length[is.na(na_data3$Sepal.Length)] <- mean_1
na_data3[,3][is.na(na_data3[,3])] <- mean_3
na_data3






# 이상값 상자그림
x <- rnorm(100) #표준정규분포를 따르는 난수 100개 생성
boxplot(x)     # 이상값의 유무를 알 수 없음
x <- c(x, 19, 28, 30)  # 고의적으로 이상값 19, 28, 30을 입력
outwith <- boxplot(x)  # 이상값 확인
outwith$out      # 이상값을 출력
