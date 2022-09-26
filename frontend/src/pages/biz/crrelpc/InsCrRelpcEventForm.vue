<template>
  <va-card>
    <!-- <va-card-title>Result</va-card-title> -->
    <va-card-content>
      <div class="flex md15" style="text-align: right;">
        <va-button class="mr-2 mb-2" size="small" @click="btnRA()">저장</va-button>
        <va-button class="mr-2 mb-2" size="small" @click="btnRD()">삭제</va-button>
        <va-button class="mr-2 mb-2" size="small" @click="btnClose()">닫기</va-button>
      </div>
    </va-card-content>
  </va-card>
</template>

<script>
import InsCrRelpcSearchTableItem from './InsCrRelpcSearchTableItem'

export default {
  components: {
    InsCrRelpcSearchTableItem,
  },
  data () {
    return {
      eventFormData:null,
    }
  },
  methods: {
    initData () {
      this.eventFormData = {  //임시
        "aid": InsCrRelpcSearchTableItem.props.tableData.aid,
        "plyno": InsCrRelpcSearchTableItem.props.tableData.plyno,
        "relpcSeqno": 1,
        "apNddt": new Date().toJSON().slice(0,10),
        "apStrdt": new Date().toJSON().slice(0,10),
        "age": InsCrRelpcSearchTableItem.props.tableData.age,
        "ikdGrpcd": "AA",
        "hnglRelnm": InsCrRelpcSearchTableItem.props.tableData.hnglRelnm,
        "cntadSeqno": 0,
        "cntadFlgcd": "30",
        "ctmno": "8608161357924",
        "inpUsrId": "100098",
        "prmPymRt": 0,
        "relpcDscnoFlgcd":InsCrRelpcSearchTableItem.props.tableData.relpcDscnoFlgcd,
        "valdNdsYn": "Y",
        "ndsno": "",
        "ndsApStrDthms": new Date(),
        "ndsApNdDthms": new Date(),
        "relpcTpcd": "BB",
        "relpcStcd": "0101",
        "utRt": 10,
        "inpDthms": new Date(),
        "mdfUsrId": "100098",
        "mdfDthms": new Date()
      };
    },
    btnRA () {
      console.log('저장');
      this.$emit("dataSave", {
        ...this.eventFormData,
      });
    },
    btnRD () {
      console.log('삭제');
      this.$emit("dataDelete", {
        ...this.eventFormData,
      });
    },
    btnClose () {
      console.log('닫기');
      this.$emit("btnClose", {
        ...this.eventFormData,
      });
    },
  },
 
  created () {
    console.log("Event created...");
    this.initData();
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
