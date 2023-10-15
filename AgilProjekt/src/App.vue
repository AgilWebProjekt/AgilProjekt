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
      <img alt="game logo" class="logo" src="@/assets/Quiztastic.png" width="125" height="125" />
      <nav>
        <RouterLink to="/login">Login</RouterLink>
      </nav>
      <nav>
        <RouterLink to="/categories">Categories</RouterLink>
      </nav>
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
.homeview {
  font-family: Arial, Helvetica, sans-serif;
  background-color: #e2f3ec;

}





</style>
