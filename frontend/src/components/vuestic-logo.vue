<template>
  <img src="./logo.png" class="va-icon-vuestic" :height="height"/>
</template>
<script>
import { useColors } from "vuestic-ui";

export default {
  name: "VaIconVuestic",

  props: {
    height: { type: [Number, String], default: 25 },
    color: { type: [String], default: "primary" },
  },

  computed: {
    colorsComputed() {
      const { getColor, shiftHSLAColor } = useColors();
      const color = getColor(this.color, "primary");

      return { start: color, end: shiftHSLAColor(color, { l: -20 }) };
    },
  },
};
</script>
