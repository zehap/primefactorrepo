# primefactorrepo

Usage:

  1. Cloning git and build image "docker build . -t {imagename}"
  2. Check the image "docker images"
  3. Run docker by image "docker run -it -p 80:80 {imagename}"
  Thx.
  
  

Issue Report:
  클러스터의 배포 중 컨테이너 및 Pod에서 CrashLoopBackOff 에러 발생
      Pod가 생성되고 종료되기를 반복
      로그 조회 결과 1개 정도의 pod가 completed 상태이긴 하나 대부분 crash...
      예상 원인 - hostport와 Pod의 port주소가 같을 경우 / Config파일의 Poplicy 오류(?!)
      
      공식 문서에는 log를 조회해보라고만 하고 조치사항에 대해 언급이 없음.
      다른 유저들의 경우 네트워크 드라이버 / 서버 리소스 고갈(configmap 설정 제거로 조치) / OOM 으로 인한 kernel의 종료 등(22:40)
