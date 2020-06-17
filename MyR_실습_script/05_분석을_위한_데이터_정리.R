# 데이터 파악함수 예제
install.packages("readxl")   # readxl 패키지 설치
library(readxl)         # readxl 패키지 로드

# Sample1 엑셀 파일을 불러와서 exdata1 데이터 세트로 저장
exdata1 <- read_excel("C:/myR/MyR/Sample1.xlsx")
exdata1

View(exdata1)     # exdata1 데이터 세트 확인
str(exdata1)      # exdata1 데이터 세트의 변수 속성 조회
dim(exdata1)      # exdata1 데이터 세트의 행/열 확인
ls(exdata1)       # exdata1 데이터 세트의 변수명 확인

# 변수명 변경함수 예제
install.packages("dplyr")
library(dplyr)

# 데이터 세트에 저장된 값이 아닌 단발성 변경
rename(exdata1,Y17_AMT = AMT17, Y16_AMT = AMT16)
View(exdata1)
# 데이터 세트에 변경된 값 저장
exdata1 <- rename(exdata1,Y17_AMT = AMT17, Y16_AMT = AMT16)
View(exdata1)


# exdata1 데이터 세트에 Y17_AMT와 Y16_AMT를 더해 exdata1에 AMT 변수 생성
exdata1$AMT <- exdata1$Y17_AMT + exdata1$Y16_AMT

# exdata1 데이터 세트에 Y17_CNT와 Y16_CNT를 더해 exdata1에 CNT 변수 생성
exdata1$CNT <- exdata1$Y17_CNT + exdata1$Y16_CNT

View(exdata1)

# exdata1 데이터 세트의 AMT를 CNT로 나눈 값을 
# exdata1 데이터 세트의 AVG_AMT로 생성
exdata1$AVG_CNT <- exdata1$AMT / exdata1$CNT

View(exdata1)

# exdata1 데이터 세트에서 AGE 변수 값이 50 이상이면 "Y", 이하이면 "N"
exdata1$AGE50_YN <- ifelse(exdata1$AGE >= 50, "Y", "N")

View(exdata1)


# exdata1 데이터 세트의 AGE 값이 50 이상이면 "A1.50++", 40 이상이면 "A2.40~49"
# 30 이상이면 "A3.30~39", 20 이상이면 "A4.20~29" 나머지는 "A5.00~19"
exdata1$AGE_GR10 <- ifelse(exdata1$AGE >= 50, "A1.50++",
                           ifelse(exdata1$AGE >= 40, "A2.40~49",
                                  ifelse(exdata1$AGE >= 30, "A3.30~39",
                                         ifelse(exdata1$AGE >= 20, "A4.20~29",
                                                "A5.00~19"))))
View(exdata1)

