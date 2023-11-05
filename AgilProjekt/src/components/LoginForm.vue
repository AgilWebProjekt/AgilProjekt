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

<script>
import axios from 'axios';

export default {
  data() {
    return {
      username: '',
      password: ''
    };
  },
  methods: {
    async login() {
      try {
        const response = await axios.post('http://localhost:3000/api/login', {
          username: this.username,
          password: this.password
        });
        console.log(response.data);
        alert('Login successful!');
        // Redirect to dashboard page or wherever needed
      } catch (error) {
        console.error(error.response.data);
        alert('Login failed!');
      }
    }
  }
}
</script>
