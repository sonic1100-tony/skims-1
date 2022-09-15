<template>
  <div class="collapse-page">
    <div class="row">
      <div class="flex xs12">
        <va-card>
          <va-card-content>
            <va-accordion v-model="basicAccordionValue">
              <va-collapse class="mb-4" :header="$t('newPlan.premium.title')">
                <div class="row">
                  <div class="flex md2"> 
                    <va-input
                      :label="$t('common.title.basicPremium')"
                      v-model="planPremiumFormData.baPrm"
                      readonly
                    />
                  </div>
                  <div class="flex md2">
                    <va-input
                      :label="$t('common.title.applicationPremium')"
                      v-model="planPremiumFormData.apPrm"
                      readonly
                    />
                  </div>
                  <div class="flex md2">
                    <va-input
                      :label="$t('common.title.discountPremium')"
                      v-model="planPremiumFormData.dcPrm"
                      readonly
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
      basicAccordionValue: [true],
      planPremiumFormData: this.planPremiumData,
    }
  },
  props : {
    planPremiumData: {
    }
  },
  methods: {
    initData () {
      console.log("initData");
    },

    insuranceTermChange () {
      console.log('search');
      this.$emit("search", {
        ...this.planPremiumFormData,
      });
    },

    logMethod () {
      console.log("logMethod");
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
