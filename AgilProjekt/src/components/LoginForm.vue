<template>
  <div class="login-container">
    <h1>Log in</h1>
    <form @submit.prevent="login">
      <div>
        <label for="username">Username:</label>
        <input type="text" id="username" v-model="username" required>
      </div>
      <div>
        <label for="password">Password:</label>
        <input type="password" id="password" v-model="password" required>
      </div>
      <button type="submit">Log in</button>
    </form>
    <router-link to="/register">Register</router-link> <!-- Added Register button -->
  </div>
</template>

<script setup>
import axios from 'axios';
import { ref } from 'vue';
import { useStore } from 'vuex';
import { useRouter } from 'vue-router';

const store = useStore(); 
const router = useRouter();
const username = ref('');
const password = ref('');

const login = async () => {
  try {
    const response = await axios.post('http://localhost:3000/api/login', {
      username: username.value,
      password: password.value
    });
    console.log(response.data);
    alert('Login successful!');
    store.dispatch('login', response.data.user);
    router.push('/');
   } catch (error) {
    console.error(error.response.data);
    alert('Login failed!');
  }
}
</script>
