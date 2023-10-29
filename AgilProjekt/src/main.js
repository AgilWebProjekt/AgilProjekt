import './assets/main.css'

import { createApp } from 'vue'
import { createPinia } from 'pinia'

import App from './App.vue'
import router from './router'
import gAuthPlugin from 'vue3-google-oauth2';

const app = createApp(App)

let gauthClientId = '947008065972-nrproajid5qg83bshd12hjmogtn0dsc8.apps.googleusercontent.com'
app.use(gAuthPlugin, {
  clientId: gauthClientId,
  scope: 'email',
  prompt: 'consent',})


app.use(createPinia())
app.use(router)

app.mount('#app')

