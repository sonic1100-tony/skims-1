<template>
  <div class="collapse-page">
    <div class="row">
      <div class="flex xs12">
        <va-card>
          <va-card-content>
            <va-accordion v-model="basicAccordionValue">
              <va-collapse class="mb-4" :header="$t('newPlan.basicInfo.title')">
                <div class="row">
                  <div class="flex md2"> 
                    <va-input
                      :label="$t('common.title.goodsName')"
                      v-model="planBasicInfoFormData.gdcnm"
                      readonly
                    />
                  </div>
                  <div class="flex md2">
                    <va-input
                      :label="$t('common.title.goodsCode')"
                      v-model="planBasicInfoFormData.gdcd"
                      readonly
                    />
                  </div>
                  <div class="flex md2">
                    <va-select
                      :label="$t('common.title.insuranceTerm')"
                      v-model="planBasicInfoFormData.ndcd"
                      value-by="value"
                      :options="insuranceTerms"
                    />
                  </div>
                  <div class="flex md2">
                    <va-select
                      :label="$t('common.title.paymentTerm')"
                      v-model="planBasicInfoFormData.pymTrmcd"
                      value-by="value"
                      :options="paymentTerms"
                    />
                  </div>
                  <div class="flex md2">
                    <va-select
                      :label="$t('common.title.paymentCycle')"
                      v-model="planBasicInfoFormData.pymCyccd"
                      value-by="value"
                      :options="paymentCycles"
                    />
                  </div>
                </div>
                <div class="row">
                  <div class="flex md2">
                    <va-date-input 
                      :label="$t('common.title.applyDate')"
                      v-model="planBasicInfoFormData.apldt"
                    />
                  </div>
                  <div class="flex md2">
                    <va-date-input 
                      :label="$t('common.title.insuranceStartDate')"
                      v-model="planBasicInfoFormData.insSt"
                    />
                  </div>
                  <div class="flex md2">
                    <va-date-input 
                      :label="$t('common.title.insuranceCloseDate')"
                      v-model="planBasicInfoFormData.insClstr"
                    />
                  </div>
                </div>
              </va-collapse>
            </va-accordion>
          </va-card-content>
        </va-card>
      </div>
    </div>
  </div>
</template>

<script>

export default {
  data () {
    return {
      insuranceTerms: [
        {
          value: "01",
          text: '1년',
        },
        {
          value: "02",
          text: '2년',
        },
        {
          value: "03", 
          text: '3년',
        },
        {
          value: "04", 
          text: '4년',
        },
        {
          value: "05", 
          text: '5년',
        }
      ],
      paymentTerms: [
        {
          value: "01",
          text: '1년',
        },
        {
          value: "02",
          text: '2년',
        },
        {
          value: "03", 
          text: '3년',
        },
        {
          value: "04", 
          text: '4년',
        },
        {
          value: "05", 
          text: '5년',
        }
      ],
      paymentCycles: [
        {
          value: "01",
          text: '월납', 
        },
        {
          value: "03",
          text: '3월납', 
        },
        {
          value: "06",
          text: '6월납', 
        },
        {
          value: "12",
          text: '년납', 
        },
        {
          value: "00",
          text: '일시납',
        }
      ],
      basicAccordionValue: [true],
      planBasicInfoFormData: this.planBasicInfoData,
    }
  },
  props : {
    planBasicInfoData: {
      // type: Object
      // goodsCode: String,
      // goodsName: String,
      // applyDate: String,
      // insuranceTerm: String,
      // paymentTerm: String,
      // paymentCycle: String,
      // insuranceStartDate: String,
      // insuranceCloseDate: String
    }
  },
  methods: {
    initData () {
      // this.planBasicInfoFormData = this.planBasicInfoData;

      // this.planBasicInfoFormData.applyDate = this.parseDate(this.planBasicInfoData.applyDate);
      // this.planBasicInfoFormData.insuranceStartDate = this.parseDate(this.planBasicInfoData.insuranceStartDate);
      // this.planBasicInfoFormData.insuranceCloseDate = this.parseDate(this.planBasicInfoData.insuranceCloseDate);

      // this.planBasicInfoFormData = {
      //   goodsCode: "AA0000",
      //   goodsName: "SKIMS 테스트 보험",
      //   applyDate: "2022-01-01",
      //   insuranceTerm: "선택",
      //   paymentTerm:  "선택",
      //   paymentCycle: "선택",
      //   insuranceStartDate: "2022-01-01",
      //   insuranceCloseDate: "2023-01-01"
      // };
    },

    insuranceTermChange () {
      console.log('search');
      this.$emit("search", {
        ...this.planBasicInfoData,
      });
    },

    logMethod () {
      console.log(this);
    },
    
    formatDate (date) {
      return `${date.getFullYear()}-${date.getMonth() + 1}-${date.getDate()}`
    },

    parseDate (text) {
      const [year, month, day] = text.split('-')

      return new Date(year, month - 1, day)
    },
  },

  created () {
    console.log("created...");
    console.log(this.planBasicInfoData);
    // this.planBasicInfoFormData = this.planBasicInfoData;
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
