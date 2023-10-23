<script setup>
import { ref } from 'vue';


// Data
const name = ref('');
const email = ref('');
const password = ref('');

const logIn = function() {
  console.log("logedIn")
  }
</script>
<template>
  <h1>Login Page</h1>
  <div class="register">
    <input type="text" v-model="name" placeholder="Enter Name">
    <input type="text" v-model="email" placeholder="Enter Email">
    <input type="password" v-model="password" placeholder="Enter Password">
    <button v-on:click="logIn">Log In</button>
  </div>
</template>

<style>
h1 {
  color: white;
  text-align: center;
}
.register input {
  width: 300px;
  height: 40px;
  padding-left: 20px;
  display: block;
  margin-bottom: 30px;
  margin-right: auto;
  margin-left: auto;
  border: 1px solid skyblue;
}
.register button {
  width: 300px;
  height: 40px;
  padding-left: 20px;
  display: block;
  margin-bottom: 30px;
  margin-right: auto;
  margin-left: auto;
  border: 1px solid skyblue;
  background: skyblue;
  color: #fff;
  cursor: pointer;
}
</style>


