<template>
  <div class="markup-tables flex">
    <va-card title="피보험자" class="flex mb-4">
      <va-card-content>
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
                  <va-checkbox v-model="planInsuredPerson.check" />
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
      </va-card-content>
    </va-card>
  </div>
</template>

<script>
export default {
  data () {
    return {
      planInsuredPersonFormData: this.planInsuredPersionData,
      relpcRelcds: [
        {
          value: "01",
          text: '본인', 
        },
        {
          value: "02",
          text: '자녀', 
        },
        {
          value: "03",
          text: '배우자', 
        },
        {
          value: "04",
          text: '부모', 
        },
        {
          value: "05",
          text: '기타',
        }
      ],
      injrRnkcds: [
        {
          value: "1",
          text: '1급', 
        },
        {
          value: "2",
          text: '2급', 
        },
        {
          value: "3",
          text: '3급', 
        },
        {
          value: "4",
          text: '4급', 
        }
      ],
      drveTycds: [
        {
          value: "1",
          text: '자가용', 
        },
        {
          value: "2",
          text: '영업용', 
        },
        {
          value: "3",
          text: '출퇴근', 
        },
        {
          value: "4",
          text: '택시', 
        }
      ],
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
    planInsuredPersionData:{
    }
  },
  methods: {
    initData () {
      console.log("initData");
    },

    created () {
      console.log("created...");
      console.log(this.planBasicInfoData);
      // this.planBasicInfoFormData = this.planBasicInfoData;
      this.initData();
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
