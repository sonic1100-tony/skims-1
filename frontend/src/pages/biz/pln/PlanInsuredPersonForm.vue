<template>
  <div class="collapse-page">
    <div class="markup-tables flex">
      <va-card title="피보험자" class="flex mb-4">
        <va-card-content>
          <va-accordion v-model="basicAccordionValue">
            <va-collapse class="mb-4" :header="$t('newPlan.insuredPersion.title')">
              <div class="table-wrapper">
                <table class="va-table">
                  <thead>
                    <tr>
                      <th>선택</th>
                      <th>주피관계</th>
                      <th>주민등록번호</th>
                      <th colspan="2">피보험자명</th>
                      <th>직업코드</th>
                      <th colspan="2">직업명</th>
                      <th>상해급수</th>
                      <th>운전형태</th>
                      <th>이륜차운전여부</th>
                    </tr>
                  </thead>

                  <tbody>
                    <tr v-for="planInsuredPerson in planInsuredPersonFormData" :key="planInsuredPerson.relpcSeqno">
                      <td>
                        <input type="checkbox" v-model="check" value="1" @click="checkboxClick(planInsuredPerson)"/>
                      </td>
                      <td>
                        <va-select size="small"
                          v-model="planInsuredPerson.relpcRelcd"
                          value-by="value"
                          :options="relpcRelcds"
                        />
                      </td>
                      <td>
                        <va-input
                          class="mb-4"
                          v-model="planInsuredPerson.ctmDscnoMask"
                          placeholder=""
                          readonly
                        />
                      </td>
                      <td>
                        <va-input
                          class="mb-4"
                          v-model="planInsuredPerson.hnglRelnm"
                          placeholder=""
                          readonly
                        />
                      </td>
                      <td><va-button icon="search" @click="showCusDialog(this.planInsuredPersonFormData.indexOf(planInsuredPerson))" /></td>
                      <td>
                        <va-input v-model="planInsuredPerson.jbcd" />
                      </td>
                      <td>
                        <va-input v-model="planInsuredPerson.jbnm" />
                      </td>
                      <td>
                        <va-button icon="search" @click="showJobDialog(this.planInsuredPersonFormData.indexOf(planInsuredPerson))" />
                      </td>
                      <td>
                        <va-select size="small"
                          v-model="planInsuredPerson.injrRnkcd"
                          value-by="value"
                          :options="injrRnkcds"
                        />
                      </td>
                      <td>
                        <va-select size="small"
                          v-model="planInsuredPerson.drveTycd"
                          value-by="value"
                          :options="drveTycds"
                        />
                      </td>
                      <td>
                        <va-select
                          size="small"
                          v-model="planInsuredPerson.twhvcDrveYn"
                          value-by="value"
                          :options="twhvcDrveYns"
                        />
                      </td>
                    </tr>
                  </tbody>
                </table>
              </div>
            </va-collapse>
          </va-accordion>
        </va-card-content>
        <va-button :rounded="false" size="small" class="mr-4 mb-2" v-on:click="modify" color="warning">{{'피보험자 수정'}}</va-button>
      </va-card>
    </div>
    <CusSearchModal ref="CusModal" @receiveSelectedCus="receiveSelectedCus"/>
    <JobSearchModal ref="JobModal" @receiveSelectedJob="receiveSelectedJob"/>
  </div>
</template>

<script>
import CusSearchModal from '../cus/CusSearchModal'
import JobSearchModal from '../job/JobSearchModal'

export default {
  components: {
    CusSearchModal,
    JobSearchModal,
  },

  data () {
    return {
      coverages: [],
      check: [],
      basicAccordionValue: [true],
      planInsuredPersonFormData: this.planInsuredPersonData,
      relpcRelcds: [],
      injrRnkcds: [],
      drveTycds: [],
      twhvcDrveYns: [
        {
          value: "1",
          text: '예',
        },
        {
          value: "0",
          text: '아니오',
        }
      ],

      //고객조회팝업 리턴값
      ctmno: null,          // 고객번호
      hnglCtmnm: null,      // 고객한글명
      ctmDscnoMask: null,   // 주민등록번호(마스킹)
      bzmno: null,          // 사업자번호
      ntlcd: null,          // 국적
      rgbrdFlgcd: null,      // 내외국구분코드

      //직업코드 리턴값
      jbcd: null,
      jbnm: null
    }
  },
  props : {
    planInsuredPersonData:{
      type: Object
    },
    goodsInformation: {
      type: Object
    }
  },
  watch: {
    planInsuredPersonData: function ( obj ) {
      //console.log("change data 피보험자", obj);
      this.planInsuredPersonFormData = obj;
      for(let i=0; i<obj.length; i++){
        this.planInsuredPersonFormData[i].ctmDscnoMask = obj[i].ctmDscno;
      }
    },
    goodsInformation: function ( obj ) {
      for(let i=0; i<obj.relcd.length; i++){
        const array = {
          value: obj.relcd[i].code,
          text: obj.relcd[i].value
        }
        this.relpcRelcds.push(array);
      }

      for(let i=0; i<obj.injrRnkcd.length; i++){
        const array = {
          value: obj.injrRnkcd[i].code,
          text: obj.injrRnkcd[i].value
        }
        this.injrRnkcds.push(array);
      }

      for(let i=0; i<obj.drveTycd.length; i++){
        const array = {
          value: obj.drveTycd[i].code,
          text: obj.drveTycd[i].value
        }
        this.drveTycds.push(array);
      }
    }
  },
  methods: {
    initData () {
      console.log("initData");
    },

    created () {
      console.log("created...");
      //console.log(this.planBasicInfoData);
      // this.planBasicInfoFormData = this.planBasicInfoData;
      this.initData();
    },
    checkboxClick(selectedCoverages) {
      //console.log("selectedCoverages" , selectedCoverages);
      if(this.check==""){
        this.coverages = selectedCoverages;
        this.$emit("insuredPersonChange", this.coverages);
      }
    },
    modify() {
      //console.log("modify check " , this.planInsuredPersonFormData);
      this.$emit("modify", this.planInsuredPersonFormData);
    },
    // 고객조회팝업 호출
    showCusDialog(editInsPrsnIndex) {
      this.$refs.CusModal.showCusModal(editInsPrsnIndex);
    },
    // 직업조회팝업 호출
    showJobDialog(editInsPrsnIndex) {
      this.$refs.JobModal.showJobModal(editInsPrsnIndex);
    },
    // 고객조화팝업 리턴
    receiveSelectedCus(Cus){
      console.log('CusMain_receive selectedCus', Cus);

      // 리턴값 저장
      this.ctmno = Cus.ctmno;
      this.hnglCtmnm = Cus.hnglCtmnm;
      this.ctmDscnoMask = Cus.ctmDscno.substr(0,6)+'-'+ Cus.ctmDscno.substr(7,1)+'******';
      this.bzmno = Cus.bzmno;
      this.ntlcd = Cus.ntlcd;
      this.rgbrdFlgcd = Cus.rgbrdFlgcd == "1" ? "내국인" : "외국인";

      //리턴값 세팅
      this.planInsuredPersonFormData[Cus.editInsPrsnIndex].ctmDscno = this.ctmDscno;          // 주민등록번호
      this.planInsuredPersonFormData[Cus.editInsPrsnIndex].ctmDscnoMask = this.ctmDscnoMask;  // 주민등록번호 마스킹
      this.planInsuredPersonFormData[Cus.editInsPrsnIndex].hnglRelnm = Cus.hnglCtmnm;         // 고객명
      this.planInsuredPersonFormData[Cus.editInsPrsnIndex].ctmno = Cus.ctmno;                 // 고객번호

      // 팝업 자동닫기
      this.$refs.CusModal.hideCusModal();
    },

    // 직업조화팝업 리턴
    receiveSelectedJob(Job){
      console.log('JobMain_receive selectedJob', Job);

      // 리턴값 저장
      this.jbcd = Job.jbcd;
      this.jbnm = Job.jbnm;

      //리턴값 세팅
      this.planInsuredPersonFormData[Job.editInsPrsnIndex].jbcd = Job.jbcd;          // 직업코드
      this.planInsuredPersonFormData[Job.editInsPrsnIndex].jbnm = Job.jbnm;  // 직업명

      // 팝업 자동닫기
      this.$refs.JobModal.hideJobModal();
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
