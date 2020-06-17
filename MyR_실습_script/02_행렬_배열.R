x <- c(1,2,3,4,5,6)            # 벡터 x 생성
matrix(x, nrow = 2, ncol = 3)  # 변수 x를 2*3 행렬로 구성
matrix(x, nrow = 3, ncol = 2)  # 변수 x를 3*2 행렬로 구성

# 변수 x를 2*3 행렬로 구성 (왼쪽에서 오른쪽으로)
matrix(x, nrow = 2, ncol = 3, byrow=T)  

matrix(c(1,2,3,4,5,6,7,8,9), nrow = 3, ncol = 3)


y <- c(1,2,3,4,5,6)       # 벡터 y 생성
array(y, dim=c(2,2,3))    # 변수 y를 2*2 행렬, 3차원 배열로 구성


