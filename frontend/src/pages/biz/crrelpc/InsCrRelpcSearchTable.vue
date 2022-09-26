<template>
  <div class="markup-tables flex">
    <va-card title="조회결과" class="flex mb-4">
      <va-card-content>
        <div class="table-wrapper">
          <table class="va-table" id="table1">
            <thead>
              <tr>
                <th>선택</th>
                <th colspan="2">고객명</th>
                <th>주민번호</th>
                <th>피보험자와 관계</th>
                <th>주소</th>
                <th>연락처</th>
                <th colspan="2">법정대리인 필요여부</th>
                <th>대표자여부</th>
              </tr>
            </thead>

            <tbody>
              <tr v-for="item in todoList" :key="item.aid">
                <InsCrRelpcSearchTableItem :item="item" />
              </tr>
            </tbody>
          </table>                
        </div>
      </va-card-content>
    </va-card>
  </div>
</template>

<script>
import InsCrRelpcSearchTableItem from './InsCrRelpcSearchTableItem'

export default {
  components: {
    InsCrRelpcSearchTableItem,
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
    rowAdd () {
      console.log('rowAdd');

      this.todoList.push({
      });
    },
    rowDel () {
      console.log('rowDel');
      this.todoList.splice(1, 1);
    },
  },

  created () {
    console.log("Table created...");
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
