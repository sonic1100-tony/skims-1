<template>
  <div class="markup-tables flex">
    <va-card title="조회결과" class="flex mb-4">
      <va-card-content>
        <div class="table-wrapper">
          <table class="va-table">
            <thead>
              <tr>
                <th>유저ID</th>
                <th>TodoID</th>
                <th>제목</th>
                <th>상태</th>
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
      <va-card-content>
        <div class="row">
          <va-input
            class="mb-12"
            v-model="value"
            type="textarea"
            label="설명"
          />
        </div>
        <div class="row">
          <va-input
            class="mb-12"
            v-model="value"
            type="textarea"
            label="세부직업"
          />
        </div>
      </va-card-content>
    </va-card>
  </div>
</template>

<script>
import JobSearchTableItem from './JobSearchTableItem'

export default {
  components: {
    JobSearchTableItem,
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
