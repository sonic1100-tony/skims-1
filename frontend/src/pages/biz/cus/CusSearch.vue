<template>
  <div class="form-elements">
    <CusSearchForm ref="searchForm" @search="search"/>
    <br/>
    <CusSearchTable :todoList="todoList" @setSelectedCus="setSelectedCus" />
  </div>
</template>

<script>
import axios from 'axios'
import CusSearchForm from './CusSearchForm'
import CusSearchTable from './CusSearchTable'

export default {
  components: {
    CusSearchForm,
    CusSearchTable
  },
  data () {
    return {
      searchForm:{
        searchCusName: true,
        searchCusDetailName: true,
        hnglCtmnm: '',
        ctmNo: '',
      },
      todoList: [],
      selectedCus: null,  //선택된 고객정보
    }
  },
  methods: {
    search ( searchFormData ) {
      console.log('search', searchFormData);
      if(searchFormData.hnglCtmnm == '' && searchFormData.ctmNo == ''){
        alert("고객명 또는 고객번호를 입력하여주세요.");
        return;
      }

      let reqSearchUrl = "";
      const hnglCtmnm = searchFormData.hnglCtmnm;
      const ctmNo = searchFormData.ctmNo;

      if(hnglCtmnm != '' && ctmNo != ''){
        //고객번호, 고객한글명으로 조회_/cusFindCtmno/{ctmno}/{hnglCtmnm}
        reqSearchUrl = 'http://localhost:8083/cus/findByCtmnoAndHgNm/'+searchFormData.ctmNo+'/'+searchFormData.hnglCtmnm;
      }else if(hnglCtmnm == '' && ctmNo != ''){
        //고객번호 조회_/cusFindCtmno/{ctmno}
        reqSearchUrl = 'http://localhost:8083/cus/cusFindCtmno/'+searchFormData.ctmNo;
      }else if(hnglCtmnm != '' && ctmNo == ''){
        //고객명으로 조회_/cusFindNm/{hnglCtmnm}
        reqSearchUrl = 'http://localhost:8083/cus/cusFindNm/'+searchFormData.hnglCtmnm;
      }else{
        alert("고객명 또는 고객번호를 입력하여주세요.");
        return;
      }

      axios
        .get(reqSearchUrl)
        .then(response => {
          console.log("response", response);
          this.todoList = response.data.slice(0, 8);
        })
        .catch(error => {
          console.log(error)
          this.errored = true
        })
        .finally(() => this.loading = false)

        this.clearSearchForm();
    },
    clearSearchForm(){
      // 자식함수 호출 ref로 자식컴포넌트 지정
      this.$refs.searchForm.initData();
    },
    setSelectedCus( selectedCus ){
      console.log('selectedCus', selectedCus);
      this.selectedCus = selectedCus;
    },
    sendSelectedCus(){
      console.log('send selectedCus', this.selectedCus);
      this.$emit("sendSelectedCus", {
        ...this.selectedCus,
      });
    }
  },

  created () {
    console.log("created...");
  }
}
</script>

<style lang="scss">
  .markup-tables {
    .table-wrapper {
      overflow: auto;
    }

    .va-table {
      width: 100%;
    }
  }
</style>
