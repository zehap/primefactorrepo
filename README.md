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
      -----------------------------------------------------------------
      두 요소에 대한 조사를 해보았으나 실제 원인은 init.sh파일에 실행 커맨드를 입력하고 .sh파일의 종료와 함께 컨테이너가 종료되는 에러인듯
      init.sh를 사용하지 않고 php파일 을 ADD하는 방식으로 수정
      해봤지만 로컬에서는 정상동작하나 클러스터에 push하고 CrashLoopBackOff에러 발생 - 파일 형식이 php인 것. php.ini, nginx실행여부 연관있을듯
      php가 아니라 html로 작성해볼예정
