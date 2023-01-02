# 개발팁

1. wrap 옵션  
   vscode에서 마우스 오른쪽 refactor를 클릭하면 wrap 옵션을 사용할 수 있다.  
   wrap with column의 경우 단축키 ctrl + . 을 하면 나온다.

# 설치방법

1. flutter 설치

```
참조 : https://docs.flutter.dev/get-started/install/windows
git 명령어 : git clone https://github.com/flutter/flutter.git -b stable
```

2. 환경변수 설정
   flutter 위치 설정
   ![환경변수](https://user-images.githubusercontent.com/23464811/210232033-e08d82b5-05ec-4201-9b4e-9d947bcf13e8.png)

3. powershell 실행
   flutter doctor 명령어로 모두 체크 확인
   ![flutter_docker](https://user-images.githubusercontent.com/23464811/210232386-b1d59461-fb33-41a8-bb00-8ef3a93a7abe.png)

4. 안드로이드 스튜디오 설치

5. vs 설치 후 c++ 설치
   vscode와 vs는 다름

6. vscode에서 flutter 패키지 설치

7. ctrl + shift + p 로 flutter:new_project로 프로젝트 실행

8. run을 통해 앱 실행

# 강의정리

1. Flutter Hello world
   hello world를 앱 중앙에 배치시켜보기
   MaterialApp > Scaffold > Center > Text

2. Widget Tree  
   widget이란 화면에 나타나는 것

3. Splash Screen 제작하기  
   첫 로딩 화면 만들기

    ```
    a. pubspec.yaml에 assets 설정하기
    b. assets 설정 후 pub get을 해줘야 한다.
    ```
