# Linux

### 기본 쉘 명령어

```
man # 메뉴얼
apt # 패키지 매니저
nano # 텍스트 에디터
sudo # 관리자 권한 실행
ls, cat, head, tail #파일 목록/내용 조회 
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
