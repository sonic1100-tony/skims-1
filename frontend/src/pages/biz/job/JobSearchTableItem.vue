<template>
  <td>{{ item.jbcd }}</td>
  <td>{{ item.jbnm }}</td>
  <td>{{ item.injrRnkcd }}</td>
  <td>{{ item.injrGrdcd }}</td>
  <td>{{ item.crJbcd }}</td>
  <td>{{ item.trfRnkcd }}</td>
  <td>{{ item.xcCvrYn }}</td>
  <!-- <td>
    <va-badge :color="getStatusColor(item.completed)">
      {{ getStatus(item.completed) }}
    </va-badge>
  </td> -->
</template>

<script>

export default {
  data () {
    return {
    }
  },
  props : {
    item:{
      type: Object
    }
  },
  methods: {
    getStatusColor (completed) {
      if (completed) { // 완료 
        return 'success'
      }

      return 'info'
    },
    getStatus (completed) {
      if (completed) { // 완료
        return '수행완료'
      }

      return '수행전'
    },
  },

  created () {
    console.log("created...");
  }
}
</script>

<style lang="scss">
</style>
