<template>
  <div class="markup-tables flex">
    <va-card title="조회결과" class="flex mb-4">
      <va-card-content style="width:100%; height:200px; overflow:auto">
        <div class="table-wrapper">
          <table class="va-table">
            <thead>
              <tr>
                <th>직업코드</th>
                <th>직업명</th>
                <th>상해급수</th>
                <th>상해등급</th>
                <th>자동차직업코드</th>
                <th>교통급수</th>
                <th>할증담보여부</th>
              </tr>
            </thead>

            <tbody>
              <tr v-for="(item, index) in jobList" :key="item.jbcd" @click="selectItem(index, item, $event)">
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
            v-model="jbXpnm"
            type="textarea"
            label="설명"
          />
        </div>
        <div class="row">
          <va-input
            class="mb-12"
            v-model="dtJbnm"
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
      jbXpnm: '', // 직업설명
      dtJbnm: '', // 세부직업명
    }
  },
  props : {
    jobList:{
      type: Array
    }
  },
  methods: {
    initData () {
      this.jbXpnm = '';
      this.dtJbnm = '';
    },
    selectItem(index, item, event){
      console.log(index);
      console.log(item);
      console.log(event);

      this.dtJbnm = item.dtJbnm;
      this.jbXpnm = item.jbXpnm;

      this.$emit("setSelectedJob", {
        ...item,
      });
    }
  },

  created () {
    console.log("created...");
  }, 
  mounted () {
    console.log("mounted...");
  },
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
