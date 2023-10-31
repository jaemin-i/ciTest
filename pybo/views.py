from django.shortcuts import render

# Create your views here.
from django.http import HttpResponse

def index(request):

    #ci 테스트하기용 주석
    return HttpResponse("안녕하세요 pybo에 오신 것을 환영합니다.!!@!@")
    #cd 테스트 주석