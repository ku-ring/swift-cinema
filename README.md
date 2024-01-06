#  🍿 SwiftCinema

버그를 찾아내 앱을 성공적으로 실행시켜보세요

> **COPYRIGHT © 2024 쿠링. ALL RIGHTS RESERVED.**

## 개요

SwiftCinema 는 쿠링에서 훌륭한 iOS 개발 멤버를 모시기 위해 개발한 오픈소스 프로젝트 입니다. 
이 앱에는 몇 가지 버그로 인해 앱이 실행되지 않거나 실행되어도 런타임 에러가 발생합니다.

> **미션: 이 앱이 정상적으로 동작할 수 있도록 버그를 찾아내주세요!**

버그는 총 **5개** 이고 관련 내용은 다음과 같습니다.
- SwiftUI
- HTTP Network
- Swift Concurrency
- Dynamic Library

버그를 찾아내는 과정에서 많은 iOS 지식을 얻을 수 있길 바랍니다!

### 꼭 읽어주세요!

👉🏼 [**시작가이드**](/시작가이드.md)

👉🏾 [**제출가이드**](/제출가이드.md)

위 가이드를 준수하지 않으면 코드 검증이 불가능 합니다.
 
### 개발 환경

이 프로젝트는 다음 개발환경을 준수하며 이는 실제 쿠링 iOS 개발 환경과 동일합니다.
- Xcode 15 (Swift 5.9 이상)

### 기술 스택
- SwiftUI
- Network (`URLSession`)
- Swift Concurrency
- Swift Package Manager

### 프로젝트 구성

SwiftCinema 는 `SwiftCinema` 라는 `.xcproj` 와 `swift-cinema` 라는 스위프트 패키지로 구성되어 있습니다.

```
📁 SwiftCinema
|___ 📁 SwiftCinema # 앱프로젝트 소스
|___ 📄 SwiftCinema.xcodeproj
|___ 📁 swift-cinema # 스위프트 패키지
``` 

## 모집대상
- 건국대학교 학부생 (휴학 상관 없음)
- 5학기 이하 수강한 자 (24년 1월 기준 )
  - 단, 해당하지 않더라도 졸업논문/졸전 등으로 인해 1년 동안의 쿠링 활동에 제약이 있지 않으면 지원 가능합니다.
- 2024년 한 해 동안 성실하게 쿠링 활동이 가능한 자

## 라이센스
이 오픈소스 프로젝트는 [MIT 라이센스](/LICENSE.txt)를 준수합니다.

## 연락처
문의사항이나 이슈 레포트는 인스타그램 [@kuring.konkuk](https://instagram.com/kuring.konkuk) 또는 이메일 [kuring.korea@gmail.com](mailto:kuring.korea@gmail.com) 으로 해주시면 빠르게 답변드리겠습니다.

## 기여자

### 개발
- [x_0o0](https://github.com/x-0o0)

### 검증 및 프로세스 개선에 도움을 주신 분들
- [mininny](https://github.com/mininny)
- [zbqmgldjfh](https://github.com/zbqmgldjfh)
- [famous90](https://github.com/famous90)
- [chaneeii](https://github.com/chaneeii)
- [gaeng2y](https://github.com/gaeng2y)
- [Jager-yoo](https://github.com/Jager-yoo)
- [dayo2n](https://github.com/dayo2n)
- [ValseLee](https://github.com/ValseLee)

## 참고
- https://developer.apple.com/documentation/swiftui/migrating-from-the-observable-object-protocol-to-the-observable-macro
- https://developer.apple.com/documentation/swift/concurrency
- https://developer.apple.com/library/archive/documentation/DeveloperTools/Conceptual/DynamicLibraries/100-Articles/OverviewOfDynamicLibraries.html
