<template>
  <va-card>
    <va-card-content>
      <div class="row">
        <div class="flex md2">
          <va-input
            :label="$t('common.title.planNumber')"
            v-model="searchFormData.plno"
            :rules="[value => (value && value.length != 10) || 'Field is 10 digit required']"
          />
        </div>
        <div class="flex md2">
          <va-select
            class="mb-4"
            :label="$t('common.title.planStatus')"
            v-model="searchFormData.plStcd"
            value-by="value"
            :options="plStcd"
          />
        </div>
        <div class="flex md2">
          <va-input
            :label="$t('common.title.policyNumber')"
            v-model="searchFormData.plyno"
          />
        </div>
        <div class="flex md2">
          <va-input
            :label="$t('common.title.groupNumber')"
            v-model="searchFormData.grCtmno"
          />
        </div>
        <div class="flex md3">
          <va-button :rounded="false" class="mr-4 mb-2" @click="search">{{$t('common.button.search')}}</va-button>
        </div>
      </div>
    </va-card-content>
  </va-card>
</template>

<script>

export default {
  data () {
    return {
      plStcd: [],
      searchFormData: null,
    }
  },
  props : {
    goodsInformation: {
      type: Object
    },
    planBasicInfoData:{
      type: Object
    }
  },
  watch: {
    goodsInformation: function ( obj ) {
      for(let i=0; i<obj.plStcd.length; i++){
        const array = {
          value: obj.plStcd[i].code,
          text: obj.plStcd[i].value
        }
        this.plStcd.push(array);
      }
    },
    planBasicInfoData: function ( obj ) {
      this.searchFormData.plStcd = obj.plStcd;
      this.searchFormData.plyno = obj.plyno;
    }
  },
  methods: {
    initData () {
      this.searchFormData = {
        plno: '00001',
        plStcd: '01',
        plyno: '1000000001',
        grCtmno: '',
      };
    },
    search () {
      console.log('search', this.searchFormData);
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
