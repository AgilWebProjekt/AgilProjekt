import './assets/main.css'

import { createApp } from 'vue'
import { createPinia } from 'pinia'

import App from './App.vue'
import router from './router'
import gAuthPlugin from 'vue3-google-oauth2';

const app = createApp(App)

let gauthClientId = '676785461988-icoil0dtlld2fcp5kb22llst7t94mans.apps.googleusercontent.com'
app.use(gAuthPlugin, {
  clientId: gauthClientId,
  scope: 'email',
  prompt: 'consent',})


app.use(createPinia())
app.use(router)

app.mount('#app')

