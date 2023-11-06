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

<template>
  <div class="container">
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
    </div>
  </div>
</template>

<style scoped>
.container {
  min-height: 100vh;
  padding: 1rem;
  /*V*/
}

.login-container {
  display: flex;
  justify-content: space-around;
  flex-direction: column;
  align-items: center;
  background-color: #f2f2f2;
  margin: 3rem 23rem;
  border-radius: 1rem;
  color: black;
  padding: 2rem;
  /*V*/
  max-width: 400px;
  /*V*/
  box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
  /*V*/
}

h1 {
  margin: 3rem 1rem 0 1rem;
  margin-bottom: 2rem;
  /*V*/
}

#username {
  margin: 1rem;
  font-size: 1.2rem;
}

#password {
  margin: 1rem;
  font-size: 1.2rem;
}

input {
  padding: 0.5rem;
}

button {
  background-color: #005b41;
  border: none;
  color: white;
  padding: 15px 32px;
  text-align: center;
  text-decoration: none;
  font-size: 1rem;
  cursor: pointer;
  margin: 30px;
  border-radius: 20px;
  margin-top: 2rem;
  /*V*/
}

/*V*/
@media (max-width: 600px) {
  .login-container {
    margin: 1rem;
    padding: 1.5rem;
  }
}


@media (min-width: 601px) {

  .container {
    padding: 2rem;
    display: flex;
    align-content: flex-start;
    align-items: center;
    justify-content: center;
    flex-wrap: wrap;
  }
}

@media (min-width: 1025px) {
  .login-container {
    margin: auto;
    padding: 2rem;
    width: 30%;
  }
}

/*V*/
</style>