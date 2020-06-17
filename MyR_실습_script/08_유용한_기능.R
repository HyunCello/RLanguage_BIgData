# paste 예제
number <- 1:10                # 1부터 10까지 number 벡터에 선언
alphabet <- c("a", "b", "c")  # a, b, c를 alphabet 벡터에 선언
paste(number, alphabet)       # number와 alphabet을 붙인다.

# number와 alphabet을 붙일 때 to the를 구분자로 한다.
paste(number, alphabet, sep = " to the ")

# substr 예제
substr("BigDataAnalysis",1,4)  # BigDataAnalysis를 첫번째 글자부터 4개까지 자른다.

country <- c("Korea", "Japan", "China", "Singapore", "Russia")
substr(country, 1, 3)


# 자료형 데이터 구조 변환
as.integer(3.14)     # 소수를 정수 형식으로 변경
as.numeric("foo")    # 문자를 숫자 형식으로 변경
as.numeric("1")
as.character(101)    # 숫자를 문자 형식으로 변경
as.numeric(FALSE)    # 논리 연산자를 숫자 형식으로 변경
as.logical(0.45)     # 숫자를 논리 형식으로 변경


# 자료형 데이터 구조 변환 - 데이터 프레임을 행렬로 변환
income <- c(100, 200, 150, 300, 900)
car <- c("kia", "hyundai", "toyota", "lexus","bmw")
marrige <- c(FALSE, FALSE, FALSE, TRUE, TRUE)
mydat <- data.frame(income, car, marrige)

mydat

as.matrix(mydat)

# 문자를 날짜 형식으로 변환
Sys.Date()      # 현재 날짜를 구한다.
as.Date("2019-04-29")     # 2019-04-29의 문자열을 날짜 형식으로 인지한다.
as.Date("04/29/2019")     # 표준 서식을 따르지 않는 형식의 문자열
as.Date("04/29/2019",format="%m/%d/%Y")  # 서식을 지정한 문자열

# 날짜를 문자열로 변환
as.Date("04/29/2019",format="%m/%d/%Y")
format(Sys.Date())
as.character(Sys.Date())
format(Sys.Date(),format="%m%d%Y")

format(Sys.Date(),'%a')     # '%a'는 요일을 출력한다.
format(Sys.Date(),'%b')     # '%b'는 월을 숫자로 출력한다.
format(Sys.Date(),'%m')     # '%m'는 두자리 숫자로 월을 출력한다.
format(Sys.Date(),'%d')     # '%d'는 두자리 숫자로 일을 출력한다.
format(Sys.Date(),'%y')     # '%y'는 두자리 숫자로 된 연도를 출력한다.
format(Sys.Date(),'%Y')     # '%Y'는 네자리 숫자로 된 연도를 출력한다.

