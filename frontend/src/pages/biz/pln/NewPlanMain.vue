<template>
  <div class="form-elements">
    <PlanSearchForm ref="planSearchForm" @search="search" :goodsInformation="goodsInformation" :planBasicInfoData="planBasicInfoData"></PlanSearchForm>
    <PlanBasicInfoForm ref="planBasicInfoForm" :planBasicInfoData="planBasicInfoData" :goodsInformation="goodsInformation" @modify="modifyBasicInfo"/>
    <PlanInsuredPersonForm ref="planInsuredPersonForm" :planInsuredPersonData="planInsuredPersonData" :goodsInformation="goodsInformation" @insuredPersonChange="insuredPersonChange" @modify="modifyInsuredPerson"></PlanInsuredPersonForm>
    <PlanCoverageForm ref="planCoverageForm" :planCoverageData="planCoverageData" :goodsInformation="goodsInformation" @modify="modifyCoverage"></PlanCoverageForm>
    <PlanPremiumForm ref="planPremiumForm" :planPremiumData="planPremiumData"></PlanPremiumForm>
    <div>
      <va-button :rounded="false" size="small" class="mr-4 mb-2" v-on:click="savePlan">{{$t('common.button.save')}}</va-button>
      <va-button :rounded="false" size="small" class="mr-4 mb-2" v-on:click="calculatePremium">{{$t('newPlan.button.premium')}}</va-button>
      <va-button :rounded="false" size="small" class="mr-4 mb-2" v-on:click="planComplete">{{$t('newPlan.button.planComplete')}}</va-button>
      <va-button :rounded="false" size="small" class="mr-4 mb-2">{{$t('newPlan.button.underwriting')}}</va-button>
      <va-button :rounded="false" size="small" class="mr-4 mb-2">{{$t('common.button.print')}}</va-button>
      <va-button :rounded="false" size="small" class="mr-4 mb-2" @click="callPaymentPremium">{{$t('newPlan.button.premiumIncome')}}</va-button>
      <va-button :rounded="false" size="small" class="mr-4 mb-2" v-on:click="reflectContract">{{$t('newPlan.button.contractReflection')}}</va-button>
    </div>
  </div>

  <va-modal v-model="showReceive" hide-default-actions overlay-opacity="0.2" size="large">
    <receiveForm v-bind:parentReceiptAdministrationNumber="receiptAdministrationNumber"/>
  </va-modal>
</template>


<script>
import axios from 'axios'
import PlanSearchForm from './PlanSearchForm.vue'
import PlanBasicInfoForm from './PlanBasicInfoForm.vue'
import PlanInsuredPersonForm from './PlanInsuredPersonForm.vue'
import PlanCoverageForm from './PlanCoverageForm.vue'
import PlanPremiumForm from './PlanPremiumForm.vue'
import receiveForm from '../fin/Receive'

export default {
  components: {
    PlanSearchForm,
    PlanBasicInfoForm,
    PlanInsuredPersonForm,
    PlanCoverageForm,
    PlanPremiumForm,
    receiveForm
  },
  data () {
    return {
      searchData:{},
      goodsInformation: [],
      plStcd: [],
      planSaveData: [],
      planBasicInfoData: {},
      planInsuredPersonData: [],
      planCoverageData: [],
      planPremiumData: {},
      showReceive: false,
      receiptAdministrationNumber:"",
      premiumPayment:{
        depositFlagCode:"1",
        mntFlgcd:"01",
        plno:"",
        cgafChSeqno:"1",
        basePremium:0,
        applicationPremium:0,
        paymentPremium:0,
      }
    }
  },
  methods: {
    getGoodsInformation( goodsCode ){      
      axios
        .get(process.env.VUE_APP_IGD_URL + '/igd/goods/'+goodsCode)
        .then(response => {
          console.log("goodsInfo response", response);
          this.goodsInformation = response.data.goodsInformation;
        })
        .catch(error => {
          console.log(error);
          this.errored = true;
        })
        .finally(() => this.loading = false)
    },
    search ( searchFormData ) {
      this.searchData = searchFormData;
      axios
        .get(process.env.VUE_APP_PLN_URL + '/pln/planInformation?plno='+searchFormData.plno+'&cgafChSeqno=1') //searchFormData.plyno)
        .then(response => {
          console.log("response", response);
          this.planSaveData = response.data;
          // null 참조시 Cannot read property 'parentNode' of null 에러가 발생하는 것으로 보임. Null대신 빈 객체 설정
          this.planBasicInfoData = !response.data.insurancePlan ? {} : response.data.insurancePlan;  
          this.planInsuredPersonData = response.data.insuredPersons;
        })
        .catch(error => {
          console.log(error);
          this.errored = true;
        })
        .finally(() => this.loading = false)

        this.clearSearchForm();
    },
    modifyBasicInfo ( data ) {
      //console.log("modify data : ", data);
      this.planSaveData.insurancePlan = data;
    },
    modifyInsuredPerson ( data ) {
      //console.log("modify data : ", data);
      this.planSaveData.insuredPersons = data;
    },
    modifyCoverage ( data ) {
      //console.log("modifyCoverage data : ", data);
      //수정된 담보데이터를 저장하기 위해 해당 relpcSeqno의 피보험자data를 찾아서 그안에 넣어준다.
      for(let i=0; i<this.planSaveData.insuredPersons.length; i++){
        if(this.planSaveData.insuredPersons[i].relpcSeqno == data.relpcSeqno)
        {
          this.planSaveData.insuredPersons[i].coverages = data.coverages;
        }
      }
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
    savePlan() {
      console.log("저장버튼 ***", this.planSaveData);
      axios
        .post(process.env.VUE_APP_PLN_URL + '/pln/savePlanInformation', this.planSaveData)
        .then(response => {
          console.log("response", response);
          alert("설계정보 저장되었습니다.");
          
        })
        .catch(error => {
          console.log(error);
          this.errored = true;
          alert("설계저장시 에러가 발생하였습니다.\r\n" +error.response.data.message);
          
        })
        .finally(() => this.loading = false)
    },
    reflectContract() {
      console.log("계약반영 ***");
      axios
        .post(process.env.VUE_APP_PLN_URL + '/pln/reflect-contract/'+this.planSaveData.plno)
        .then(response => {
          console.log("response", response);
          alert("계약반영 되었습니다.");
          
        })
        .catch(error => {
          console.log(error);
          this.errored = true;
          alert("계약반영시 에러가 발생하였습니다.\r\n" +error.response.data.message);
          
        })
        .finally(() => this.loading = false)
    },
    calculatePremium(){      
      console.log("보험료계산 ***");
      //일단 상품선택을 한가지로 고정
      const goodsCode = 'LAA201';
      axios
        .post(process.env.VUE_APP_IGD_URL + '/igd/premium-calculate/'+goodsCode, this.planSaveData)
        .then(response => {
          console.log("calculatePremium response", response);
          this.planPremiumData.baPrm = response.data.insurancePlan.baPrm; //기본보험료
          this.planPremiumData.apPrm = response.data.insurancePlan.apPrm; //적용보험료
          this.planPremiumData.dcPrm = response.data.insurancePlan.baPrm - response.data.insurancePlan.apPrm; //할인보험료
        })
        .catch(error => {
          console.log(error);
          this.errored = true;
        })
        .finally(() => this.loading = false)
    },
    planComplete() {
      console.log("설계완료 ***");
      //설계상태코드 03: 설계완료
      axios
        .post(process.env.VUE_APP_PLN_URL + '/pln/changePlanStatus/', {plno:this.searchData.plno, plStcd:"03"})
        .then(response => {
          alert("설계완료 되었습니다.");
          console.log("response", response);
        })
        .catch(error => {
          console.log(error);
          this.errored = true;
        })
        .finally(() => this.loading = false)
    },
    callPaymentPremium(){
      console.log("보험료 입금");
      this.premiumPayment.plno = this.searchData.plno;
      this.premiumPayment.basePremium = this.planPremiumData.baPrm;
      this.premiumPayment.applicationPremium = this.planPremiumData.apPrm;
      this.premiumPayment.paymentPremium = this.planPremiumData.apPrm;

      axios
        .post(process.env.VUE_APP_PAY_URL + '/pay/receipt', this.premiumPayment)
        .then(response => {
          console.log("response", response);
          this.receiptAdministrationNumber = response.data;
          this.showReceive = !this.showReceive;        
        })
        .catch(error => {
          console.log(error);
          this.errored = true;
          alert("보험료 입금 처리 시 에러가 발생하였습니다.\r\n" +error.response.data.message);
        })
        .finally(() => this.loading = false)

    }
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
