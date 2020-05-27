# 사용자 정의 함수

# Function Name = function(argument1,argument2,...)
# <example script>
# 사용자 정의 함수
# 입력한 인수 a까지의 합을 계산해주는 함수 addto를 선언
addto = function(a) {
  isum = 0
  for (i in 1:a){
    isum = isum + i
  }
  print(isum)
}

addto(100)
addto(50)

# useful functions

# paste
# 입력받은 문자열을 하나로 붙여준다
# paste(벡터,벡터, sep="구분자")

number <- 1:10
alphabet <- c("a","b","c")
paste(number,alphabet)

# substr
# 주어진 문자열에서 특정 문자열을 추출하는 기능
# substr(벡터, 시작글자 순서, 추출할 문자 개수)

substr("BigDataAnalysis",1,4)

country <- c("Korea","Japan","China","Singapore","Russia")
substr(country,1,3)

# 자료형 데이터 변환

# as.data.fram(x) : 데이터 프레임 형식으로 변환
# as.list(x) : 리스트 형식으로 변환
# as.matrix(x) : 행렬 형식으로 변환
# as.vector(x) : 벡터 형식으로 변환
# as.factor(x) : 팩터(factor) 형식으로 변환

as.integer(3.14)
as.numeric("foo")
as.character(101)
as.numeric(FALSE)
as.logical(0.45)


# 문자열을 날짜로 변환
# 날짜의 의미를 지닌 Date 객체로 변환

Sys.Date()
as.Date("2020-05-19")
#as.Date("05/19/2020") 표준서식 x
as.Date("05/19/2020", format="%m/%d/")

# 날짜를 문자열로 변환

as.Date("04/29/2019",format="%m/%d/%y")
format(Sys.Date())
as.character(Sys.Date())
format(Sys.Date(),format="%m%d%y")

format(Sys.Date(),'%a') # 요일 출력
format(Sys.Date(),'%b') # 월을 숫자로 출력
format(Sys.Date(),'%m') # 두 자리 숫자로 월을 출력
format(Sys.Date(),'%d') # 두 자리 숫자로 일을 출력
format(Sys.Date(),'%y') # 두 자리 숫자로 된 연도 출력
format(Sys.Date(),'%Y') # 네 자리 숫자로 된 연도 출력


# R 그래픽 기능

# 전체 형태를 파악하는 줄기 잎 그림 | stem()

#library(readxl)
#exdata1 <- read_excel("")
#exdata1

#stem(exdata1$AGE)


# 히스토그램 - 도수 분포 상태를 기둥 모양으로 표현

#library(readxl)
#exdata1 <- read_excel("")
#exdata1

#hist(exdata1$AGE)

#hist(exdata1$AGE, xlim = c(0,60), ylim=c(0,5), main = "AGE분포")


# 막대 그래프 - 수량의 많고 적음을 확인
install.packages("descr")
library(descr)
