<template>

  <td> <va-checkbox class="mb-2" v-model="item.check" id="check" label="" /> </td>
  <td> <va-input class="mb-2" v-model="item.hnglRelnm" /> </td>
  <td> <va-button icon="search"/> </td>
  <td> <va-input class="mb-2" v-model="item.ctmno" /> </td>
  <td> 
    <va-select size="small"
      v-model="item.relpcDscnoFlgcd"
      value-by="value"
      :options="relpcDscnoFlgcds"
    />
  </td>
  <td> <va-input class="mb-2" v-model="item.cntadSeqno" /> </td>
  <td> <va-input class="mb-2" v-model="item.cntadFlgcd" /> </td>
  <td> <va-input class="mb-2" v-model="item.legalRepReqYN" /> </td>
  <td> </td>
  <td> <va-checkbox class="mb-2" v-model="item.chkPrsRelpcYN" id="chkPrsRelpcYN" label="" /> </td>

  <!--
  <td>
    <va-badge :color="getStatusColor(item.completed)">
      {{ getStatus(item.completed) }}
    </va-badge>
  </td>
  -->
</template>

<script>

export default {
  data () {
          console.log("time vue return...");
    return {
        check:'',
        hnglRelnm: '',
        ctmno: '',
        relpcDscnoFlgcd: '',
        relpcDscnoFlgcds:[
          { value: "01", text: "본인" },
          { value: "02", text: "부모" },
          { value: "03", text: "자녀" },
          { value: "04", text: "형제자매" },
          { value: "99", text: "기타" },
        ],
        cntadSeqno: '',
        cntadFlgcd: '',
        legalRepReqYN: '',
        chkPrsRelpcYN: '',
    }
  },
  props : {
    item:{
      type: Object,
    },
    tableData:{ //테스트데이터
        check:'',
        plyno:'010101',
        aid: 12,
        hnglRelnm: '체리',
        ctmno: '',
        relpcDscnoFlgcd: '01',
        cntadSeqno: '',
        cntadFlgcd: '',
        legalRepReqYN: '',
        chkPrsRelpcYN: '',
        age: '25',
    },
  },
  methods: {
    getStatusColor (completed) {
      if (completed) { // 완료 
        return 'success'
      }

      return 'info'
    },
    getStatus (completed) {
      if (completed) { // 완료
        return '수행완료'
      }

      return '수행전'
    },
  },

  created () {
    console.log("created...");
  }
}
</script>

<style lang="scss">
</style>
