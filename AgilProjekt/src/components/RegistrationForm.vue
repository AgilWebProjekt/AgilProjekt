<template>
    <div class="registration-container">
        <h1>Register</h1>
        <form @submit.prevent="register">
            <div>
                <label for="username">Username:</label>
                <input type="text" id="username" v-model="username" required>
            </div>
            <div>
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
                // Redirect to login or dashboard page
            } catch (error) {
                console.error(error.response.data);
                alert('Registration failed!');
            }
        }
    }
}
</script>
  
<style scoped>
/* Add styles here */
</style>
  