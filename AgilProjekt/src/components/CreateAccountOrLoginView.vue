<script setup>
import { RouterLink } from 'vue-router';
</script>

<template>
  <div class="container">
  <div class="button">
  <button><RouterLink to="/register">Create Account</RouterLink></button>
  <h1>OR</h1>
  <button><RouterLink to="/login">Login</RouterLink></button>
  </div>
  </div>
</template>
  
<style scoped>
.container{
  min-height: 100vh;
}

h1{
  color: white;
}
.button {
  display: flex;
  justify-content: space-evenly;
  margin: 5rem 10rem;
  align-items: center;
  flex-direction: column;
}

button {
  background-color: #005b41;
  border: none;
  color: white;
  padding: 15px 32px;
  text-align: center;
  text-decoration: none;
  font-size: 1.5rem;
  cursor: pointer;
  margin: 30px;
  border-radius: 20px;
}

a{
  text-decoration: none;
  color: white;
}

a:hover {
  color:black;
}
</style>
