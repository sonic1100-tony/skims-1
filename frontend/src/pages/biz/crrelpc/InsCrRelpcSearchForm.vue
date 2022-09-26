<template>
  <va-card>
    <va-card-title>계약자정보</va-card-title>
    <va-card-content>
      <div class="row">
        <div class="flex md3">
          <va-input
            label="증권번호"
            v-model="searchFormData.plyno"
            :rules="[value => (value && value.length > 0) || 'Field is required']"
          />
        </div>
        <div class="flex md2">
          <va-button class="mr-2 mb-2" size="small" @click="search()">조회</va-button>
        </div>
        <div class="flex md7" style="text-align: right;">
          <va-button class="mr-2 mb-2" size="small" @click="btnRowAdd()">행추가</va-button>
          <va-button class="mr-2 mb-2" size="small" @click="btnRowDelete()">행삭제</va-button>
        </div>        
      </div>
    </va-card-content>
  </va-card>
</template>


<script>

export default {
  data () {
    return {
      searchFormData:null   
    }
  },
  methods: {
    initData () {
      console.log('Form initData');
      this.searchFormData = {
        plyno: '',
      };
    },
    search () {
      console.log('search');
      this.$emit("search", {
        ...this.searchFormData,
      });
    },
    btnRowAdd () {
      console.log('RowAdd');
      this.$emit("btnRowAdd", {
        ...this.searchFormData,
      });

    },
    btnRowDelete () {
      console.log('RowDelete');
        this.$emit("btnRowDelete", {
          ...this.searchFormData,
      });
    },
  },

  created () {
    console.log("Form created...");
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
