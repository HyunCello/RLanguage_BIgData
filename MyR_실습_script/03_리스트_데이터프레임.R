list1 <- list(c(1,2,3),'Hello') # 숫자형,문자형 벡터로 list1생성
list1                           # list1 변수 조회

str(list1)       #list1 변수 속성 확인

# data.fram을 구성하기 위한 ID, SEX, AGE, AREA 변수 생성
ID <- c(1,2,3,4,5,6,7,8,9,10)
SEX <- c("F","M","F","M","M","F","F","F","F","M")
AGE <- c(50,20,48,28,23,50,38,41,56,80)
AREA <- c("서울","분당","제주","서울","제주","안산","개성","분당","안산","제주")

# ID, SEX, AGE, AREA 변수를 포함한 데이터 프레임 구조로 dataframe_ex 데이터 세트에 저장
dataframe_ex <- data.frame(ID, SEX, AGE, AREA)
dataframe_ex              # datafream_ex 조회

str(dataframe_ex)
