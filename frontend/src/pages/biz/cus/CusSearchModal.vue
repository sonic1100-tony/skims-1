<template>
  <va-modal
    v-model="showModal"
    hide-default-actions
    overlay-opacity="0.2"
  >
    <template #header>
      <h2>고객조회</h2>
    </template>
    <div>
      <CusSearch @setSelectedCus="setSelectedCus"/>
      
    </div>
  </va-modal>
</template>

<script>
import CusSearch from './CusSearch'

export default {
  components: {
    CusSearch,
  },
  data () {
    return {
      showModal: false,
      editInsPrsnIndex: null,
    }
  },
  methods: {
    showCusModal(editInsPrsnIndex){
      this.showModal = true;
      this.editInsPrsnIndex = editInsPrsnIndex;
    },
    sendSelectedCus(Cus){
      console.log('send selectedCus', Cus);
      this.showModal = false;
      this.$emit("receiveSelectedCus", {
        ...Cus, 
      });
    },
    setSelectedCus( selectedCus ){
      console.log('CusSearchModal_selectedCus', selectedCus);
      this.selectedCus = selectedCus;
      this.selectedCus.editInsPrsnIndex = this.editInsPrsnIndex;

      // 메인에 리턴..
      this.$emit("receiveSelectedCus", {
        ...this.selectedCus,
      });
    },
    hideCusModal(){
      this.showModal = false;
    },
  },
  created () {
    console.log("created...");
  }
}
</script>

<style lang="scss">

</style>
