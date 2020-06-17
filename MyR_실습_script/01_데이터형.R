ex_vector1 <- c(3,4,5)       # 숫자형 벡터
ex_vector1                   # ex_vector1 결과확인

str(ex_vector1)              # ex_vector1의 속성 확인
length(ex_vector1)           # ex_vector1의 길이 확인


ex_vector2 <- c("Hello", "Hi~!")       # 문자형 벡터
ex_vector2                   # ex_vector2 조회

ex_vector3 <- c("1","2","3")       # 문자형 벡터
ex_vector3                   # ex_vector3 결과확인

str(ex_vector2)
str(ex_vector3)

ex_vector4 <- c(TRUE, FALSE, TRUE, FALSE)  # 논리값을 변수에 할당하여 데이터 생성
ex_vector4                   # ex_vector4 조회

str(ex_vector4)
typeof(ex_vector4)
mode(ex_vector4)

remove(ex_vector3)
rm(ex_vector2)
