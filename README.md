# Linux
### 용량 확인하기
```
df -h
```

### 하위 폴더 사용량 확인하기
```
du -sh *
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

### LS 옵션

```
ls # 파일명만
ll # 파일명 + user 정보 + 권한
ls | wc -l # 파일 개수
ls -lt # 내림 차순
ls -ltr # 오름 차순
```

### Process 죽이기

```
kill -9 PID (강제 종료)
kill -INT PID (권장)
```

### Error msg 확인하기

```
dmesg|grep sd
```
