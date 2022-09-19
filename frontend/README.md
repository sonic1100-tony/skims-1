# frontend

## 1. 초기설정

### 1.1. vscode 설치
   
[vscode](https://code.visualstudio.com/)


### 1.2. vscode plugin 설치 (선택사항)

[Vue Language Features (Volar)](https://marketplace.visualstudio.com/items?itemName=Vue.volar)

[Vue 3 Snippets](https://marketplace.visualstudio.com/items?itemName=hollowtree.vue-snippets)

[ESLint](https://marketplace.visualstudio.com/items?itemName=dbaeumer.vscode-eslint)

[Prettier ESLint](https://marketplace.visualstudio.com/items?itemName=rvest.vs-code-prettier-eslint)

[DotENV](https://marketplace.visualstudio.com/items?itemName=mikestead.dotenv)


### 1.3. nodejs 설치
  
* Node.js ( >=14.*)
* npm version 3+ ( or yarn version 1.16+) and Git.

[nodejs](https://nodejs.org/en/)

LTS버전으로 설치진행

### 1.4. yarn 설치
#### windows
https://classic.yarnpkg.com/en/docs/install#windows-stable 브라우저로 접속하셔서
Alternatives 누르시면 인스톨러 다운로드 받아서 yarn 설치진행 

#### Mac
$ npm install --location=global yarn

### 1.4. npm 명령어  

```
$ yarn install

# serve with hot reload at localhost:8080 by default.
$ yarn serve

# build for production
$ yarn build

# build for production and view the bundle analyzer report.
$ yarn build --report
```

## 2. 참고원본소스

[vuestic](https://vuestic.dev/)

## 3. 메뉴추가방법
### 3.1. router 추가
```
// /router/index.ts 항목 추가
// router 등록시 contextRoot/[등록path] 로 접근가능
{
  name: 'job',
  path: 'job',
  component: () => import('@/pages/biz/job/JobSearch.vue'),
},
```
### 3.2. menu 추가
```
// frontend/src/components/sidebar/NavigationRoutes.js 항목 추가
{
  name: 'job', // router Name과 매칭
  displayName: 'menu.job', // 표시 매뉴명 : frontend/src/i18n/kr.json 값 추가
  meta: {
    icon: 'vuestic-iconset-forms', // 표시 icon
  },
},
```
### 3.3. menu명 추가
```
// frontend/src/i18n/kr.json 항목 추가
"menu": {
  ...
  "job": "직업조회",
  ...
}
```

## 3. 데이터전달, 함수호출, 서버통신 방식

### 컴포넌트 간 데이터 전달, 함수 호출 방식
#### 1. 부모컴포넌트 -> 자식컴포넌트 데이터 전달방식 (단방향 데이터 바인딩)
vue props
https://vuejs.org/guide/components/props.html#prop-passing-details

#### 2. 자식컴포넌트 -> 부모컴포넌트 함수 호출 (부모컴포넌트로 이벤트전달)
vue Event emit
https://vuejs.org/guide/components/events.html

#### 3. 부모컴포넌트 -> 자식컴포넌트 함수 호출
vue ref
https://vuejs.org/guide/essentials/template-refs.html

### 서버와 통신 - ajax
axios 사용
https://www.koderhq.com/tutorial/vue/http-axios/

## 4.Front-End 샘플 추가
참고 소스 위치 
skims/frontend/src/pages/biz/job/

## 5.Docker build & run
```
docker build . -t skims-frontend
docker run -it -p 80:8080 skims-frontend
```

## 6.Rest API 주소 설정방식
```
# local 개발 시 사용하는 yarn serve 명령어는 .env.local 참조
# AWS 배포시 사용하는 Dockerfile은 .env.dev 내 VUE_APP_BASE_URL 참조
cosnt apiUrl = `${process.env.VUE_APP_BASE_URL}/api/detail/url`;
```
