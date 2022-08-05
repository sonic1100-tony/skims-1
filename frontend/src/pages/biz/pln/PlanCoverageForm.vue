<template>
  <va-card>
    <va-card-content>
      <div class="row">
        <div class="flex md3">
          <va-input
            label="담보"
            v-model="searchFormData.jobName"
            :rules="[value => (value && value.length > 0) || 'Field is required']"
          />
        </div>
        <div class="flex md2">
          <va-checkbox class="mb-2" v-model="searchFormData.searchJobName" label="직업명" />
        </div>
        <div class="flex md2">
          <va-checkbox class="mb-2" v-model="searchFormData.searchJobDetailName" label="세부직업" />
        </div>
        <div class="flex md3">
          <va-input
            label="직업코드"
            v-model="searchFormData.jobCode"
            :rules="[value => (value && value.length > 0) || 'Field is required']"
          />
        </div>
        <div class="flex md2 ">
          <va-button size="small" @click="search()">조회</va-button>
        </div>
      </div>
    </va-card-content>
  </va-card>
</template>

<script>

export default {
  data () {
    return {
      searchFormData:null,
    }
  },
  methods: {
    initData () {
      this.searchFormData = {
        searchJobName: true,
        searchJobDetailName: true,
        jobName: '',
        jobCode: '',
      };
    },
    search () {
      console.log('search');
      this.$emit("search", {
        ...this.searchFormData,
      });
    },
  },

  created () {
    console.log("created...");
    this.initData();
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
