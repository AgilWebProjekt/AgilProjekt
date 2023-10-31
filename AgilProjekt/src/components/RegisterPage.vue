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

<template>
  <div>
    <div v-if="!loggedIn">
      <h1>Register</h1>
      <input v-model="registerData.name" placeholder="name" />
      <input v-model="registerData.email" placeholder="email" />
      <input v-model="registerData.username" placeholder="Username" />
      <input v-model="registerData.password" type="password" placeholder="Password" />
      <button @click="register">Register</button>
      <h1>Login</h1>
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

<script setup>
import { Form, Field } from 'vee-validate'
import * as Yup from 'yup'

//import { useUsersStore, useAlertStore } from '@/stores'
//import { router } from '@/router'

const schema = Yup.object().shape({
  firstName: Yup.string().required('First Name is required'),
  lastName: Yup.string().required('Last Name is required'),
  username: Yup.string().required('Username is required'),
  password: Yup.string()
    .required('Password is required')
    .min(6, 'Password must be at least 6 characters')
})

/*async function onSubmit(values) {
  const usersStore = useUsersStore()
  const alertStore = useAlertStore()
  try {
    await usersStore.register(values)
    await router.push('/login')
    alertStore.success('Registration successful')
  } catch (error) {
    alertStore.error(error)
  }
}*/
</script>

<template>
  <div class="card m-3">
    <h2>Register</h2>
    <div class="card-body">
      <Form @submit="onSubmit" :validation-schema="schema" v-slot="{ errors, isSubmitting }">
        <div class="form-group">
          <label>First Name</label>
          <Field
            name="firstName"
            type="text"
            class="form-control"
            :class="{ 'is-invalid': errors.firstName }"
          />
          <div class="invalid-feedback">{{ errors.firstName }}</div>
        </div>
        <div class="form-group">
          <label>Last Name</label>
          <Field
            name="lastName"
            type="text"
            class="form-control"
            :class="{ 'is-invalid': errors.lastName }"
          />
          <div class="invalid-feedback">{{ errors.lastName }}</div>
        </div>
        <div class="form-group">
          <label>Username</label>
          <Field
            name="username"
            type="text"
            class="form-control"
            :class="{ 'is-invalid': errors.username }"
          />
          <div class="invalid-feedback">{{ errors.username }}</div>
        </div>
        <div class="form-group">
          <label>Password</label>
          <Field
            name="password"
            type="password"
            class="form-control"
            :class="{ 'is-invalid': errors.password }"
          />
          <div class="invalid-feedback">{{ errors.password }}</div>
        </div>
        <div class="form-group">
          <button class="btn btn-primary" :disabled="isSubmitting">
            <span v-show="isSubmitting" class="spinner-border spinner-border-sm mr-1"></span>
            Register
          </button>
          <router-link to="login" class="btn btn-link">Cancel</router-link>
        </div>
      </Form>
    </div>
  </div>
</template>

<style>
.card {
  display: flex;
  flex-direction: column;
  justify-content: center;
  align-items: center;
  margin-top: 30px;
  margin-left: 250px;
  margin-right: 250px;
  margin-bottom: 100px;
  padding: 50px;
  border-radius: 10%;
}
h2,
.card-body {
  color: #fff;
}
.btn-link {
  color: #fff;
}
label {
  margin: 20px;
  width: 50%;
  height: 40px;
  border-radius: 10px;
  border-style: none;
}
.form-control {
  margin: 20px;
  width: 50%;
  height: 50%;
  border-radius: 10px;
  border-style: none;
}
.btn {
  width: 50%;
  height: 40px;
  border-radius: 10px;
  border-style: none;
  border: 1px solid;
}

card-body {
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
