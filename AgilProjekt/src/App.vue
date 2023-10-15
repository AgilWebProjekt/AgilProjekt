<script setup>
import { RouterLink, RouterView } from 'vue-router'
</script>

<template>
    <header>
      <RouterLink to="/">Home</RouterLink>
      <RouterLink to="/about">About Us</RouterLink>
      <img alt="game logo" class="logo" src="@/assets/Quiztastic.png" width="150" height="150" />
      <RouterLink to="/login">Login</RouterLink>
      <RouterLink to="/categories">Categories</RouterLink>
    </header>
    <div class="homeview">
      <RouterView />
    </div>

  
</template>

<style scoped>
header {
  background-color: rgb(196, 239, 214);
  padding: 50px;
  display: flex;
  justify-content: space-between;
  align-items: center;
  flex-wrap: wrap;
    
}

/*nav:hover {
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
}*/
.homeview {
  font-family: Arial, Helvetica, sans-serif;
  background-color: #e2f3ec;

}





</style>