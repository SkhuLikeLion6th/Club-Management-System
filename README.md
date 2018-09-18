# SKHU 단체(소모임 & 동아리) 활성 웹 서비스
### 3주 / 의사소통 / 주석

## Database Prototype
![DB](./img/skhu_club_db.png)

## TODO
* model 관계 설정 및 확인 (현재 Notice, Ad는 없음)
* 승래 - devise custom
* 진경 - Apply_Forms & Apply_Contents
* 현수 - Clubs & Club_Members & Options
* 결, 다은 - Front Prototype

## CRUD
* **C: Create**
* **R: Read**
* **U: Update**
* **D: Delete**

## Front-End
* 로그인 & 회원가입
* 회원 정보 수정 (RU View)
* 각 단체의 소개 (RU View)
* 지원 양식 (RU View) - 단체마다 다른 양식
* 현재 지원 가능 단체 모아보기 (R View)
* Notice & Ad (CRU View)
* 각 단체 회원 명단 현황 (R View)
* 각 단체 지원자 현황 (R View)
* Options Table (U View)
* 전체 회원 목록 (R View)
* 단체 등록 (C View)

## Back-End (기능 단위)
* 로그인, 회원가입, 로그아웃, 회원정보수정 기능  *완성(승래)
* 현재 지원 가능 단체 모아보기 R
* 각 단체의 Notice 게시판의 CRUD
* 통합 Ad 게시판의 CRUD
* 각 단체의 회원 명단 RD(Club Admin)        * 완성(현수)
* 각 단체의 소개 U (Club Admin)
* 각 단체의 지원 양식 U (Club Admin)        * 완성(진경)
* 각 단체의 지원자 조회 R (Club Admin)
* 각 단체의 Options Table U (Club Admin)    * 완성(현수)
* 전체 회원 목록 R (Super Admin)            * 완성(현수)
* 단체 CD (Super Admin)                     * 완성(현수)

## Author
* 김승래
    * devise 커스텀완료
    * 회원정보수정 완료
    * youtube 영상업로드 게시판 작성중
* 함진경
    * 지원 양식 작성, 수정 완료
    * 지원서 작성 완료
    * 지원내용 확인하는 거 할꺼임! 동아리 관리자만
* 박결
*   * login form 작업 예정 -> 끝
*   * sign_up form 작업 예정 -> 끝
*   * apply_content 작업 예정
*   
    반응형 보류 
<!--*  * 다은이가 만들어둔 index에 반응형 웹 입히기.-->
<!--*    1. nav 바 반응형 작업하기 ( 모바일 사이즈에서는 nav바를 슬라이드로 표현)-->
*       
*    

* 한현수
    * 단체 CD(사이트 관리자만 가능) 완성
    * 각 단체의 회원 명단록 RD(단체에 속해있는 일반 유저(p태그), 해당 단체 관리자 또는 사이트 관리자(a태그)) 완성
    * 전체 회원 목록 R(사이트 관리자만 가능) 완성
    * 옵션 테이블 U 완성
* 홍다은
*   * website 디자이너
*   * nav bar 작업(완료) -> 로고 포토샵으로 작업 후 이미지 교체 예정
*   * index 작업(완료)
*   * footer 작업(중)
