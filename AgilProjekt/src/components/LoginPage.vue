<!-- <script setup>

import { ref } from 'vue';
import { useRouter /*useRoute*/ } from 'vue-router'
import axios from "axios"


// Data
const name = ref('');
const email = ref('');
const password = ref('');

const router = useRouter()
/*const route = useRoute()*/


const logIn = async ()=> {
	let result = await axios.post("http://localhost:3000/user", {
		email:email.value,
		password:password.value,
		name:name.value
	});
	console.warn(result);
  if(result.status==201) {
    localStorage.setItem("user-info",JSON.stringify(result.data))
    router.push({name:'quiz'})
  }

 /* onMounted(() => {
	let user =localStorage.getItem('user-info')
	if(user) {
		router.push({name:'home'})
	}
})*/

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
 -->

<template>
  <div>
    <div v-if="!loggedIn">
      <h2>Register</h2>
      <input v-model="registerData.name" placeholder="name" />
      <input v-model="registerData.email" placeholder="email" />
      <input v-model="registerData.username" placeholder="Username" />
      <input v-model="registerData.password" type="password" placeholder="Password" />
      <button @click="register">Register</button>

      <h2>Login</h2>
      <input v-model="loginData.username" placeholder="Username" />
      <input v-model="loginData.password" type="password" placeholder="Password" />
      <button @click="login">Login</button>
    </div>
    <div v-if="loggedIn">
      <h2>Submit Feedback</h2>
      <textarea v-model="feedback"></textarea>
      <button @click="submitFeedback">Submit</button>
    </div>
  </div>
</template>

<script setup>
import { ref } from 'vue'
import axios from 'axios'

const registerData = ref({ name: '', email: '', username: '', password: '' })
const loginData = ref({ username: '', password: '' })
const loggedIn = ref(false)
const feedback = ref('')

const register = async () => {
  try {
    await axios.post('http://localhost:3000/register', registerData.value)
    alert('Registered successfully')
  } catch (err) {
    alert(err.response?.data?.error || 'Unknown error')
  }
}

const login = async () => {
  try {
    await axios.post('http://localhost:3000/login', loginData.value)
    loggedIn.value = true
  } catch (err) {
    alert(err.response?.data?.error || 'Unknown error')
  }
}

const submitFeedback = async () => {
  try {
    await axios.post('http://localhost:3000/feedback', { feedback: feedback.value })
    alert('Feedback submitted')
  } catch (err) {
    alert('Failed to submit feedback')
  }
}
</script>
-->
