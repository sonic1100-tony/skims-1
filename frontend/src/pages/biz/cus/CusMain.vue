<template>
  <va-card>
    <va-card-title>고객메인</va-card-title>
    <va-card-content>
      <div class="row">
        <div class="flex md12">
          <va-button @click="showDialog()">고객검색</va-button>
        </div>
      </div>
      <div class="row">
        <div class="flex md2">
          <va-input
            class="mb-4"
            v-model="ctmno"
            label="고객번호"
            placeholder=""
            readonly
          />
        </div>
        <div class="flex md2">
          <va-input
            class="mb-4"
            v-model="hnglCtmnm"
            label="고객명"
            placeholder=""
            readonly
          />
        </div>
        <div class="flex md2">
          <va-input
            class="mb-4"
            v-model="ctmDscno"
            label="주민등록번호"
            placeholder=""
            readonly
          />
        </div>
        <div class="flex md2">
          <va-input
            class="mb-4"
            v-model="bzmno"
            label="사업자번호"
            placeholder=""
            readonly
          />
        </div>
      </div>
      <div class="row">
        <div class="flex md2">
          <va-input
            class="mb-4"
            v-model="ntlcd"
            label="국적"
            placeholder=""
            readonly
          />
        </div>
        <div class="flex md2">
          <va-input
            class="mb-4"
            v-model="rgbrdFlgcd"
            label="내외국구분코드"
            placeholder=""
            readonly
          />
        </div>
      </div>
    </va-card-content>
  </va-card>

  <CusSearchModal ref="CusModal" @receiveSelectedCus="receiveSelectedCus"/>
</template>

<script>
import CusSearchModal from './CusSearchModal'

export default {
  components: {
    CusSearchModal,
  },

  data () {
    return {
      ctmno: null,      // 고객번호
      hnglCtmnm: null,  // 고객한글명
      ctmDscno: null,   // 주민등록번호
      bzmno: null,      // 사업자번호
      ntlcd: null,      // 국적
      rgbrdFlgcd: null, // 내외국구분코드
    }
  },
  methods: {
    showDialog() {
      this.$refs.CusModal.showCusModal();
    },
    receiveSelectedCus(Cus){
      console.log('CusMain_receive selectedCus', Cus);

      // 각 컬럼에 세팅
      this.ctmno = Cus.ctmno;
      this.hnglCtmnm = Cus.hnglCtmnm;
      this.ctmDscno = Cus.ctmDscno.substr(0,6)+'-'+ Cus.ctmDscno.substr(7,1)+'******';
      this.bzmno = Cus.bzmno;
      this.ntlcd = Cus.ntlcd;
      this.rgbrdFlgcd = Cus.rgbrdFlgcd == "1" ? "내국인" : "외국인";
      
    },
  },

  created () {
    console.log("created...");
  }
}
</script>

<style lang="scss">

</style>
