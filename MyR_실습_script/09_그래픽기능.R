# 산점도 그래프
hight <- c(170,171,180)
weight <- c(55, 58, 80)
plot(hight,weight)


# 산점도 행렬
pairs(iris[1:4], main="Anderson's Iris data -- 3 species", 
      pch = 21,bg=c("red","blue","green")[unclass(iris$spacies)])


# 연속형 데이터 - 히스토그램과 상자 그림
StatScore = c(88,27,65,77,91,18)
hist(StatScore, prob=T)      # prob=T 상대도수에 비례해 그리기(퍼센트)
boxplot(StatScore)

install.packages("readxl")
library(readxl)            # realxl 패키지 로드
# Sample1 엑셀 파일을 exdata1 데이터 세트로 저장
exdata1 <- read_excel("C:/myR/MyR/Sample1.xlsx")
exdata1                    # exdata1 데이터 세트 확인


# 줄기 잎 그림 | stem()
stem(exdata1$AGE)              # exdata1의 AGE 변수에 대한 줄기 잎 그림

#히스토그램 | hist()
hist(exdata1$AGE)              # exdata1의 AGE 변수에 대한 히스토그램
   # X축을 0~60, Y축을 0~5로 나타내며, 그래프 명칭은 "AGE분포"로 표기
hist(exdata1$AGE, xlim = c(0,60), ylim=c(0,5), main = "AGE분포")



# 빈도 분석 | freq()
# descr 패키지 설치 및 로드
install.packages("descr")
library(descr)

# exdata1의 SEX 변수 분포 막대그래프 그리기, 그래프 명칭은 '성별(barplot)'
freq(exdata1$SEX, plot = T, main = '성별(barplot)' )

# 막대그래프 | barplot()
dist_sex <- table(exdata1$SEX)    # exdata1의 SEX 변수에 대한 빈도 분포를 dist_sex에 할당
dist_sex                          # dist_sex 조회
barplot(dist_sex)                 # dist_sex에 대한 막대그래프 그리기

# y축을 0~8로 변경
barplot(dist_sex, ylim=c(0,8))
# y축을 0~8로 변경, 그래프 명칭을 'BARPLOT', X축 제목을 '성별'로 지정
barplot(dist_sex, ylim=c(0,8), main="BARPLOT", xlab="성별")
# Y축 제목을 'FREQUENCY', 항목값을 'Female', 'Mele'로 지정
barplot(dist_sex, ylim=c(0,8), main="BARPLOT", xlab="성별", ylab="FREQUENCY", names=c("Female","Mele"))
# 그래프 색 변경
barplot(dist_sex, ylim=c(0,8), main="BARPLOT", xlab="성별", ylab="FREQUENCY", names=c("Female","Mele"), col=c("green","pink"))


## 상자 그림 | boxplot()
library(readxl)                # readxl 패키지 로드
exdata1 <- read_excel("C:/myR/Sample.xlsx")  # Sample1 엑셀 파일을 exdata1 데이터 세트로 저장
exdata1

# exdata1의 Y17_CNT와 Y16_CNT의 변수의 상자그림 그리기
boxplot(exdata1$Y17_CNT, exdata1$Y16_CNT)   

# y축을 0~60, 그래프 명칭을 'boxplot', 항목값을 '17년이용건수','16년이용건수'로 입력
boxplot(exdata1$Y17_CNT, exdata1$Y16_CNT, ylim=c(0,60), main="boxplot",names=c("17년이용건수","16년이용건수"))

# 그래프 색 변경 추가
boxplot(exdata1$Y17_CNT, exdata1$Y16_CNT, ylim=c(0,60), main="boxplot",names=c("17년이용건수","16년이용건수"), col=c("yellow","green"))


# boxplot()의 이상치 표시
y1 <- c(1,2,3,4,5,6,7,8,9,10,20,25)     # 변수 y1에 데이터 할당
boxplot(y1)                             # y1 변수의 상자 그림

