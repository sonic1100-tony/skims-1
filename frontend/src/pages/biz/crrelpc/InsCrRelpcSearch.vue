<template>
  <div class="form-elements">
    <InsCrRelpcSearchForm ref="searchForm" 
      @search="search" 
      @btnRowAdd="btnRowAdd"
      @btnRowDelete="btnRowDelete"
    />
    <br/>
    <InsCrRelpcSearchTable  ref="searchTable" :todoList="todoList" />
    <br/>
    <InsCrRelpcEventForm ref="eventForm" 
      @dataSave="dataSave"
      @dataDelete="dataDelete"
      @btnClose="btnClose"
    />
  </div>
</template>

<script>
import axios from 'axios'
import InsCrRelpcSearchForm from './InsCrRelpcSearchForm'
import InsCrRelpcSearchTable from './InsCrRelpcSearchTable'
import InsCrRelpcEventForm from './InsCrRelpcEventForm'

export default {
  components: {
    InsCrRelpcSearchForm,
    InsCrRelpcSearchTable,
    InsCrRelpcEventForm,
  },
  data () {
    return {
      searchForm:{
        plyno: '',
      },
      todoList: [], 
      eventForm:{
        plyno: '',
      },
    }
  },
  methods: {
    search ( searchFormData ) {
      console.log('plyno : ', searchFormData.plyno);

      //const url = 'http://localhost:8082/cnr/inscrrelpcs/'+searchFormData.plyno;
      const url = `${process.env.VUE_APP_CNR_URL}/cnr/inscrrelpcs/${searchFormData.plyno}`;

      console.log('url : ' , url);

      axios
        .get(url)
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
    dataSave ( eventFormData ) {
      console.log(' SAVE plyno : ', eventFormData.plyno);
      console.log(' SAVE eventFormData : ', eventFormData);

      //const url = 'http://localhost:8082/cnr/inscrrelpcs/';
      const url = `${process.env.VUE_APP_CNR_URL}/cnr/inscrrelpcs/`;
     
      console.log('url : ' , url);

      axios
        .post(url, eventFormData)
        .then(response => {
          console.log("response", response);
          //this.todoList = response.data.slice(0, 8);
        })
        .catch(error => {
          console.log(error)
          this.errored = true
        })
        .finally(() => this.loading = false)

        this.clearSearchForm();
    },
    dataDelete ( eventFormData ) {
      console.log(' DELETE aid : ', eventFormData.aid);

      //const url = 'http://localhost:8082/cnr/inscrrelpcs/'+eventFormData.aid;
      const url = `${process.env.VUE_APP_CNR_URL}/cnr/inscrrelpcs/${eventFormData.aid}`;

      console.log('url : ' , url);

      axios
        .delete(url)
        .then((response) => {
          console.log("response", response);
          //this.todoList = response.data.slice(0, 8);
        })
        .catch(error => {
          console.log(error)
          this.errored = true
        })
        .finally(() => this.loading = false)

        this.clearSearchForm();
    },
    btnClose () {
      console.log('btnClose');
    },
    btnRowAdd () {
      console.log('btnRowAdd');
      this.$refs.searchTable.rowAdd();
    },
    btnRowDelete () {
      console.log('btnRowDelete');
      this.$refs.searchTable.rowDel();
    },
    clearSearchForm(){
      // 자식함수 호출 ref로 자식컴포넌트 지정
      this.$refs.searchForm.initData();
    },
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
