<template>
  <div class="form-elements">
    <PlanSearchForm ref="planSearchForm" v-on="search"></PlanSearchForm>
    <br/>
    <PlanBasicInfoForm :planBasicInfoData="planBasicInfoData"/>
    <br/>
    <PlanInsuredPersionForm :planInsuredPersionData="planInsuredPersionData"></PlanInsuredPersionForm>
    <br/>
    <!-- <PlanCoverageForm></PlanCoverageForm> -->
    <br/>
    <!-- <PlanPremiumForm></PlanPremiumForm> -->
    <br />
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
import PlanInsuredPersionForm from './PlanInsuredPersionForm.vue'
// import PlanCoverageForm from './PlanCoverageForm.vue'
// import PlanPremiumForm from './PlanPremiumForm.vue'

export default {
  components: {
    PlanSearchForm,
    PlanBasicInfoForm,
    PlanInsuredPersionForm,
    // PlanCoverageForm,
    // PlanPremiumForm
  },
  data () {
    return {
      searchForm:{
        // searchJobName: true,
        // searchJobDetailName: true,
        // jobName: '',
        // jobCode: '',
      },
      planBasicInfoData: {
        goodsCode: "AA0000",
        goodsName: "SKIMS 테스트 보험",
        applyDate: new Date(2022,0,1),
        insuranceTerm: "01",
        paymentTerm:  "01",
        paymentCycle: "01",
        insuranceStartDate: new Date(2022,0,1),
        insuranceCloseDate: new Date(2022,11,31)
      },
      planInsuredPersionData: [
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
      parentValue: "TEST"
    }
  },
  methods: {
    search ( searchFormData ) {
      console.log('search', searchFormData);
      axios
        .get('https://jsonplaceholder.typicode.com/todos')
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
