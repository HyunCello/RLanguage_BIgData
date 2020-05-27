# 벡터
ex_vector1 <- c(3,4,5)    # 숫자형 벡터
ex_vector1                # ex_vector1 결과확인

str(ex_vector1)           # ex_vector1의 속성 확인
length(ex_vector1)        # ex_vector1의 길이 확인

ex_vector2 <- c("Hello","Hi~")   # 문자형 벡터
ex_vector2

ex_vector3 <- c("1","2","3")
ex_vector3

str(ex_vector2)
str(ex_vector3)

# 논리형 벡터

ex_vector4 <- c(TRUE,FALSE,TRUE,FALSE)
ex_vector4

str(ex_vector4)
typeof(ex_vector4)
mode(ex_vector4)

# 데이터 세트 삭제
# Remove() or rm()

# 행렬/배열

x <- c(1,2,3,4,5,6)            # 벡터 x 생성
matrix(x, nrow = 2, ncol = 3)  # 변수 x를 2*3 행렬로 구성
matrix(x, nrow = 3, ncol = 2)  # 변수 x를 3*2 행렬로 구성

# 변수 x를 2*3 행렬로 구성 (왼쪽에서 오른쪽으로)
matrix(x, nrow = 2, ncol = 3, byrow = T)

matrix(c(1,2,3,4,5,6), nrow = 2, ncol = 3)


# 리스트

# 숫자형, 문자형 벡터로 list1 생성
list1 <- list(c(1,2,3),'hello')
list1                               # list 변수 조회

str(list1)


# 데이터 프레임

# 기본형 = data.frame(변수명1, 변수명2, ... , 변수명 n)
ID <- c(1,2,3,4,5,6,7,8,9,10)
SEX <- c("F","M","F","M","F","M","F","M","F","M")
AGE <- c(50,28,46,43,12,36,37,27,23,34)
AREA <- c("서울","안산","제주","서울","개성","분당","안산","제주","안산","제주")

dataframe_ex <- data.frame(ID,SEX,AGE,AREA)
dataframe_ex

str(dataframe_ex)


# 데이터 수집

# 원시 자료 입력하기.. 방금 이전에 했던 것

# 엑셀 파일 불러오기
# read_excel("엑셀파일 경로")

# TXT 파일 가져오기
# read.table()

# header = TRUE, sep = "," , skip = n , nrow = n, col.names = 변수명

# Import Dataset

# 데이터 저장/불러오기

# save() 함수 사용(.rda 파일로 저장), load()를 이용해 불러오기


# 기초함수

# 수열 생성

# rep(m,n) m을 n만큼 반복한다.

# seq(from,to) / seq(from,to,by=n) / seq(from,to,length=n)

rep(1,3)

seq(1,3)
1:3
seq(1,11,by=2)
seq(1,11,length=6)
seq(1,11,length=8)
rep(2:5,3)


# 기초 함수

# 산술 연산자 / 비교 & 논리 연산자

a = 1:10
a
a+a
a-a
a*a
a/a

a = c(2,7,3)
a
t(a)
A = a%*%t(a)
A

mx = matrix(c(23,41,12,35,67,1,24,7,53), nrow=3)
mx
5*mx
solve(mx)

# 비교 연산자/논리 연산자

5>3
5>-6
5<3
5<=6
5 == 5
5!= 5

a <-1:10
a
min(a)
max(a)
quantile(a)   # 분위수
sum(a)
log(a)
mean(a)       # 평균

var(a)        # 분산
sd(a)         # 표준편차

b <- log(a)
cov(a,b)      # 공분산
cor(a,b)      # 상관계수

summary(a)    # 요약

# 데이터 파악 함수

# view
# str
# dim
# ls

# 변수명 변경

# rename

# 파생변수 생성

# 데이터 세트$새 파생 변수명 <- 데이터 세트$ 기존 변수명 + 데이터세트$기존 변수명

# 변수 변환 방식

# 데이터세트$파생 변수명 <- ifelse(조건절, 참일 때 값, 거짓일 때 값)

# exdata1 데이터 세트에서 AGE 변수 값이 50 이상이면 "Y", 이하이ㅣ면 "N"
#exdata1$AGE50_YN <- ifelse(exdata1$AGE >= 50, "Y", "N")
#View(exdata1)


# 반복문 & 조건문

# for 반복문

# while 반복문

 