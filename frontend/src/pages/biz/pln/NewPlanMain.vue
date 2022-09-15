<template>
  <div class="form-elements">
    <PlanSearchForm ref="planSearchForm" @search="search" :goodsInformation="goodsInformation"></PlanSearchForm>
    <PlanBasicInfoForm ref="planBasicInfoForm" :planBasicInfoData="planBasicInfoData" :goodsInformation="goodsInformation"/>
    <PlanInsuredPersonForm ref="planInsuredPersonForm" :planInsuredPersonData="planInsuredPersonData" :goodsInformation="goodsInformation" @insuredPersonChange="insuredPersonChange"></PlanInsuredPersonForm>
    <PlanCoverageForm ref="planCoverageForm" :planCoverageData="planCoverageData" :coverageInformation="coverageInformation" :goodsInformation="goodsInformation"></PlanCoverageForm>
    <PlanPremiumForm ref="planPremiumForm" :planPremiumData="planPremiumData"></PlanPremiumForm>
    <div>
      <va-button :rounded="false" size="small" class="mr-4 mb-2">{{$t('common.button.save')}}</va-button>
      <va-button :rounded="false" size="small" class="mr-4 mb-2">{{$t('newPlan.button.premium')}}</va-button>
      <va-button :rounded="false" size="small" class="mr-4 mb-2">{{$t('newPlan.button.planComplete')}}</va-button>
      <va-button :rounded="false" size="small" class="mr-4 mb-2">{{$t('newPlan.button.underwriting')}}</va-button>
      <va-button :rounded="false" size="small" class="mr-4 mb-2">{{$t('common.button.print')}}</va-button>
      <va-button :rounded="false" size="small" class="mr-4 mb-2">{{$t('newPlan.button.premiumIncome')}}</va-button>
      <va-button :rounded="false" size="small" class="mr-4 mb-2">{{$t('newPlan.button.contractReflection')}}</va-button>
    </div>
  </div>
</template>


<script>
import axios from 'axios'
import PlanSearchForm from './PlanSearchForm.vue'
import PlanBasicInfoForm from './PlanBasicInfoForm.vue'
import PlanInsuredPersonForm from './PlanInsuredPersonForm.vue'
import PlanCoverageForm from './PlanCoverageForm.vue'
import PlanPremiumForm from './PlanPremiumForm.vue'

export default {
  components: {
    PlanSearchForm,
    PlanBasicInfoForm,
    PlanInsuredPersonForm,
    PlanCoverageForm,
    PlanPremiumForm
  },
  data () {
    return {
      searchForm:{},
      goodsInformation: [],
      coverageInformation: [],
      plStcd: [],
      planBasicInfoData: {},
      planInsuredPersonData: [],
      planCoverageData: [],
      planPremiumData: {
        baPrm: "1000000",
        apPrm: "900000",
        dcPrm: "100000"
      },
    }
  },
  methods: {
    getGoodsInformation( goodsCode ){      
      axios
        .get('http://localhost:8081/igd/goods/'+goodsCode)
        .then(response => {
          console.log("goodsInfo response", response);
          this.goodsInformation = response.data.goodsInformation;
          this.coverageInformation = response.data.coverageInformation;
        })
        .catch(error => {
          console.log(error)
          this.errored = true
        })
        .finally(() => this.loading = false)
    },
    search ( searchFormData ) {
      axios
        .get('http://localhost:8081/pln/planInformation?plno='+searchFormData.plno+'&cgafChSeqno=1') //searchFormData.plyno)
        .then(response => {
          console.log("response", response);        
          this.planBasicInfoData = response.data.insurancePlan;  
          this.planInsuredPersonData = response.data.insuredPersons;
        })
        .catch(error => {
          console.log(error)
          this.errored = true
        })
        .finally(() => this.loading = false)

        this.clearSearchForm();
    },
    insuredPersonChange ( coverages ) {
      this.planCoverageData = coverages;
    },
    clearSearchForm(){
      // 자식함수 호출 ref로 자식컴포넌트 지정
      //this.$refs.searchForm.initData();
    },

    formatDate (date) {
      return `${date.getFullYear()}-${date.getMonth() + 1}-${date.getDate()}`
    },

    parseDate (text) {
      const [year, month, day] = text.split('-')

      return new Date(year, month - 1, day)
    },
  },

  created () {
    console.log("created...");
    //일단 상품선택을 한가지로 고정
    const goodsCode = 'LAA201';
    //상품정보 조회 호출
    this.getGoodsInformation(goodsCode);

    // this.planBasicInfoData.insuranceStartDate = new Date();
    // this.planBasicInfoData.insuranceCloseDate = new Date();
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
