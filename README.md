# 개발팁

1. wrap 옵션  
   vscode에서 마우스 오른쪽 refactor를 클릭하면 wrap 옵션을 사용할 수 있다.  
   wrap with column의 경우 단축키 ctrl + . 을 하면 나온다.

2. stless를 입력하면 StatelessWidget이 자동완성된다.

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

4. row and column (layout)  
   SafeArea는 로딩바와 홈버튼 안쪽으로 들어오게 해준다.  
   MainAxisAlignment 사용해보기  
   crossAxisAlignment 사용해보기

    ```
    crossAxisAlignment의 경우 반대축이기 때문에
    Column widget의 경우 width를 최대(MediaQuery.of(context).size.width)로 잡아줘야 하고 Row widget의 경우 height를 최대로 잡아줘야 한다.
    ```

    mainAxisSize 사용해보기

    Expanded와 Flexible 사용해보기

    ```
    Expanded와 Flexible은 반드시 children 안에서 사용해야한다.

    Expanded -- 남는 공간 최대한 가져감 (flex는 남는 공간 비율)
    Flexible -- 남는 공간 버려짐
    ```

---

# 강의기반 목차

-   ## [프로젝트] 블로그 웹앱

    -   [프로젝트에 패키지 추가하기]
        ```
        pubdev : 공식 패키지
        flutter.dev : 공식 개발자
        ```
    -   [웹뷰 플러그인 업데이트에 의한 추가세팅]
    -   [WebView 사용해보기]
    -   [controller 사용해보기]
    -   [Android와 ios에서 http 프로토콜을 사용하는법]

-   ## [이론] StatefulWidget

    -   StatefulWidget 선언하기
        ```stful 자동완성
           StatelessWidget 만들고 변환시킬 수 있다.
        ```
    -   Life Cycle 확인하기
        ![생명주기](https://user-images.githubusercontent.com/23464811/211132656-c37c1271-da10-4f27-ba48-4e599fb7c274.JPG)
        ![파라미터가 바뀔때](https://user-images.githubusercontent.com/23464811/211132663-fa485f19-53c8-45b2-be68-1c860b55f5f9.JPG)
        ![setstate할때](https://user-images.githubusercontent.com/23464811/211132668-2a86c776-e302-42f8-8062-e33d9f0b847f.JPG)

    statelessWidget은 build 함수 한번 실행

-   ## [프로젝트] [★★☆☆☆] 전자액자

    -   ### PageView 위젯 사용해보기

-   ## [프로젝트] [★★☆☆☆] 만난지 며칠 U&I

    -   ### TextStyle 설정하기

-   ## [이론] Const Constructor

    ```
    const 생성자를 사용하는경우 setState를 했을 때
    build를 재실행하지 않아 메모리를 아끼는 장점이 있다.
    ```

-   ## [프로젝트] [★★☆☆☆] 쓸데없이 이쁜 랜덤숫자 생성기

-   ## [이론] Buttons

    buttonKind.dart

-   ## [이론] Navigation

    > ###
    >
    > 공부할 환경 세팅하기
    > Argument 전달하기
