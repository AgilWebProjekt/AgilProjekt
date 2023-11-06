<template>
    <div class="container">
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
.container {
    min-height: 100vh;
    padding: 1rem;
    /*V*/
}


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


h1 {
    margin: 3rem 1rem 0 1rem;
    margin-bottom: 2rem;
}

#username {
    margin: 1rem;
    font-size: 1.2rem;
}

#password {
    margin: 1rem;
    font-size: 1.2rem;
}

input,
button {
    /*V*/
    padding: 1rem;
    margin: 0.5rem 0;
    font-size: 1rem;
    border-radius: 4px;
    border: 1px solid #ccc;
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
    .registration-container {
        margin: 1rem;
        padding: 1.5rem;
    }
}

@media (min-width: 601px) {
    .container {
        padding: 2rem;
    }
}

@media (min-width: 1025px) {
    .registration-container {
        margin: auto;
        padding: 2rem;
        width: 30%;
    }
}

/*V*/
</style>
