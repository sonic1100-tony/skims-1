# skims

git clone https://github.com/ByounggwanLee/skims.git

***
## Swagger API명세 접근주소
### 로컬환경 
* [계약 (http://localhost:8081/cnr/swagger-ui/index.html)](http://localhost:8081/cnr/swagger-ui/index.html)
* [고객 (http://localhost:8081/cus/swagger-ui/index.html)](http://localhost:8081/cus/swagger-ui/index.html)
* [재무회계 (http://localhost:8081/fin/swagger-ui/index.html)](http://localhost:8081/fin/swagger-ui/index.html)
* [보험상품기본 (http://localhost:8081/igd/swagger-ui/index.html)](http://localhost:8081/igd/swagger-ui/index.html)
* [입출금 (http://localhost:8081/pay/swagger-ui/index.html)](http://localhost:8081/pay/swagger-ui/index.html)
* [설계 (http://localhost:8081/pln/swagger-ui/index.html)](http://localhost:8081/pln/swagger-ui/index.html)
* [심사관리 (http://localhost:8081/udw/swagger-ui/index.html)](http://localhost:8081/udw/swagger-ui/index.html)

### 2022-07-25 수정 사핳(이병관)
1. 프로그램 구조
   a. controller : Front-End와 Back-End 의 접점
      1) Restcontroller의 규칙을 따름
        a. get(조회), post(신규), put/patch(수정), delete(삭제)
       b. 키값에 대한 단건처리는 1건의 class object을 return
       c. 여러건 처리는 pageable로 list class objects과 page정보를 전송
   b. dto : 각 서비스 layer간의 필요한 전문정의
      1) front-end와 controller사이의 전문
     2) controller와 service사이의 전문
     3) mybatis : mapper와 db간 entity에 없는 object 필요시 전문
   c. domain : Database 처리를 위한 서비스
      1) service : 여러테이블 또는 복잡한 로직이 필요한 경우 생성(controller이름와 매칭되도록 작성)
      2) entity : db table의  Java Class 
      3) repository : db table의 영속성 처리을 위한 Class( 입력/조회/수정/삭제 ) - 우린 JpaRepository을 사용
      4) listener : 테이블의 조회 후, 입력/수정/삭제 전후 처리할 로직을 구현하는 Class     
     
2. swagger적용
   a. 프로그램 구동 후
   b. http://localhost:8081/skimscnr/swaager-ui.html 접속
      1) 현재까지 작성된 Controller 확인 및 테스트 가능
     2) Table기준 5개의 기능제공
        a) post : 신규데이터 등록
       b) get : 
          - 전체데이터 조회 : 
           * sort는 삭제 또는 정확한 컬럼명 입역
           * size 1은 Page당 1건을 의미
           Pageable 항목 : 
           {
                 "page": 0,
                 "size": 1,
                 "sort": [
                   "string"
                 ]
              }
         - Primary키 조회
           hcallifhists/{histSeqNum}
           테이블명s/primary키
       c) put : 해당키의 모든 컬럼 Update
         d) patch : 해당키의 전송 컬럼만 Update
         e) delete : 해당키의 데이터 삭제
     3) schemas을 통해 테이블 정보 확인 가능

3. JPQL 처리
   a. 복잡한 Query을 처리해햐 하는 경우 사용(Join, 다건 수정/삭제)
   b. Repository에 정의하여 사용  Repository에 샘플 코드 주석처리 