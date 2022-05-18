# xargs : 처음 입력값의 출력 결과를 인자로 다음 명령어의 입력값으로 사용하는 것


## 예제

```
find . -type f | xargs -i mv "{}" ../
```

### File Type이 일반 파일(f)인 것을 모두 찾고 결과물 {}를 상위 폴더 ../ 로 이동 mv 하라

### exec를 사용할 수 있지만 xargs가 더 빠르다고 함