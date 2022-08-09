<template>
  <va-card>
    <!-- <va-card-title>{{ $t("newPlan.basicInfo.title") }}</va-card-title> -->
    <va-card-content>
      <va-accordion v-model="basicAccordionValue">
        <va-collapse class="mb-4" :header="$t('newPlan.basicInfo.title')">
          <div class="row">
            <div class="flex md2">
              <va-input
                :label="$t('common.title.goodsName')"
                v-model="planBasicInfoFormData.goodsName"
                :rules="[value => (value && value.length != 10) || 'Field is 10 digit required']"
              />
            </div>
            <div class="flex md2">
              <va-input
                :label="$t('common.title.goodsCode')"
                v-model="planBasicInfoFormData.goodsCode"
                :rules="[value => (value && value.length != 10) || 'Field is 10 digit required']"
              />
            </div>
            <div class="flex md2">
              <va-input
                :label="$t('common.title.applyDate')"
                v-model="planBasicInfoFormData.applyDate"
                :rules="[value => (value && value.length != 10) || 'Field is 10 digit required']"
              />
            </div>
            <div class="flex md2">
              <va-select
                class="mb-4"
                :label="$t('common.title.insuranceTerm')"
                v-model="planBasicInfoFormData.insuranceTerm"
                :options="insuranceTerm"
              />
            </div>
            <div class="flex md2">
              <va-select
                class="mb-4"
                :label="$t('common.title.paymentTerm')"
                v-model="planBasicInfoFormData.paymentTerm"
                :options="paymentTerm"
              />
            </div>
          </div>
          <div class="row">
            <div class="flex md2">
              <va-select
                class="mb-4"
                :label="$t('common.title.paymentCycle')"
                v-model="planBasicInfoFormData.paymentCycle"
                :options="paymentCycle"
              />
            </div>
            <div class="flex md2">
              <va-input
                :label="$t('common.title.insuranceStartDate')"
                v-model="planBasicInfoFormData.insuranceStartDate"
                :rules="[value => (value && value.length > 0) || 'Field is required']"
              />
            </div>
            <div class="flex md2">
              <va-input
                :label="$t('common.title.insuranceCloseDate')"
                v-model="planBasicInfoFormData.insuranceCloseDate"
                :rules="[value => (value && value.length > 0) || 'Field is required']"
              />
            </div>
          </div>
        </va-collapse>
      </va-accordion>
    </va-card-content>
  </va-card>
</template>

<script>

export default {
  data () {
    return {
      insuranceTerm: ['1년', '2년', '3년', '4년', '5년'],
      paymentTerm: ['1년', '2년', '3년', '4년', '5년'],
      paymentCycle: ['월납', '3월납', '6월납', '년납', '일시납'],
      basicAccordionValue: [true],
      planBasicInfoFormData: null
    }
  },
  methods: {
    initData () {
      this.planBasicInfoFormData = {
        goodsCode: "AA0000",
        goodsName: "SKIMS 테스트 보험",
        applyDate: "2022-01-01",
        insuranceTerm: "선택",
        paymentTerm:  "선택",
        paymentCycle: "선택",
        insuranceStartDate: "2022-01-01",
        insuranceCloseDate: "2023-01-01"
      };
    },
    search () {
      console.log('search');
      this.$emit("search", {
        ...this.searchFormData,
      });
    },
  },

  created () {
    console.log("created...");
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
