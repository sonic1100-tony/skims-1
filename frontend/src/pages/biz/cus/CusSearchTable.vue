<template>
  <div class="markup-tables flex">
    <va-card title="조회결과" class="flex mb-4">
      <va-card-content>
        <div class="table-wrapper">
          <table class="va-table">
            <thead>
              <tr>
                <th>고객번호</th>
                <th>고객명</th>
                <th>주민등록번호</th>
                <th>국적</th>
              </tr>
            </thead>

            <tbody>
              <tr v-for="item in todoList" :key="item.id">
                <CusSearchTableItem :item="item" />
              </tr>
            </tbody>
          </table>                
        </div>
      </va-card-content>
    </va-card>
  </div>
</template>

<script>
import CusSearchTableItem from './CusSearchTableItem'

export default {
  components: {
    CusSearchTableItem,
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
