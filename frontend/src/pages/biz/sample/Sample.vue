<template>
  <div class="form-elements">
    <div class="row">
      <div class="flex xs12">
        <va-card :title="$t('forms.inputs.title')">
          <va-card-content>
            <form>
              <div class="row">
                <va-button class="mr-2 mb-2" size="small" @click="search()">검색</va-button>
              </div>
            </form>
          </va-card-content>
        </va-card>
      </div>
    </div>
  </div>
  <div class="markup-tables flex">
    <va-card :title="$t('tables.basic')" class="flex mb-4">
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
                <td>{{ item.userId }}</td>
                <td>{{ item.id }}</td>
                <td>{{ item.title }}</td>
                <td>
                  <va-badge :color="getStatusColor(item.completed)">
                    {{ getStatus(item.completed) }}
                  </va-badge>
                </td>
              </tr>
            </tbody>
          </table>                
        </div>
      </va-card-content>
    </va-card>

  </div>

</template>

<script>
import axios from 'axios'
import data from '@/data/tables/markup-table/data.json'

export default {
  data () {
    return {
      users: data.slice(0, 8),
      todoList: [],
    }
  },
  methods: {
    getStatusColor (completed) {
      if (completed) { // 완료 
        return 'success'
      }

      return 'info'
    },
    getStatus (completed) {
      if (completed) { // 완료
        return '수행완료'
      }

      return '수행전'
    },
    clear (field) {
      this[field] = ''
    },
    search () {
      console.log('search');
      axios
        .get('https://jsonplaceholder.typicode.com/todos')
        .then(response => {
          //this.info = response.data.bpi
          console.log("response", response);
          this.todoList = response.data.slice(0, 8);
        })
        .catch(error => {
          console.log(error)
          this.errored = true
        })
        .finally(() => this.loading = false)
    },
  },

  created () {
    console.log("created...");
    this.search();
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
