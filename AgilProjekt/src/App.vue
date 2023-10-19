<script setup>
import { RouterLink, RouterView } from 'vue-router'
</script>

<template>
    <header>
    <nav>
      <RouterLink to="/">Home</RouterLink>
    </nav>
    <nav>
      <RouterLink to="/about">About Us</RouterLink>
    </nav>
      <img alt="game logo" class="logo" src="@/assets/Quiztastic.png" width="150" height="150" />
      <nav>
      <RouterLink to="/login">Login</RouterLink>
    </nav>
      <nav>
      <RouterLink to="/categories">Categories</RouterLink>
      </nav>
    </header>
    
      <RouterView />
    

  
</template>

<style scoped>

header {

  background-color:#005B41;
  padding: 20px 200px;
  display: flex;
  justify-content: space-between;
  align-items: center;
  flex-wrap: wrap;
    
}

nav:hover {
    transform: rotate(5deg);
}

nav {
    display: block;
    padding: 1rem;
    font-size: 2.2rem;
}
a:hover {
  color: black;
}

a{
  text-decoration: none;
  color: white;
  font-family: math; 
}


</style>
