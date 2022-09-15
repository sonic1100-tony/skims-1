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
                      <th colspan="2">법정대리인</th>
                      <th>직업코드</th>
                      <th colspan="2">직업명</th>
                      <th>상해급수</th>
                      <th>운전형태</th>
                      <th>이륜차부담보</th>
                    </tr>
                  </thead>

                  <tbody>
                    <tr v-for="planInsuredPerson in planInsuredPersonFormData" :key="planInsuredPerson.relpcSeqno">
                      <td>
                        <input type="checkbox" v-model="check" value="1" @click="checkboxClick(planInsuredPerson.coverages)"/>
                      </td>
                      <td>
                        <va-select size="small"
                          v-model="planInsuredPerson.relpcRelcd"
                          value-by="value"
                          :options="relpcRelcds"
                        />
                      </td>
                      <td>
                        <va-input v-model="planInsuredPerson.ctmDscno" />
                      </td>
                      <td><va-input v-model="planInsuredPerson.hnglRelnm" /></td>
                      <td><va-button icon="search" /></td>
                      <td>
                        <va-input v-model="planInsuredPerson.ppaYn" />
                      </td>
                      <td>
                        <va-button icon="search" />
                      </td>
                      <td>
                        <va-input v-model="planInsuredPerson.jbcd" />
                      </td>
                      <td>
                        <va-input v-model="planInsuredPerson.jbcnm" />
                      </td>
                      <td>
                        <va-button icon="search" />
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
      </va-card>
    </div>
  </div>
</template>

<script>
export default {
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
      ]
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
      console.log("change data 피보험자", obj);
      for(let i=0; i<obj.length; i++){
        obj[i].injrRnkcd = "0" + obj[i].injrRnkcd; 
      }
      this.planInsuredPersonFormData = { ...obj };
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
      if(this.check==""){
        this.coverages = selectedCoverages;
        this.$emit("insuredPersonChange", this.coverages);
      }
    }
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
