# 자동 스크롤 Flutter 앱

이 앱은 Flutter로 개발된 자동 스크롤 데모 애플리케이션입니다.

## 주요 기능

- 3초 간격으로 자동 스크롤
- 화면 터치 시 스크롤 일시 정지
- 앱바의 재생/일시정지 버튼으로 자동 스크롤 제어
- 스크롤이 끝에 도달하면 자동으로 처음으로 이동

## 구조

```
lib/
├── main.dart                # 앱 진입점
├── screens/
│   └── auto_scroll_page.dart # 자동 스크롤 페이지
└── widgets/
    └── scroll_content.dart   # 스크롤 컨텐츠 위젯
```

## 설치 및 실행

1. Flutter 개발 환경 설정이 필요합니다.
2. 프로젝트를 클론합니다:

```bash
git clone https://github.com/[사용자명]/flutter_scroll.git
```

3. 의존성 패키지를 설치합니다:

```bash
flutter pub get
```

4. 앱을 실행합니다:

```bash
flutter run
```

## 사용 방법

- 앱을 실행하면 자동으로 스크롤이 시작됩니다
- 화면을 터치하고 있으면 스크롤이 일시 정지됩니다
- 앱바의 재생/일시정지 버튼으로 자동 스크롤을 제어할 수 있습니다

## 앱 심사용 개인정보 처리방침 설정 방법

1. docs 디렉토리에 privacy-policy.html 파일을 생성합니다.

2. GitHub repository의 Settings에서:
   - 상단의 `⚙️ Settings` 클릭
   - Source를 `Deploy from a branch` 선택
   - Branch를 `master`, 폴더를 `/docs` 선택
   - Save 클릭

3. 몇 분 후 다음 URL에서 개인정보 처리방침 확인 가능:
   - https://[GitHub사용자명].github.io/flutter_scroll/privacy-policy.html
   - 예: <https://steveshp.github.io/flutter_scroll/privacy-policy.html>

이 URL을 앱 스토어 제출 시 개인정보 처리방침 URL로 사용하면 됩니다.
