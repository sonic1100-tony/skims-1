import { VuesticPlugin } from 'vuestic-ui';
import { createApp } from 'vue'
import { createGtm } from 'vue-gtm'
import { createI18n } from 'vue-i18n'
import App from './App.vue'
import './registerServiceWorker'
import router from './router'
import store from './store'
import vuesticGlobalConfig from './services/vuestic-ui/global-config'
import axios from 'axios'


const i18nConfig = {
  locale: 'kr',
  fallbackLocale: 'kr',
  messages: {
    kr: require('@/i18n/kr.json'),
    en: require('@/i18n/en.json'),
  }
}

const app = createApp(App)
app.use(store)
app.use(router)
if (process.env.VUE_APP_GTM_ENABLED === 'true') {
  const gtmConfig = {
    id: process.env.VUE_APP_GTM_KEY,
    debug: false,
    vueRouter: router,
  }
  app.use(createGtm(gtmConfig))
}
app.use(createI18n(i18nConfig))
app.use(VuesticPlugin, vuesticGlobalConfig)
app.config.globalProperties.$axios = axios; 
app.mount('#app')
