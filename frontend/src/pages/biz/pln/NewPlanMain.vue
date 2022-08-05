<template>
  <div class="form-elements">
    <PlanSearchForm></PlanSearchForm>
    <br/>
    <PlanBasicInfoForm></PlanBasicInfoForm>
    <br/>
    <PlanInsuredPersionForm></PlanInsuredPersionForm>
    <br/>
    <!-- <PlanCoverageForm></PlanCoverageForm> -->
    <br/>
    <!-- <PlanPremiumForm></PlanPremiumForm> -->
  </div>
</template>


<script>
import axios from 'axios'
import PlanSearchForm from './PlanSearchForm.vue'
import PlanBasicInfoForm from './PlanBasicInfoForm.vue'
import PlanInsuredPersionForm from './PlanInsuredPersionForm.vue'
// import PlanCoverageForm from './PlanCoverageForm.vue'
// import PlanPremiumForm from './PlanPremiumForm.vue'

export default {
  components: {
    PlanSearchForm,
    PlanBasicInfoForm,
    PlanInsuredPersionForm,
    // PlanCoverageForm,
    // PlanPremiumForm
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
