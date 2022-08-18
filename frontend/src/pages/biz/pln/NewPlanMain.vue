<template>
  <div class="form-elements">
    <PlanSearchForm ref="planSearchForm" @search="search"></PlanSearchForm>
    <PlanBasicInfoForm ref="planBasicInfoForm" :planBasicInfoData="planBasicInfoData"/>
    <PlanInsuredPersonForm ref="planInsuredPersonForm" :planInsuredPersonData="planInsuredPersonData"></PlanInsuredPersonForm>
    <PlanCoverageForm ref="planCoverageForm" :planCoverageData="planCoverageData"></PlanCoverageForm>
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
      searchForm:{
      },
      planBasicInfoData: {
        gdcd: "AA0000",
        gdcnm: "SKIMS 테스트 보험",
        apldt: new Date(2022,0,1),
        ndcd: "01",
        pymTrmcd:  "01",
        pymCyccd: "01",
        insSt: new Date(2022,0,1),
        insClstr: new Date(2022,11,31)
      },
      planInsuredPersonData: [
        {
            relpcSeqno: 1,
            relpcRelcd: "01",
            ctmDscno: "123456-1234567",
            hnglRelnm: "홍길동1",
            ppaYn: "Y",
            jbcd: "12345",
            jbcnm: "사무원",
            injrRnkcd: "1",
            drveTycd: "1",
            twhvcDrveYn: "1"
        },
        {
            relpcSeqno: 1,
            relpcRelcd: "01",
            ctmDscno: "123456-1234567",
            hnglRelnm: "홍길동2",
            ppaYn: "Y",
            jbcd: "12345",
            jbcnm: "사무원",
            injrRnkcd: "1",
            drveTycd: "1",
            twhvcDrveYn: "1"
        },
        {
            relpcSeqno: 1,
            relpcRelcd: "01",
            ctmDscno: "123456-1234567",
            hnglRelnm: "홍길동3",
            ppaYn: "Y",
            jbcd: "12345",
            jbcnm: "사무원",
            injrRnkcd: "1",
            drveTycd: "1",
            twhvcDrveYn: "1"
        }
      ],
      planCoverageData: [
        {
            relpcSeqno: 1,
            cvrcd: "CVR001",
            cvrSeqno: "1",
            cvrnm: "무배당 아파아파 보험",
            ndcd: "01",
            pymTrmcd:  "01",
            isamt: "100000000",
            baPrm: "100000",
            apPrm: "100000",
        },
        {
            relpcSeqno: 1,
            cvrcd: "CVR002",
            cvrSeqno: "1",
            cvrnm: "무배당 아파아파 보험",
            ndcd: "01",
            pymTrmcd:  "01",
            isamt: "100000000",
            baPrm: "100000",
            apPrm: "100000",
        },
        {
            relpcSeqno: 1,
            cvrcd: "CVR003",
            cvrSeqno: "1",
            cvrnm: "무배당 아파아파 보험",
            ndcd: "01",
            pymTrmcd:  "01",
            isamt: "100000000",
            baPrm: "100000",
            apPrm: "100000",
        }
      ],
      planPremiumData: {
        baPrm: "1000000",
        apPrm: "900000",
        dcPrm: "100000"
      },
    }
  },
  methods: {
    search ( searchFormData ) {
      console.log('NewPlanMain search', searchFormData);
      axios
        .get('http://localhost:8081/cnr/contract/'+"0000000001") //searchFormData.plyno)
        .then(response => {
          console.log("response", response);
          this.todoList = response.data.slice(0, 8);
        })
        .catch(error => {
          console.log(error)
          this.errored = true
        })
        .finally(() => this.loading = false)

        this.clearSearchForm();
    },
    clearSearchForm(){
      // 자식함수 호출 ref로 자식컴포넌트 지정
      this.$refs.searchForm.initData();
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
