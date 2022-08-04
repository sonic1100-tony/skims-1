<template>
  <div class="form-elements">
    <JobSearchForm ref="searchForm" @search="search"/>
    <br/>
    <JobSearchTable :todoList="todoList" />
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
      todoList: [],
    }
  },
  methods: {
    search ( searchFormData ) {
      console.log('search', searchFormData);
      axios
        .get('https://jsonplaceholder.typicode.com/todos')
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
