### 벡터 : 데이터구조의 가장 기본형태, 1차원, 단일형

# 숫자형 벡터 생성
ex_vector1 <- c(-1, 0 ,1)
ex_vector1 # 출력 방법 : 변수를 한번 더 호출하는 것
#Values : 값 / 변수 num [1:3] -1 0 1

' 실행 단축키 : ctrl + enter '

# 숫자형 벡터 속성과 길이 확인
mode(ex_vector1) # 데이터의 유형 확인 // numeric - 숫자형
str(ex_vector1) # 데이터 유형과 값을 전체적으로 확인 // [1:3] : 1행 3열
length(ex_vector1) # 데이터의 길이 확인 // 값의 개수 3

'
num : 숫자형, int : 정수형
'
### 문자형 벡터 : 문자로 이루어진 데이터, ("", '')로 감싸준다.
# 문자형 벡터 생성

ex_vector2 <- c("Hello","Hi~!")
ex_vector2
ex_vector3 <- c("1","2","3")
ex_vector3
#Values : 값 / 변수 chr [1:2] "Hello" "Hi~!" 

### 논리형 벡터 : TRUE와 FALSE 진리값으로 이루어진 데이터이다.(대문자)

ex_vector4 <- c(TRUE, FALSE, TRUE, FALSE)
ex_vector4
#Values : 값 / 변수 logi 

### 범주형 자료 
# 범주형 자료 생성
ex_vector5 <- c(2, 1, 3, 2, 1) # 1 : Apple, 2 : Banana, 3 : Cherry
ex_vector5

cate_vector5 <- factor(ex_vector5, labels = c("Apple", "Banana", "Cherry"))
cate_vector5

### 행렬
# 행렬 데이터 생성

x <- c(1,2,3,4,5,6)
matrix(x, nrow = 2, ncol = 3) # // 행 : [1,] // 열 : [,1]
matrix(x, nrow = 3, ncol = 2)

# byrow 옵션
matrix(x, nrow = 2, ncol = 3, byrow = T)

### 배열
# 배열 생성하기 (변수명은 겹칠 수 없다. 제일 마지막 변수명으로 인식)
y <- c(1,2,3,4,5,6)
array(y, dim = c(2,2,3)) 






