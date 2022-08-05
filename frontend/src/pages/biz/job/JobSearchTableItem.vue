<template>
  <td>{{ item.userId }}</td>
  <td>{{ item.id }}</td>
  <td>{{ item.title }}</td>
  <td>
    <va-badge :color="getStatusColor(item.completed)">
      {{ getStatus(item.completed) }}
    </va-badge>
  </td>
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
