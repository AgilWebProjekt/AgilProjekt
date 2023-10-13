<script setup>
import { RouterLink, RouterView } from 'vue-router'
</script>

<template>
  <header>
    <img alt="game logo" class="logo" src="@/assets/Quiztastic.png" width="125" height="125" />
    <nav>
        <RouterLink to="/">Home</RouterLink>
        </nav>
        <nav>
        <RouterLink to="/about">About Us</RouterLink>
      </nav>
      <nav>
        <RouterLink to="/login">Login</RouterLink>
      </nav>
      <nav>
        <RouterLink to="/quiz">quizReview</RouterLink>
      </nav>
      <nav>
        <RouterLink to="/categories">Categories</RouterLink>
      </nav>
      <RouterView />
  </header>

  
</template>

<style scoped>
header {
  padding: 0 50px;
    display: flex;
    justify-content: space-between;
    align-items: center;
    flex-wrap: wrap;  
    
}

nav:hover {
    color: #B7F7DE;
    transform: rotate(5deg);
}

nav {
    text-decoration: none;
    display: block;
    transition: all 0.3s ease-out;
    list-style: none;
    margin: 0;
    padding: 0;
    display: flex;
}




</style>