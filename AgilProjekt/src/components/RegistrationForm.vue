<template>
    <div class="registration-container">
        <h1>Register</h1>
        <form @submit.prevent="register">
            <div id="username">
                <label for="username">Username:</label>
                <input type="text" id="username" v-model="username" required>
            </div>
            <div id="password">
                <label for="password">Password:</label>
                <input type="password" id="password" v-model="password" required>
            </div>
            <button type="submit">Register</button>
        </form>
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
        async register() {
            try {
                const response = await axios.post('http://localhost:3000/api/register', {
                    username: this.username,
                    password: this.password
                });
                console.log(response.data);
                alert('Registration successful!');
            } catch (error) {
                console.error(error.response.data);
                alert('Registration failed!');
            }
        }
    }
}
</script>

<style scoped>
.registration-container {
    display: flex;
    justify-content: space-around;
    flex-direction: column;
    align-items: center;
    background-color: #f2f2f2;
    margin: 3rem 23rem;
    border-radius: 1rem;
    color: black;
}

h1{
    margin: 3rem 1rem 0 1rem;
}

#username{
    margin: 1rem;
    font-size: 1.2rem;
}

#password{
    margin: 1rem; 
    font-size: 1.2rem;
}

input{
    padding: 0.5rem;
}

button{
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
}
</style>
