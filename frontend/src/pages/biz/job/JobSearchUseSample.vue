<template>
  <va-card>
    <va-card-title>직업찾기</va-card-title>
    <va-card-content>
      <div class="row">
        <div class="flex md12">
          <va-button @click="showDialog()">직업찾기팝업</va-button>
        </div>
      </div>
      <div class="row">
        <va-input
          class="mb-4"
          v-model="jobCode"
          label="직업코드"
          placeholder=""
          readonly
        />
        <va-input
          class="mb-4"
          v-model="jobName"
          label="직업명"
          placeholder=""
          readonly
        />
      </div>
    </va-card-content>
  </va-card>

  <JobSearchModal ref="jobModal" @receiveSelectedJob="receiveSelectedJob"/>
</template>

<script>
import JobSearchModal from './JobSearchModal'

export default {
  components: {
    JobSearchModal,
  },

  data () {
    return {
      jobName: null,
      jobCode: null,
    }
  },
  methods: {
    showDialog() {
      this.$refs.jobModal.showJobModal();
    },
    receiveSelectedJob(job){
      console.log('receive selectedJob', job);
      this.jobCode = job.jbcd;
      this.jobName = job.jbnm;
    },
  },

  created () {
    console.log("created...");
  }
}
</script>

<style lang="scss">

</style>
