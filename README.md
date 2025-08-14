# toon_flix

첫 Flutter 프로젝트

## 알게된 점
1. Widget
	Flutter로 만들어진 앱은  `widget`을 쌓아가며 만든 것이다. 제공하는 `widget`은 너무 많으나 실제로 많이 쓰이는 비율은 20% 내외라고 한다.
	모든 `widget`은 `build` 메서드를 사용해야 한다.

2. MaterialApp, CupertinoApp 
	앱에 기본 구조는 두 가지가 있다. 구글(Android)를 기반으로 하는 `MaterialApp	`과 애플(iOS)를 기반으로 하는 `CupertinoApp`이 존재한다.최상위 `widget`인 App을 빌드할 때는 위 둘 중에 하나를 선택해서 빌드해야 되는데, 일반적으로 `MaterialApp`이 쓰인다고 한다.
	그리고 어차피 Android, iOS에서 둘 다 지원하는 앱을 만들 경우에는 어떤 구조를 선택하든 다 커스텀할 것이라 상관 없다고 한다.


## 시행착오
1. 뒤에 `,`를 붙이고 저장하면 자꾸 사라지길래, `analysis_options.yaml` 파일에 아래 구문을 추가하여 해결했다.
	```yaml
	formatter: 
	  trailing_commas: preserve
	```