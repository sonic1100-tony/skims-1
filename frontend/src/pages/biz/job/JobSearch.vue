<template>
  <div class="form-elements">
    <JobSearchForm ref="searchForm" @search="search"/>
    <br/>
    <JobSearchTable :jobList="jobList" />
  </div>
</template>

<script>
import axios from 'axios'
import JobSearchForm from './JobSearchForm'
import JobSearchTable from './JobSearchTable'

export default {
  components: {
    JobSearchForm,
    JobSearchTable
  },
  data () {
    return {
      searchForm:{
        searchJobName: true,
        searchJobDetailName: true,
        jobName: '',
        jobCode: '',
      },
      jobList: [],
    }
  },
  methods: {
    search ( searchFormData ) {
      console.log('search', searchFormData);

      const jbnm = searchFormData.searchJobName ? searchFormData.jobName : "";
      const dtJbnm = searchFormData.searchJobDetailName ? searchFormData.jobName : "";

      const queryUrl = 'http://localhost:8083/cus/cusjbs?jbChSeqno=4'
          +'&jbcd=' + searchFormData.jobCode 
          +'&jbnm=' + jbnm 
          +'&dtJbnm=' + dtJbnm;

      axios
        //.get('https://jsonplaceholder.typicode.com/todos')
        .get(queryUrl)
        .then(response => {
          console.log("response", response);
          this.jobList = response.data;
        })
        .catch(error => {
          console.log(error)
          this.errored = true
        })
        .finally(() => this.loading = false)

        //this.clearSearchForm();
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

  table {
  border-collapse: collapse;
  width: 100%;
}

th, td {
  padding: 8px;
  text-align: left;
  border-bottom: 1px solid #ddd;
}

tr:hover {background-color: coral;}
</style>
