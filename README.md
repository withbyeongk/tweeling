# Tweeling
![image](https://user-images.githubusercontent.com/76987021/212909096-4b10f3cb-f8a2-463b-9856-df303e087578.png)


- 주제 : 셀럽 굿즈 쇼핑몰

- 수행기간 : 2022년 10월 05일 ~ 2022년 11월 17일 (약 5주)

- 개발 인원 : 6명

- 기여도 : 20%

- 담당 역할 : 프로젝트 관리, 회의 진행, 진행 상황 조율, DB 설계 및 관리, 팀원 소스 머지 마이페이지 및 1:1문의 게시판 구현

- 전체 기능 : <br>

  +	로그인, 로그아웃, 회원가입
  +	상품 등록 및 수정, 삭제, 상품 판매, 상품 리뷰 작성
  +	장바구니 추가 및 삭제, 부분 및 전체 결제
  +	**주문 내역 기간별 조회, 관심 상품 조회**
  +	이벤트 글 등록 및 수정, 삭제, 이벤트 추첨
  +	**1:1 문의 글 등록 및 수정, 삭제, 댓글작성 및 삭제**
  +	찾아오는 길(지도 API이용), 상품 검색

- ER Diagram 

![image](https://user-images.githubusercontent.com/76987021/212905112-2858a2f1-6744-46e5-a7bf-36505b7861c3.png)

- DB 설계 시 고려한 점 :

   개발 성격 상 공부 목적이므로 개발을 하면서 DB가 수정될 수 있다는 점과 최종적으로 소스를 머지할 경우을 고려하여 각자 사용하는 DB를 분리하려고 노력했습니다.<br>
   상품 담당 / 장바구니, 구매 담당 / 공지사항 게시판 담당 / 문의 게시판 / 이벤트 게시판 / 메인 페이지 등으로 구분하여 최대한 각자가 자신의 생각대로 DB를 수정하며 개발할 수 있도록 했습니다.<br><br>

---
<br>
# 담당 기능 설명 : 

- **마이페이지**<br>
  : 페이지 상단에 해당 회원의 관심 셀럽의 이미지가 표시되며, 해당 회원의 주문 내역, 쿠폰 등 정보가 표시됩니다.<br>
  우측에 사이드바를 배치하여 편리하게 매뉴를 이동할 수 있도록 하였습니다. <br>
  마이페이지의 메인에는 해당 회원의 가장 마지막 주문 내역과 관심상품들이 표시됩니다.<br>

![image](https://user-images.githubusercontent.com/76987021/212918367-34376753-13e2-4d1d-bc0c-573faa196a52.png)

- **기간별 주문 내역 조회**<br>
  : 오늘/1주일/한달/세달/여섯달 버튼을 클릭하여 기간별 주문조회를 할 수 있습니다. 또한 시작일과 종료일을 설정하여 조회할 수도 있습니다.<br>
  주문 내역의 아래쪽에는 가장 마지막 주문의 상품 정보를 보여줍니다.<br>

![image](https://user-images.githubusercontent.com/76987021/212919924-1cb543fb-dc07-497e-8189-758df8c26050.png)

- **주문 내역 상세 조회**<br>
  : 주문한 상품들을 보여주며 리뷰를 등록 페이지로 연결합니다.<br>
  
![image](https://user-images.githubusercontent.com/76987021/212921095-76781d16-c0e0-486f-a5c0-737fed51fa4b.png)


- **관심 상품 조회**<br>
  : 해당 회원이 등록한 관심 상품 내역을 보여줍니다.<br>
  
![image](https://user-images.githubusercontent.com/76987021/212924573-228bef87-7aa9-4709-a07e-ad818eaa8606.png)

- **1:1문의글과 댓글의 조회, 등록, 수정, 삭제**<br>
  : 1:1 문의글을 조회, 등록, 수정, 삭제할 수 있으며, 댓글을 등록하고 삭제할 수 있습니다.<br>

![image](https://user-images.githubusercontent.com/76987021/212924943-98e33163-5ed9-40d4-ab6e-9e9956e6bb71.png)<br>
![image](https://user-images.githubusercontent.com/76987021/212925221-c4114a4d-6f68-4072-ae1f-725e2333c3d8.png)<br>
![image](https://user-images.githubusercontent.com/76987021/212925306-893a67af-0c9b-416d-aa4f-ff0757486e75.png)<br>

<br>
---
<br>

# 타팀원 기능 설명 : 

- 회원가입   - 이XX 팀원 담당 기능<br>
  : 관심 셀럽을 설정할 수 있으며, 회원의 정보를 입력하여 회원가입을 할 수 있습니다.

![image](https://user-images.githubusercontent.com/76987021/212926562-2e1b5117-d855-4955-a701-79d516aae9c3.png)
네비바의 사람 아이콘을 클릭하면 위와같이 Login과 Join을 클릭할 수 있도록 영역이 생깁니다.<br>
<p align="center">
<img src="https://user-images.githubusercontent.com/76987021/212926809-ddc5353d-6b6c-4b2a-aaed-cac2d3101373.png">
<img src="https://user-images.githubusercontent.com/76987021/212926964-6d0c4929-1d8c-4956-919e-9f9223327628.png">
<br>
</p>

- 상품 조회    - 배XX 팀원 담당 기능<br>
  : 우측의 사이드바를 두어 편리하게 메뉴를 이동할 수 있도록 하였으며, 드롭다운 선택버튼을 사용하여 최신순/가격순/판매순으로 상품을 정렬하는 기능을 추가하였습니다.<br>
  
![image](https://user-images.githubusercontent.com/76987021/212909447-80e5899f-33f1-4f53-b75b-5e4a7e5c5b14.png)

- 상품 등록, 수정, 삭제    - 배XX 팀원 담당 기능<br>
  : 해당 상품의 셀럽, 카테고리, 상품명, 가격, 이미지 등을 입력할 수 있으며, 상품 수정 및 삭제할 수 있습니다.<br>
  
![image](https://user-images.githubusercontent.com/76987021/212912568-a9d3b575-a384-48d7-8875-73f5fcba86ee.png)
<br>
![image](https://user-images.githubusercontent.com/76987021/212912959-4718e21a-f466-4f3f-bada-287accc0b1cb.png)

- 상품 리뷰 등록   - 배XX 팀원 담당 기능<br>
  : 구매한 상품의 리뷰를 작성할 수 있고, 해당 상품의 상세 페이지에 리뷰가 표시됩니다.<br>
  
![image](https://user-images.githubusercontent.com/76987021/212921410-69750170-7146-4c27-ade4-6d8c54d17b20.png)
<br>
- 상품 상세 조회, 장바구니에 상품 추가, 상품 구매    - 배XX 팀원 담당 기능<br>
  : 상품의 상세 설명 페이지를 보여주며, 상품을 장바구니에 추가하거나 구매할 수 있습니다.<br>
  
![image](https://user-images.githubusercontent.com/76987021/212909870-a2bd895e-a12c-4e13-9d6c-ae63a9478a8f.png)
<br>
- 장바구니 기능     - 김XX 팀원 담당 기능<br>
  : 선택한 상품 삭제 및 개별 상품 삭제, 선택한 상품 및 개별 상품 구매, 관심 상품 추가, 전체 상품 구매를 할 수 있습니다.<br>
  또한 상품의 수량을 변경할 수 있고, 상품 수량변경 및 상품 선택 시 총 구매금액이 변경됩니다.<br>
  
![image](https://user-images.githubusercontent.com/76987021/212910090-e50da334-8d19-4036-94dd-f3f168af9119.png)
<br>
- 구매 기능    - 김XX 팀원 담당 기능<br>
  : 주문자 정보를 입력하여 상품을 구매할 수 있습니다.<br>
  
![image](https://user-images.githubusercontent.com/76987021/212910432-22120e13-d8ea-49c0-ad82-f6ff80ea7aee.png)
<br>
- 상품 검색 기능   - 김XX 팀원 담당 기능<br>
  : 전체 상품을 키워드로 검색할 수 있습니다.<br>
  
![image](https://user-images.githubusercontent.com/76987021/212913747-e5006c68-53e0-43b1-804e-51c2e0bdea71.png)
<br>
- 이벤트 조회, 등록, 수정, 삭제    - 홍XX 팀원 담당 기능<br>
  : 기간을 지정하여 이벤트를 등록할 수 있습니다. 기간이 지나면 해당 이벤트에 참여가 불가능합니다.<br>
  이벤트 진행 중에 일반 회원들은 이벤트 참여가 가능하고 랜덤으로 회원들을 추첨하는 기능도 있습니다.<br>
  
![image](https://user-images.githubusercontent.com/76987021/212911400-45bff4ac-2141-4de1-ad5f-29d52659faeb.png)
<br>
