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
      planBasicInfoFormData: {},
    }
  },
  props : {
    planBasicInfoData: {
      type: Object
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
  // child component
  /**
   * props <-> v-model vue2.X 특정버전대부터 데이터연결을 지원하지않음. (데이터양뱡향 바인딩을 막으려는 것으로 보임.)
   * props는 readonly 성격의 데이터를 사용할 때 써야함. (like datagrid)
   * 컴포넌트내에 변경해야하는 데이터는 내부 data에 복사 후 컴포넌트 자신에서만 사용함.
   * 생각할수 있는 방법
   * 1. 부모컴포넌트에서 명시적으로 자식컴포넌트 데이터를 셋팅하는 함수를 명시적으로 호출함.
   * // 자식함수 호출 ref로 자식컴포넌트 지정
   * JobSearchForm.vue 예시 
   * this.$refs.searchForm.initData();
   * 
   * 2. Watch prop 변경감지
   * Watch로 prop가 변경되는 시점에 data 내 변수에 값을 복사해서 넘겨줌
   * 
   * https://kamang-it.tistory.com/entry/Vue22props-%EB%B3%80%EA%B2%BD%EC%9D%98-%EA%B0%90%EC%8B%9C%EC%9E%90-watch
   */
  watch: {
    planBasicInfoData: function ( obj ) {
      console.log("change data", obj);
      obj.apldt = new Date(obj.apldt); //청약일자
      obj.insSt = new Date(obj.insSt); //보험시기
      obj.insClstr = new Date(obj.insClstr); //보험종기
      this.planBasicInfoFormData = { ...obj };
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
