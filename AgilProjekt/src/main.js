import './assets/main.css'

import { createApp } from 'vue'
import { createPinia } from 'pinia'
import axios from 'axios'

import App from './App.vue'
import router from './router'
import store from './stores/store';

const app = createApp(App)

app.use(createPinia())
app.use(router)
app.use(store);


const axiosInstance = axios.create({
    baseURL: 'http://localhost:3000',
})

app.config.globalProperties.$axios = axiosInstance

app.mount('#app')
