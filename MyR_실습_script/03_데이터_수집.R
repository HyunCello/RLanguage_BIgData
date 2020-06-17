#원시자료 입력하기
ID <- c(1,2,3,4,5)                # 숫자 데이터를 변수 ID에 할당
ID                                # ID 변수 조회

SEX <- c("F","M","F","M","F")     # 문자 데이터를 변수 SEX에 할당
SEX                               # SEZX 변수 조회

DATA <- data.frame(ID = ID, SEX = SEX)   # ID와 SEX로 데이터 프레임 생성
View(DATA)                               # DATA 조회

#엑셀 파일 불러오기
install.packages("readxl")   # readxl 패키지 설치
library(readxl)              # readxl 패키지 로드

excel_data_ex <- read_excel("C:/myR/MyR/sample_xls_file.xlsx")
View(excel_data_ex)


#TXT파일 가져오기
ex_data <- read.table("C:/myR/MyR/sample_txt_file.txt")
View(ex_data)

ex_data <- read.table("C:/myR/MyR/sample_txt_file.txt", header = TRUE)
View(ex_data)

ex_data <- read.table("C:/myR/MyR/sample_txt_file.txt", header = TRUE, skip = 2)
View(ex_data)


ex_data <- read.table("C:/myR/MyR/sample_txt_file.txt", header = TRUE, nrow = 1)
View(ex_data)

ex_data1 <- read.table("C:/myR/MyR/sample_txt_file2.txt", header = TRUE, sep = ",")
View(ex_data1)


#변수명 추가하여 가져오기
varname <- c("ID1", "ID2", "ID3", "ID4", "ID5")
ex_data2 <- read.table("C:/myR/MyR/sample_txt_file3.txt", sep = ",", col.names = varname)
View(ex_data2)



# *.rda 파일로 저장하기
ID <- c(1,2,3,4,5)                # 숫자 데이터를 변수 ID에 할당
SEX <- c("F","M","F","M","F")     # 문자 데이터를 변수 SEX에 할당

data_ex <- data.frame(ID = ID, SEX = SEX)   # ID와 SEX로 데이터 프레임 생성

# data_ex 데이터 세트를 data_ex.rda 파일로 저장
save(data_ex, file="data_ex.rda")

# *.rda 파일 불러오기
load("C:/myR/data_ex.rda")
View(data_ex)


# CSV 또는 TXT 파일로 저장하기

# data_ex 데이터세트를 result_data_ex.csv 파일로 저장
write.csv(data_ex,file="C:/myR/result_data_ex.csv") 

# data_ex 데이터세트를 result_data_ex.txt 파일로 저장
write.table(data_ex, file="C:/myR/result_data_ex.txt") 
