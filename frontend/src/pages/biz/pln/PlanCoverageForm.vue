<template>
  <div class="collapse-page">
    <div class="markup-tables flex">
      <va-card title="담보" class="flex mb-4">
        <va-card-content>
          <va-accordion v-model="basicAccordionValue">
            <va-collapse class="mb-4" :header="$t('newPlan.coverage.title')">
              <div class="table-wrapper">
                <table class="va-table">
                  <thead>
                    <tr>
                      <th>선택</th>
                      <th>담보코드</th>
                      <th>담보명</th>
                      <th>보험기간</th>
                      <th>납입기간</th>
                      <th>가입금액</th>
                      <th>기본보험료</th>
                      <th>적용보험료</th>
                    </tr>
                  </thead>

                  <tbody>
                    <tr v-for="planCoverage in planCoverageFormData" :key="planCoverage.cvrcd">
                      <td>
                        <va-checkbox v-model="planCoverage.check" />
                      </td>
                      <td>
                        <va-input v-model="planCoverage.cvrcd" />
                      </td>
                      <td>
                        <va-input v-model="planCoverage.cvrnm" />
                      </td>
                      <td>
                        <va-select size="small"
                          v-model="planCoverage.ndcd"
                          value-by="value"
                          :options="insuranceTerms"
                        />
                      </td>
                      <td>
                        <va-select size="small"
                          v-model="planCoverage.pymTrmcd"
                          value-by="value"
                          :options="paymentTerms"
                        />
                      </td>
                      <td>
                        <va-input v-model="planCoverage.isamt" />
                      </td>
                      <td>
                        <va-input v-model="planCoverage.baPrm" />
                      </td>
                      <td>
                        <va-input v-model="planCoverage.apPrm" />
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
      basicAccordionValue: [true],
      planCoverageFormData: this.planCoverageData,
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
    }
  },
  props : {
    planCoverageData: {
    }
  },
  methods: {
    initData () {
      console.log("initData");
    },

    created () {
      console.log("created...");
      console.log(this.planCoverageData);
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
