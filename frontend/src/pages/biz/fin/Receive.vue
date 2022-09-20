<template>
  <div class="form-elements">
    <div class="row">
      <div class="flex xs12">
        <va-card>
          <va-card-content>
            <form>              
              <div class="row">                
                <div class="flex md1 sm6 xs12">
                  납입방법                   
                </div>
                <div class="flex md4 sm6 xs12">
                  <va-radio v-for="(method, index) in depositMethodList" :key="index" v-model="depositMethod" :option="method" />
                </div>
              </div>
            </form>
          </va-card-content>
        </va-card>
      </div>
      <div class="flex xs12">
        <va-card class="flex mb-4">
          <va-card-content>
            <div class="table-wrapper">
              <va-form ref="validTest" @validation="validation = $event">
                <table class="va-table">
                  <thead>
                    <tr>
                      <th width="15%">이체은행</th>
                      <th width="25%">계좌번호</th>
                      <th width="20%">생년월일</th>
                      <th width="15%">예금주명</th>
                      <th width="10%">결제금액</th>
                      <th width="15%"></th>
                    </tr>
                  </thead>

                  <tbody>
                    <tr>
                      <td>
                        <va-select v-model="receiveData.bankCode" text-by="text" value-by="value" :options="bankList" :disabled="withdrawCompleted"/>
                      </td>
                      <td><va-input v-model="receiveData.accountNumber" :rules="textValidRule" :disabled="withdrawCompleted"/></td>
                      <td><va-input v-model="receiveData.birthDate" :rules="textValidRule" :disabled="withdrawCompleted"/></td>
                      <td><va-input v-model="receiveData.depositor" :rules="textValidRule" :disabled="withdrawCompleted"/></td>
                      <td><va-input v-model="receiveData.amount" :rules="numberValidRule" readonly :disabled="withdrawCompleted"/></td>
                      <td><va-button class="mr-4 mb-2" @click="$refs.validTest.validate(), withdraw()" :disabled="withdrawCompleted">출금</va-button></td>
                    </tr> 
                  </tbody>
                </table> 
              </va-form>
              <div class="text--right">
                <va-button class="mr-2 mb-2" @click="receive()">수납</va-button>
              </div>
            </div>
          </va-card-content>
        </va-card>
      </div>
    </div>
  </div>  
</template>
<script>
import axios from 'axios'
axios.defaults.baseURL = 'http://localhost:8084';

export default {
  props: ['parentReceiptAdministrationNumber'] ,
  data () {
    const bankList= [
        { text: "국민은행", value: "004" },
        { text: "신한은행", value: "088" },
        { text: "하나은행", value: "081" },
    ]
    return {
      withdrawCompleted:false,
      validation: null,
      textValidRule: [value => value != '' || '값을 입력하세요'],
      numberValidRule: [value => value > 0 || '0보다 커야 합니다'],
      testData:this.send,
      depositMethodList: [
        '계좌이체',
      ],
      depositMethod: '계좌이체',      
      bankList,      
      receiveData:{
        receiptAdministrationNumber:this.$props.parentReceiptAdministrationNumber,
        bankCode:bankList[0].value,
        accountNumber:"",
        depositor:"",
        birthDate:"19900101",
        amount:0,
      },
    }
  },
  methods: {
    initData () {
      this.getInfo();
    },               
    receive(){
      if(!this.withdrawCompleted){
        alert("출금 처리 후 진행하세요.");
        return;
      }
      console.log(">>수납처리>>>>>>>", this.receiveData);
      axios
        .post('fin/receive/', this.receiveData)
        .then(response => {
          console.log("response", response);
          alert("수납처리가 완료되었습니다.");
          
        })
        .catch(error => {
          console.log(error)
          this.errored = true
          alert("수납처리 시 에러가 발생하였습니다.\r\n" +error.response.data.message);
          
        })
        .finally(() => this.loading = false)
    },
    withdraw(){
      if(!this.validation){
        return;
      }
      axios
        .post('fin/immediately-withdraw/', this.receiveData)
        .then(response => {
          console.log("response", response);
          if(response.data.answerCode == "0000"){
            alert("출금처리가 완료되었습니다.");
            this.withdrawCompleted = true;
          }else{
            alert("출금처리 중 에러가 발생하였습니다. \r\n에러코드 [" +response.data.answerCode +"]");
          }
        })
        .catch(error => {
          console.log(error)
          this.errored = true
          alert("출금처리 시 에러가 발생하였습니다.\r\n" +error.response.data.message);
          
        })
        .finally(() => this.loading = false)
    },
    getInfo () {
      console.log('조회 >>>>');
      axios
        .get('/fin/receive-info/'+this.receiveData.receiptAdministrationNumber)
        .then(response => {
          console.log("response", response);
          this.receiveData.amount = response.data.wonCurrencyPremium;
        })
        .catch(error => {
          console.log(error)
          this.errored = true
        })
        .finally(() => this.loading = false)
    },
  },

  created () {
    console.log("created...");
    this.initData();
  }
}
</script>

<style lang="scss">
  .row.row-inside {
    max-width: none;
  }

  .va-input-wrapper, fieldset {
    margin-bottom: 0.5rem;
  }
  .markup-tables {
    .table-wrapper {
      overflow: auto;
    }

    .va-table {
      width: 100%;
    }
  }
</style>