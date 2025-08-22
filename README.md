# toon_flix

첫 Flutter 프로젝트

## 알게된 점
1. Widget
	Flutter로 만들어진 앱은  `Widget`을 쌓아가며 만든 것이다. 제공하는 `Widget`은 너무 많으나 실제로 많이 쓰이는 비율은 20% 내외라고 한다.
	모든 `Widget`은 `Build` 메서드를 사용해야 한다.

2. MaterialApp, CupertinoApp 
	앱에 기본 구조는 두 가지가 있다. 구글(Android)를 기반으로 하는 `MaterialApp	`과 애플(iOS)를 기반으로 하는 `CupertinoApp`이 존재한다.최상위 `Widget`인 App을 빌드할 때는 위 둘 중에 하나를 선택해서 빌드해야 되는데, 일반적으로 `MaterialApp`이 쓰인다고 한다.
	그리고 어차피 Android, iOS에서 둘 다 지원하는 앱을 만들 경우에는 어떤 구조를 선택하든 다 커스텀할 것이라 상관 없다고 한다.
3. Row, Column
	레이아웃은 보통 `Row`와 `Column`과 같은 `Widget`들로 쌓아가면서 구성하는 거 같다. 웹과 마찬가지로 위에서 아래로 좌측에서 우측으로 쌓는다. 
4. Padding
	웹에서 `Padding`은 CSS 속성에 해당하는 반면, 여기서는 하나에 `Widget`이다. `Padding`을 적용할 `Widget`을 `Padding`의 `child` 파라미터에 넘기고, `padding` 파라미터에 `EdgeInsets`에 생성자들을 사용하면 된다. CSS에서 `padding` 속성과 같이 한쪽 면이나 수평 및 수직 또는 모든 면에 적용할 수 있는 여러 생성자를 제공한다.
5. MainAxisAlignment, CrossAxisAlignment
	둘 다 정렬과 관련된 클래스다. `Row`와 `Column`을 정렬할 때 쓰인다. `MainAxisAlignment`는 주축을 기준으로 `CrossAxisAlignment`는 횡축을 기준으로 정렬이 된다. 예로들어 `Row`에서 주축은 가로이고 횡축은 세로며, `Column`에서는 그 반대인 주축은 세로고 횡축은 가로다.
6. Code Actions
	작성되어 있는 `Widget`들에 `Padding`을 주거나 `Container` 같은 것으로 감싸기 위해선, 코드를 잘라내기 한 뒤에 삽입할 `Widget`을 작성하고 `children`이나 `child` 파라미터에 잘라낸 코드를 삽입해야만 한다. 하지만 작업할 곳에 커서를 두고 전구(코드 작업 표시)를 누르거나 `Ctrl` + `.` 키를 누르면 그런 일련의 작업들을 도와주는 기능을 제공해준다.
7. ClipBehavior
	`Container Widget`이 가지고 있는 속성이다. 해당 속성은 자식 `Widget`이 부모 영역을 넘어갈 때 그려지는 방식을 제어한다. `Clip.hardEdge` 값은 CSS에서 `overflow: hidden`과 같다고 보면 된다.
8. Transform
	해당 `Widget`으로는 아직 확대, 축소와 위치 옮기는 것만 해봤다. 해당 `Widget`을 사용하면 기존 자신의 영역을 그대로 차지하지만 크기나 위치를 변경할 수 있다. 확대와 축소는 `Transform.scale` 생성자를 사용하고 위치 설정은 `Transform.translate`를 사용한다.
9. Private member variables
	클래스에서 멤버 변수명 앞에 `_`를 붙이면 `private` 멤버 변수가 된다.
10. SingleChildScrollView
	`Widget`이 흘러넘쳐서 스크롤을 넣고 싶으면 `SingleChildScrollView`로 감싸면 된다.
11. StatefulWidget, setState
	`StatefulWidget`은 상태 값을 가지고 그 값이 변경 됨에 따라 다시 렌더링을 해준다. 다시 렌더링을 해주기 위해선 `setState` 함수를 사용하는데, 단순히 해당 함수를 호출하면 해당 `Widget` 내에 있는 `build` 메소드를 재실행한다. `setState`	함수 내에 실행문도 작성할 수 있으며, 해당 실행문이 다 끝난 이후에 `build` 메소드가 재실행되는 형식이다.


## 시행착오
1. 뒤에 `,`를 붙이고 저장하면 자꾸 사라지길래, `analysis_options.yaml` 파일에 아래 구문을 추가하여 해결했다.
	```yaml
	formatter: 
	  trailing_commas: preserve
	```