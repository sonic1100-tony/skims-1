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
    }
  },
  methods: {
    showCusModal(){
      this.showModal = true;
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

      // 메인에 리턴..
      this.$emit("receiveSelectedCus", {
        ...selectedCus,
      });
    },
  },
  created () {
    console.log("created...");
  }
}
</script>

<style lang="scss">

</style>
