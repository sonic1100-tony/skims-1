<template>
  <va-card>
    <va-card-content>
      <va-button size="small" @click="sendSelectedJob()">
        선택
      </va-button>
    </va-card-content>
  </va-card>
</template>

<script>

export default {
  components: {
  },
  data () {
    return {
    }
  },
  props : {
  },
  methods: {
    sendSelectedJob(){
      this.$emit("sendSelectedJob");
    }
  },

  created () {
    console.log("created...");
  }, 
  mounted () {
    console.log("mounted...");
  },
}
</script>

<style lang="scss">
</style>
