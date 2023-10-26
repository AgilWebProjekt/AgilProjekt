/*import { ref, onMounted } from 'vue';
import { useRouter } from 'vue-router'
import * as axios from "axios"


// Data
const name = ref('');
const email = ref('');
const password = ref('');

const router = useRouter()
//const route = useRoute()


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

  onMounted(() => {
	let user =localStorage.getItem('user-info')
	if(user) {
		router.push({name:'home'})
	}
})
return {name, email, password}

}*/

<script setup>
import { ref } from 'vue'
import { useRouter } from 'vue-router'
import axios from 'axios'
  
// Reactive data
const name = ref('')
const email = ref('')
const password = ref('')

const router = useRouter()

// Methods
const logIn = async () => {
  try {
    let result = await axios.post("https://localhost:3000/user", {
      email: email.value,
      password: password.value,
      name: name.value
    })

    if (result.status === 201) {
      localStorage.setItem("user-info", JSON.stringify(result.data))
      router.push({ name: 'quiz' })
    } else {
      // You can display some error message to the user here
    }
  } catch (error) {
    console.error("Error during login:", error)
    // Handle error, maybe show user a message
  }
}

// Mounted lifecycle method
/*onMounted(() => {
  let user = localStorage.getItem('user-info')
  if (user) {
    router.push({ name: 'home' })
  }
})*/
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


  



