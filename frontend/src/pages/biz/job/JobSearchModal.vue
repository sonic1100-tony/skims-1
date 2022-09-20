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
    }
  },
  methods: {
    showJobModal(){
      this.showModal = true;
    },
    sendSelectedJob(job){
      console.log('send selectedJob', job);
      this.showModal = false;
      this.$emit("receiveSelectedJob", {
        ...job,
      });
    }
  },
  created () {
    console.log("created...");
  }
}
</script>

<style lang="scss">

</style>
