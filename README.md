# WonduMall (원두몰)

- **커피원두 및 커피머신을 판매하는 쇼핑몰**
- 역할 - **팀원** (상품 등록, 상품 카테고리, 상품 페이지, 장바구니)

## 00. 프로젝트 개요

- **기본 정보**
  - 팀 프로젝트(총 4명)
  - 팀 구성방법 - 전공자 2명과 비전공자 2명으로 구성
- **프로젝트 기획 상세**
  - 사업자가 커피 상품을 등록하고 고객이 상품을 구매할 수 있도록 제공하는 중개 서비스
  - 역할자 - 관리자, 고객, 사업자
  - 참고한 서비스: 일반 커피 쇼핑몰
- **개발 기간**
  - 2022.07.05 ~ 2022.08.02
- **사용 기술 및 라이브러리**
  - Spring Framework 5.3.6
  - Oracle JDK 11.0.15
  - Spring Tool Suite 3.9.18
  - Spring Security 5.7.2
  - OAuth 2.0
  - Apache Tomcat 9
  - import 1.1.5 (결제API)
  - MariaDB 10

## 01. 주요 코드

- **[상품컨트롤러.java](https://github.com/newbieccc/wondumall/blob/main/src/main/java/com/wondumall/Controller/ProductController.java)**
- **[상품_SQL.xml](https://github.com/newbieccc/wondumall/blob/main/src/main/resources/mapper/product_SQL.xml)**
- [상품등록.jsp](https://github.com/newbieccc/wondumall/blob/main/src/main/webapp/WEB-INF/views/productAdd.jsp)
- [상품카테고리.jsp](https://github.com/newbieccc/wondumall/blob/main/src/main/webapp/WEB-INF/views/category.jsp)
- [상품페이지.jsp](https://github.com/newbieccc/wondumall/blob/main/src/main/webapp/WEB-INF/views/productDetail.jsp)
- [장바구니.jsp](https://github.com/newbieccc/wondumall/blob/main/src/main/webapp/WEB-INF/views/cart.jsp)

## 02 주요 화면

- **상품 등록**

  ![productAdd](/src/main/webapp/resources/screenshot/productAdd.png)

- **상품 카테고리**

  ![category](/src/main/webapp/resources/screenshot/category.png)

- **상품 페이지**

  ![productDetail](/src/main/webapp/resources/screenshot/productDetail.png)

- **장바구니**

  ![cart](/src/main/webapp/resources/screenshot/cart.png)
  
## 04. 돌이켜보니 좋았던 점

- 쇼핑몰이라는 주제로 프로젝트에 도전 했던 점.
  - `실제 서비스를 하게 된다면?`이라는 생각을 가지며 사용자 관점으로 작업했던 점이 좋았습니다.
- 각자 맡은 부분을 확실히 구분하고 담당하며 작업했기에 큰 트러블이 없었던 점.
  - [Drift](https://github.com/newbieccc/Dripft) 이전 프로젝트를 작업 당시 기능 담당이 겹치다 보니 작업하고 있던 기능이 다른 팀원 또한 같은 기능을 작업하고 있었습니다.
  그래서 이전 팀원 간의 답답함이 있었는데, 이번 Spring 프로젝트는 작업 담당을 확실히 구분했기에 트러블이 없었습니다.
- 학원 수업에서 배우지 않았던 기능을 배우면서 사용하려 했던 점.
  - 기본적인 로그인, 회원가입, 게시판 만들기만 배웠다면 `최근 본 상품` 같은 Cookie에 데이터를 저장해서 보여주는 기능을 구현하려 했던 점.

## 05. 돌이켜보니 아쉬웠던 점

- xss 공격을 고려하지 않고 만들었던 점.
  - 크로스 사이트 스크립팅(Cross Site Scripting, XSS)에 대한 지식이 부족하였습니다. 이 공격으로 웹사이트 변조, 피싱 공격 등이 이뤄진다는 것을 알게 되었습니다.
- 완성도가 상용화 하기에는 부족했던 점.
  - 평소 이용하는 쇼핑몰에 비하면 기능 면이나 UI를 비교했을 때 고객 입장에서 매력보다는 불편함과 낯선 쇼핑몰이라고 생각합니다.
- 같은 팀원이 봐도 쉽게 알아볼 수 있도록 주석을 친절하게 달지 못한 점.
  - 팀원에게 코드 리뷰 시 쉽게 볼 수 있도록 주석을 달면 좋았을 텐데, 그렇지 못한 결과 리뷰하며 자신도 헷갈렸던 점이 아쉬웠습니다. 
- [상품컨트롤러.java](https://github.com/newbieccc/wondumall/blob/main/src/main/java/com/wondumall/Controller/ProductController.java) 작업에서 `상품`과 `장바구니` 구분을 하지 못하고 한 번에 다 담아서 작업했던 점.
  - 작업 후 돌아보니 코드 정리가 안 되는 점이 아쉬웠다.
