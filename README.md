# Linux

### 기본 쉘 명령어

```
man # 메뉴얼
apt # 패키지 매니저
nano # 텍스트 에디터
sudo # 관리자 권한 실행
file # file 정보 보기
which # 명령어 위치 보기
ls, cat, head, tail #파일 목록/내용 조회 
history #명령어 내역 조회 # !16 16번째 history 실행
```

### 용량 확인하기
```
df -h
```

###  폴더 사용량 확인하기
```
du -sh * #하위 폴더 포함
du --max-depth=1 # depth가 1인 현재 폴더만 
```

### SFTP Windows -> Linux 전송

```
sftp loginID@211.211.211.211 ( IP ADRESS)
put File.exe (FileName)
mput *.exe # 복수 파일 전송
```

### SCP Linux -> Linux 전송

```
scp -r serverid@111.222.222.111:/home/working/etc/ ./ #현재 폴더를 원격 경로/etc/로 모두 이동
scp * serverid@111.222.111.222:/home/ #현재 경로의 모든 파일을 원격 경로로 이동 (너무 많은 request로 reject 당할 수도 있음)
```

### File 찾기

```
find -name '.exe'
```

### File 정렬

```
sort -k 1 -nr # -k : 첫 번째 Field 기준으로 정렬, n : 숫자로 정렬, r : 역순 정렬
```

### LS 옵션

```
ls # 파일명만
ll # 파일명 + user 정보 + 권한
ls | wc -l # 파일 개수
ls -lt # 내림 차순
ls -ltr # 오름 차순
ls -R # 하위 폴더 모두 검색
ls -u # 정렬 하지않고 빠르게
ls -u | head -5 # 정렬하지 않고 빠르게 5개만
```

### 파일 변경내역

```
# 특정 시점 이후로 변경된 파일 내역
find -type f -newermt '2022-12-19'
```

### Process 죽이기

```
kill -9 PID (강제 종료)
kill -INT PID (권장)
```

### Error msg 확인하기

```
dmesg|grep sd # sd 문자열을 포함하는 
```

### grep 활용하기

```
grep '22:35:00' filename.log #filename.log 특정 시간 로그를 보고 싶을 때
cat filename.log | grep '22:35:00'
```

### 환경변수

```
echo $PATH #파일 실행할 때 경로없이 실행하려면 $PATH에 경로 추가해야 
echo $SHELL
```

### 출력 리디렉션

```
ps > result #ps에 출력될 내용을 result에 저장
ps >> result # result라는 파일이 없으면 만들고 이미 내용이 있으면 추가로 저장
ls /aassss 2> result #ls에서 출력되는 error msg를 result에 저장
```

### 입력 리디렉션

```
cat > result << EOF # EOF라는 입력이 나올 때 까지 파일 내용 입력
```

### Background 에서 명령 실행

```
nohup python np.py > /dev/null 2>&1 & #출력을 무시하면서 np.py라는 파일을 백그라운드에서 실행행

```
