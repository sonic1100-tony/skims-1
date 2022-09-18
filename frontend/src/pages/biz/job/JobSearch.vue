<template>
  <div class="form-elements">
    <JobSearchForm ref="searchForm" @search="search"/>
    <br/>
    <JobSearchTable ref="searchTable" :jobList="jobList" @setSelectedJob="setSelectedJob" />
    <JobSearchFooter @sendSelectedJob="sendSelectedJob"/>
  </div>
</template>

<script>
import Vue from 'vue';
import axios from 'axios'
import JobSearchForm from './JobSearchForm'
import JobSearchTable from './JobSearchTable'
import JobSearchFooter from './JobSearchFooter'

export default {
  components: {
    JobSearchForm,
    JobSearchTable,
    JobSearchFooter,
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
      selectedJob: null, // 선택 job
    }
  },
  methods: {
    search ( searchFormData ) {

      this.clearSearchData();

      console.log('search', searchFormData);

      const jbnm = searchFormData.searchJobName ? searchFormData.jobName : "";
      const dtJbnm = searchFormData.searchJobDetailName ? searchFormData.jobName : "";

      const queryUrl = `${process.env.VUE_APP_BASE_URL}/cus/cusjbs?jbChSeqno=4`
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
    clearSearchData(){
      this.jobList = [];
      this.selectedJob = null;
      this.$refs.searchTable.initData();
    },
    setSelectedJob( selectedJob ){
      console.log('selectedJob', selectedJob);
      this.selectedJob = selectedJob;
    },
    sendSelectedJob(){
      console.log('send selectedJob', this.selectedJob);
      this.$emit("sendSelectedJob", {
        ...this.selectedJob,
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
