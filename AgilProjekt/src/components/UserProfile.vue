<template>
    <div>
        <h2>User Profile</h2>
        <p>Username: {{ user.username }}</p>
        <p>Name: {{ user.name }}</p>
        <button @click="logout">Logout</button>
    </div>
</template>
  
<script>
export default {
    computed: {
        user() {
            return this.$store.state.user;
        },
    },
    methods: {
        logout() {
            this.$store.dispatch('logout');
        },
    },
};
</script>
  