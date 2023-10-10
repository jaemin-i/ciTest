#베이스 이미지 선택
FROM python:3.11

RUN apt-get update -y
RUN apt-get install vim -y

#작업 디렉토리 설정
WORKDIR /app

#소스 코드 복사
COPY . /app

#의존성 설치
RUN pip3 install --no-cache-dir -r requirements.txt

#포트 노출
EXPOSE 8000

#Django 서버 실행
CMD python3 manage.py runserver 0.0.0.0:8000