<template>
  <va-card>
    <va-card-title>직업찾기</va-card-title>
    <va-card-content>
      <div class="row">
        <div class="flex md3">
          <va-input
            label="직업명"
            v-model="searchFormData.jobName"
            :rules="[value => (value && value.length > 0) || 'Field is required']"
          />
        </div>
        <div class="flex md2">
          <va-checkbox class="mb-2" v-model="searchFormData.searchJobName" label="직업명" />
        </div>
        <div class="flex md2">
          <va-checkbox class="mb-2" v-model="searchFormData.searchJobDetailName" label="세부직업" />
        </div>
        <div class="flex md3">
          <va-input
            label="직업코드"
            v-model="searchFormData.jobCode"
            :rules="[value => (value && value.length > 0) || 'Field is required']"
          />
        </div>
        <div class="flex md2 ">
          <va-button size="small" @click="search()">조회</va-button>
        </div>
      </div>
      <!-- <div class="row">
        <div class="flex md12 ">
          <va-button size="small" @click="search()">가</va-button>
          <va-button size="small" @click="search()">나</va-button>
          <va-button size="small" @click="search()">다</va-button>
          <va-button size="small" @click="search()">라</va-button>
          <va-button size="small" @click="search()">마</va-button>
          <va-button size="small" @click="search()">바</va-button>
          <va-button size="small" @click="search()">사</va-button>
          <va-button size="small" @click="search()">아</va-button>
          <va-button size="small" @click="search()">자</va-button>
          <va-button size="small" @click="search()">차</va-button>
          <va-button size="small" @click="search()">카</va-button>
          <va-button size="small" @click="search()">타</va-button>
          <va-button size="small" @click="search()">파</va-button>
          <va-button size="small" @click="search()">하</va-button>
          <va-button size="small" @click="search()">A-E</va-button>
          <va-button size="small" @click="search()">F-J</va-button>
          <va-button size="small" @click="search()">K-O</va-button>
          <va-button size="small" @click="search()">P-T</va-button>
          <va-button size="small" @click="search()">U-Z</va-button>
        </div>
      </div> -->
      <!-- <div class="row">
        <div class="flex md4">
          <table class="va-table" style="width: 100%;">
            <thead>
              <tr>
                <th>전체</th>
              </tr>
            </thead>

            <tbody>
              <tr v-for="item in rootList" :key="item.id">
                <td></td>>
              </tr>
            </tbody>
          </table>
        </div>

        <div class="flex md4">
          <table class="va-table"  style="width: 100%;">
            <thead>
              <tr>
                <th>중분류</th>
              </tr>
            </thead>

            <tbody>
              <tr v-for="item in lever2List" :key="item.id">
                <td></td>>
              </tr>
            </tbody>
          </table>
        </div>

        <div class="flex md4">
          <table class="va-table" style="width: 100%;">
            <thead>
              <tr>
                <th>소분류</th>
              </tr>
            </thead>

            <tbody>
              <tr v-for="item in lever3List" :key="item.id">
                <td></td>>
              </tr>
            </tbody>
          </table>
        </div>
      </div> -->
    </va-card-content>
  </va-card>
</template>

<script>

export default {
  data () {
    return {
      searchFormData:null,
      rootList:[],
      lever2List:[],
      lever3List:[],
    }
  },
  methods: {
    initData () {
      this.searchFormData = {
        searchJobName: true,
        searchJobDetailName: true,
        jobName: '',
        jobCode: '',
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
