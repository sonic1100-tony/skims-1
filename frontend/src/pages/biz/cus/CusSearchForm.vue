<template>
  <va-card>
    <va-card-title>고객검색 (조회결과를 더블클릭하여 선택하여 주세요.)</va-card-title>
    <va-card-content>
      <div class="row">
        <div class="flex md3">
          <va-input
            label="고객명"
            v-model="searchFormData.hnglCtmnm"
            :rules="[value => (value && value.length > 0) || 'Field is required']"
            @keyup.enter="search()"
          />
        </div>
        <div class="flex md3">
          <va-input
            label="고객번호"
            v-model="searchFormData.ctmNo"
            :rules="[value => (value && value.length > 0) || 'Field is required']"
            @keyup.enter="search()"
          />
        </div>
        <div class="flex md2">
          <!--공백 넣기-->
        </div>
        <div class="flex md2">
          <!--공백 넣기-->
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
        searchCusName: true,
        hnglCtmnm: '',
        ctmNo: '',
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
