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

# byrow 옵션 (무조건 대문자를 써야한다.)
matrix(x, nrow = 2, ncol = 3, byrow = T)

### 배열
# 배열 생성하기 (변수명은 겹칠 수 없다. 제일 마지막 변수명으로 인식)
y <- c(1,2,3,4,5,6)
array(y, dim = c(2,2,3))  
# 2행 2열 3차원의 배열을 생성하고 싶다. 
# y가 하나의 차원에 들어가기엔 크기가 부족하기 때문에 잘려서 들어가진다. 

### 리스트 : 1차원 데이터인 서로 다른 구조의 데이터를 그룹으로 묶은 데이터 세트를 말한다. 
# 리스트 생성하기
list1 <- list(c(1,2,3), "Hello")
list1

### 데이터프레임
# 데이터프레임 생성

ID <- c(1,2,3,4,5,6,7,8,9,10) # 숫자형 벡터
SEX <- c("F", "M", "F", "M", "M","F", "F", "F","M", "F")
AGE <- c(50,40,28,50,27,23,56,47,20,38)
AREA <- c("서울", "경기", "제주", "서울","서울",
          "서울", "경기","서울","인천", "경기")

dataframe_ex <- data.frame(ID, SEX, AGE, AREA)
dataframe_ex

# 데이터프레임 변수 속성 확인
str(dataframe_ex) # obs : 관측치(행)이 10개가 있다. 


'콘솔창 지우기 단축기 : ctrl + L'

### 데이터 프레임 깊게 보기
# 기본 데이터 프레임 만들기

math <- c(50, 60, 100, 20) 
english <- c(90, 80, 60, 70)
math
english

df_midterm <- data.frame(math, english)
df_midterm

# 학생의  반에 대한 정보 추가 (속성 추가)
class <- c(1, 1, 2, 2)
df_midterm <- data.frame(math, english, class) # 변수를 만들어서 frame안에 넣기만 하면된다.
df_midterm

# 간단한 분석
mean(df_midterm$math) # 수학 성적 평균 // shift 4 : $  
mean(df_midterm$english)
'달러 기호($)는 데이터 프레임 안에 있는 변수를 지정할 때 사용합니다.'

# 데이터 프레임 한번에 만들기

df_midterm <- data.frame(english = c(90,80,60,70), 
                         math = c(50,60,100,20),
                         class = c(1,1,2,2))
df_midterm

### 외부 데이터 이용하기
# 데이터를 R에 불러보기 - R에서 엑셀,csv파일을 열기위해서는 패키지프로그램이 필요하다. 
install.packages("readxl") #r에서 엑셀파일을 불러오기 위해 필요한 패키지 # 설치
library(readxl) # 로드 (사용)

df_exam <- read_excel('excel_exam.xlsx')

df_song <- read_excel('C:/bigdata_R/SongList.xlsx')

'경로를 입력해서 파일을 읽는 경우는 경로를 복사해오고 역슬래시(\)를 슬래시(/)로 바꿔준 다음
확장자까지 입력해줍니다.'
df_exam

# 분석하기
mean(df_exam$math) # 수학 평균

# 읽는 파일에 변수명이 없는 경우
df_exam_novar <- read_excel('excel_exam_novar.xlsx')
df_exam_novar

# 변수명 자동 지정
df_exam_novar <- read_excel('excel_exam_novar.xlsx', col_names = F)
df_exam_novar

### 엑셀파일에 시트가 여러개 있는 경우
df_exam_sheet <- read_excel('excel_exam_sheet.xlsx', sheet = 3)
df_exam_sheet

### csv 파일 읽기
df_csv_exam <- read.csv('csv_exam.csv') # 변수명은 스네이크표기법을 사용한다. 
df_csv_exam

# 문자가 들어있는 파일을 불러올 때는 stringsAsFactors = F 옵션을 추가지정해주어야한다.

### 데이터 프레임을 CSV 파일로 저장하기
df_midterm <- data.frame(english = c(90,80,60,70), 
                         math = c(50,60,100,20),
                         class = c(1,1,2,2))
df_midterm

# CSV 저장
write.csv(df_midterm, file = 'df_midterm.csv') 
# 옵션 = parameter (매개변수) ,파일명 지정

### RData 파일 활용하기
'RData(.rda 또는 .rdata) : R 전용 데이터 파일
1. 다른 파일들에 비해 R에서 읽고 쓰는 속도가 빠르다.
2. 용량이 작다.
3. 일반적으로 R에서 분석을 할 때는 RData 파일을 쓰고, R을 사용하지 않는
사람과 파일을 주고받을 때에는 CSV파일을 사용한다.'

# 데이터 프레임을 RData로 저장하기
save(df_midterm, file = 'df_midterm.rda') # rda or rdata

# Rdata 파일 불러오기
rm(df_midterm) #rm remove의 줄임말말 삭제

df_midterm # 삭제확인

load('df_midterm.rda') # 불러오기
df_midterm

'
1. df_exam <- read_excel("excel_exam.xlsx")
2. df_csv_exam <- read.csv("csv_exam.csv")
3. load("df_midteram.rda")

-> 1,2 변수에 할당하고 읽어들인다.

-> 3 바로 생성된다. : load()로 불러오면 저장할 때 
                      사용한 데이터 프레임이 자동으로 만들어진다.
그래서 새 변수에 할당할 필요가 없다.

'
#작은 따옴표 안에 작은 따옴표를 쓸수 없다.

### 정리 
'
1. 변수 만들기, 데이터 프레임 만들기
math <- c(1,2,3,4)
data.frame(변수1, 변수2)

2. 외부 데이터 이용하기

  1) 엑셀파일
    library(readxl) # 패키지 로드
    df_exam <- read_excel("파일명")
  2) csv파일
    df_csv <- read.csv("파일명")
    write.csv("데이터프레임명", file = "저장할 파일명")
  3) rda파일
    load("파일명")
    save("데이터프레임명", file = "저장할 파일명")
'

### 데이터 파악하기
exam <- read.csv('csv_exam.csv')

# 데이터 앞 부분 확인하기 head - 앞에서 6칸까지
head(exam)
# 데이터 뒷 부분 확인하기 - 뒤에서 6칸까지
tail(exam)

# 행에 범위 지정 옵션
head(exam, 10)

# 뷰어 창에서 데이터 확인하기
View(exam)
'첫 글자 v를 무조건 대문자로 써야한다.'

# 데이터가 몇 행, 몇 열로 구성되어 있는지 확인하기
dim(exam) # 데이터의 크기

# 데이터의 속성 파악하기
str(exam)

# 요약 통계량
summary(exam)
'
1. Min 최솟값
2. 1st Qu : 1사분위수 - 하위 25% 지점에 위치하는 값
3. Medium : 중앙값 - 중간에 위치하는 값
4. Mean : 평균
5. 3rs Qu : 3사분위수 - 하위 75% 지점에 위치하는 값
6. Max : 최대값

-> 수학 기준
1) 수학 시험 점수의 평균이 57.45점이다.
2) 수학 시험 점수가 가장 낮은 학생은 20점, 가장 높은 학생은 90점이다. 
3) 학생들의 수학점수가 54점을 중심으로 45.75점에서 75.75점 사이에
  몰려있다.
'

### mpg 데이터 파악하기
'ggplot2 패키지 안에 저장된 mpg 데이터를 이용할 것'

# 1. ggplot 패키지 설치
install.packages('ggplot2')

# 2. mpg 데이터 불러오기
mpg <- as.data.frame(ggplot2::mpg)
View(mpg)

# 3. 데이터 확인
head(mpg, 15) # 앞 부분
tail(mpg, 10) # 뒷 부분
View(mpg) # 데이터 뷰어 창에서 확인

# 4. dim()을 이용해서 몇 행(크기), 몇 열인지 데이터 크기 확인
dim(mpg)


