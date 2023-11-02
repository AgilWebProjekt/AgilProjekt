<template>
    <div>
        <input v-model="username" placeholder="Username" />
        <input v-model="password" type="password" placeholder="Password" />
        <button @click="registerUser">Register</button>
    </div>
</template>
  
<script>
export default {
    data() {
        return {
            username: "",
            password: "",
        };
    },
    methods: {
        async registerUser() {
            try {
                // Perform client-side password hashing (you should use a secure method)
                const hashedPassword = await this.hashPassword(this.password);

                // Send a POST request to the registration endpoint
                const response = await this.$axios.post('/api/register', {
                    username: this.username,
                    password: hashedPassword,
                });

                // Handle the response (e.g., show a success message or redirect the user)
                console.log("Registration successful:", response.data.message);
            } catch (error) {
                // Handle registration failure (e.g., show an error message)
                console.error("Registration failed:", error);
            }
        },
        async hashPassword(password) {
            // Use a secure method to hash the password (bcrypt is recommended)
            // You may need to import the bcrypt library
            return await bcrypt.hash(password, 10);
        },
    },
};
</script>
  </template>
  