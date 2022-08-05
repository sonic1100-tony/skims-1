<template>
  <div class="markup-tables flex">
    <va-card title="피보험자" class="flex mb-4">
      <va-card-content>
        <div class="table-wrapper">
          <table class="va-table">
            <thead>
              <tr>
                <th>선택</th>
                <th>주피관계</th>
                <th>주민등록번호</th>
                <th colspan="2">피보험자명</th>
                <th colspan="2">법정대리인</th>
                <th>직업코드</th>
                <th colspan="2">직업명</th>
                <th>상해급수</th>
                <th>운전형태</th>
                <th>의료비수급자</th>
                <th>이륜차부담보</th>
              </tr>
            </thead>

            <tbody>
              <tr v-for="item in todoList" :key="item.id">
                <JobSearchTableItem :item="item" />
              </tr>
            </tbody>
          </table>                
        </div>
      </va-card-content>
    </va-card>
  </div>
</template>

<script>
// import JobSearchTableItem from './JobSearchTableItem'

export default {
  components: {
    // JobSearchTableItem,
  },
  data () {
    return {
      
    }
  },
  props : {
    todoList:{
      type: Array
    }
  },
  methods: {
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
