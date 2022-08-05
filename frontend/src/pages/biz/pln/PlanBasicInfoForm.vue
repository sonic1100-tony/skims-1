<template>
  <va-card>
    <va-card-title>{{ $t("collapse.basic") }}</va-card-title>
    <va-card-content>
      <div class="row">
        <div class="flex md2">
          <va-input
            label="설계번호"
            v-model="searchFormData.plno"
            :rules="[value => (value && value.length != 10) || 'Field is 10 digit required']"
          />
        </div>
        <div class="flex md2">
          <va-select
            class="mb-4"
            label="설계상태"
            v-model="searchFormData.plStcd"
            :options="plStcd"
          />
        </div>
        <div class="flex md2">
          <va-input
            label="증권번호"
            v-model="searchFormData.plyno"
            :rules="[value => (value.length > 0 && value.length != 10) || 'Field is required']"
          />
        </div>
        <div class="flex md2">
          <va-input
            label="단체번호"
            v-model="searchFormData.grCtmno"
            :rules="[value => (value && value.length > 0) || 'Field is required']"
          />
        </div>
        <div class="flex md3">
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
      plStcd: ['설계중', '보험료계산', '설계완료', '청약완료', '수납완료', '걔약완료'],
      searchFormData: null,
    }
  },
  methods: {
    initData () {
      this.searchFormData = {
        plno: '',
        plStcd: '',
        plyno: '',
        grCtmno: '',
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
