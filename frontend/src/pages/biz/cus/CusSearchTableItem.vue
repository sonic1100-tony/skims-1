<template>
  <!--
  CTMNO  
  HNGL_CTMNM
  CTM_DSCNO 
  NTLCD  	
    -->
  <td>{{ item.ctmno }}</td>
  <td>{{ item.hnglCtmnm }}</td>
  <td>{{ getRrnoMask(item.ctmDscno) }}</td>
  <td>{{ item.ntlcd }}</td>
</template>

<script>

export default {
  data () {
    return {
    }
  },
  props : {
    item:{
      type: Object
    }
  },
  methods: {
    //주민등록번호 마스킹처리
    getRrnoMask (ctmDscno) {
      return ctmDscno.substr(0,6)+'-'+ctmDscno.substr(7,1)+'******';
    },
  },

  created () {
    console.log("created...");
  }
}
</script>

<style lang="scss">
</style>
