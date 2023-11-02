<template>
  <div>
    <input v-model="username" type="text" placeholder="Username">
    <input v-model="password" type="password" placeholder="Password">
    <button @click="login">Login</button>
  </div>
</template>

<script>
export default {
  data() {
    return {
      username: '',
      password: '',
      error: null, // To store login error messages
    };
  },
  methods: {
    async login() {
      try {
        // Make an API request to handle login (replace with actual API endpoint)
        const response = await fetch('http://localhost:3000/api/login', {
          method: 'POST',
          headers: {
            'Content-Type': 'application/json',
          },
          body: JSON.stringify({ username: this.username, password: this.password }),
        });

        if (response.ok) {
          // Assuming the API returns a JSON object with user data
          const userData = await response.json();
          console.log(userData);
          this.$store.dispatch('login', userData); // Dispatch login action

          // Redirect to a protected route or show a "Login successful" message
          this.$router.push('/dashboard'); // Adjust the route accordingly
        } else {
          // Handle login failure, e.g., incorrect credentials
          this.error = 'Invalid username or password';
        }
      } catch (error) {
        // Handle network errors or other unexpected errors
        console.error(error);
        this.error = 'An error occurred while logging in.';
      }
    },
  },
};
</script>
