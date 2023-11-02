import './assets/main.css'

import { createApp } from 'vue'
import { createPinia } from 'pinia'
import axios from 'axios' // Import Axios

import App from './App.vue'
import router from './router'
import store from './stores/store'; // Import your Vuex store

const app = createApp(App)

app.use(createPinia())
app.use(router)
app.use(store);


// Set up Axios with your backend API's base URL
const axiosInstance = axios.create({
    baseURL: 'http://localhost:3000', // Replace with your backend API URL
})

app.config.globalProperties.$axios = axiosInstance // Make Axios available globally

app.mount('#app')
