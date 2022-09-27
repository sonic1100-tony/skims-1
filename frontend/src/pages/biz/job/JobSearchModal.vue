<template>
  <va-modal
    v-model="showModal"
    hide-default-actions
    overlay-opacity="0.2"
  >
    <template #header>
      <h2>직업조회</h2>
    </template>
    <div>
      <JobSearch @sendSelectedJob="sendSelectedJob"/>
    </div>
  </va-modal>
</template>

<script>
import JobSearch from './JobSearch'

export default {
  components: {
    JobSearch,
  },
  data () {
    return {
      showModal: false,
      editInsPrsnIndex: null,
    }
  },
  methods: {
    showJobModal(editInsPrsnIndex){
      this.showModal = true;
      this.editInsPrsnIndex = editInsPrsnIndex;
    },
    sendSelectedJob(job){
      console.log('send selectedJob', job);
      // this.showModal = false;
      this.selectedJob = job;
      this.selectedJob.editInsPrsnIndex = this.editInsPrsnIndex;
      this.$emit("receiveSelectedJob", {
        ...job,
      });
    },
    setSelectedJob( selectedJob ){
      console.log('JobSearchModal_selectedJob', selectedJob);
      this.selectedJob = selectedJob;
      this.selectedJob.editInsPrsnIndex = this.editInsPrsnIndex;

      // 메인에 리턴..
      // this.$emit("receiveSelectedJob", {
      //   ...this.selectedJob,
      // });
    },
    hideJobModal(){
      this.showModal = false;
    },
  },
  created () {
    console.log("created...");
  }
}
</script>

<style lang="scss">

</style>
