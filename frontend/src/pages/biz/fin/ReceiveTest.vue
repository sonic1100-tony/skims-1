<template>
  <div class="form-elements">
    <div class="row">
      <h3>수납 테스트</h3>
      <div class="flex xs12">
        <va-card>
          <va-card-content>
            <form>
              <div class="row">
                <va-input label="수납대기번호" v-model="receiveStandbyNumber"/>
                <va-button class="mr-2 mb-2" @click="showReceive = !showReceive">수납팝업</va-button>
              </div>  
    
            </form>
          </va-card-content>
        </va-card>
        <va-card>
          <va-card-content>
            <form>
              <div class="row">
                <va-button class="mr-2 mb-2" @click="receiveStandby()">수납대기등록</va-button>
              </div>  
            </form>
          </va-card-content>
        </va-card>
      </div>
    </div>
  </div>

  <va-modal
    v-model="showReceive"
    hide-default-actions
    overlay-opacity="0.2"
    size="large"
  >
    <receive v-bind:parentReceiveStandbyNumber="receiveStandbyNumber"/>
  </va-modal>

</template>

<script>
import axios from 'axios'
axios.defaults.baseURL = 'http://localhost:8084';

import receive from '../fin/Receive'

export default {
  components: {
    receive
  },
  data () {
    return {      
      showReceive: false,
      receiveStandbyNumber:"000000000000001",
      params:{
        occurrenceSystemCode: "02",
        dealingsTypeOrder1ClassificationCode: "01",
        dealingsTypeOrder2ClassificationCode: "0101",
        receiptDate:" 2022-08-04",
        handlingOrganizationCode: "SK",
        handlingStaffNumber: "SK001",
        insuranceKindGroupCode: "LA",
        insuranceItemCode: "LAA1010",
        contractDate: "2022-08-04",
        policyNumber: "LA20210000000002",
        incomePremiumOccurrenceSequenceNumber: 1,
        endorsementNumber: null,
        customerNumber: "330003015",
        contractorResidentNumber: "9001011111111",
        responsibilityThirdPartyBodilyInjuryOpenDate: "2022-08-04",
        undertakeTypeClassificationCode: "01",
        depositCauseCode: "01",
        moneyTypeFlagCode: "01",
        depositDate: "2022-08-04",
        receiptAdministrationNumber: "123456789",
        planNumber: "123456789",
        businessEndorsementFlagCode: null,
        totalFlagCode: null,
        totalCount: 0,
        totalPremium: 1000,
        wonCurrencyPremium: 1000,
        transferCommission: 0,
        etcAmountFlagCode: null,
        etcAmount: 0,
        contractorName: "홍길동"
      },
    }
  },
  methods: {
    receiveStandby(){
      console.log("수납등록>>>>>>>", this.params);
      axios
        .post('/fin/receive-standby', this.params)
        .then(response => {
          console.log("response", response);
          alert("수납대기 등록이 완료되었습니다.\r\n수납대기번호 : " +response.data);
          
        })
        .catch(error => {
          console.log(error)
          this.errored = true
          alert("수납대기 등록 시 에러가 발생하였습니다.\r\n" +error.response.data.message);
        })
        .finally(() => this.loading = false)
    },  
  },
  created () {
    console.log("created...");
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
