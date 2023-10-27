<script setup>
import { RouterLink, RouterView } from 'vue-router'
import { ref } from 'vue'
import FooterComponent from './components/FooterComponent.vue';


const showDropdown = ref(false)

const toggleDropdown = () => {
  showDropdown.value = !showDropdown.value
}

window.addEventListener('click', (event) => {
  if (!event.target.closest('.category-dropdown')) {
    showDropdown.value = false
  }
})
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
    <div class="category-dropdown" @click="toggleDropdown">
      <nav>
        <span class="category-link">Categories</span>
      </nav>
      <div v-if="showDropdown" class="dropdown-content">
        <RouterLink to="/category/1">History</RouterLink>
        <RouterLink to="/category/2">Mathematics</RouterLink>
        <!-- Add more categories as needed -->
      </div>
    </div>
  </header>
  <RouterView />

  <FooterComponent />
</template>

<style scoped>
header {
  background-color: #005b41;
  padding: 20px 200px;
  display: flex;
  justify-content: space-between;
  align-items: center;
  flex-wrap: wrap;
}

nav {
  display: flex;
  align-items: center;
  font-size: 1.5rem;

}

a,
.category-link {
  text-decoration: none;
  color: white;
  cursor: pointer;
}

.category-dropdown {
  position: relative;
  display: inline-block;
}

img {
  width: 80px;
  height: 80px;
}


.dropdown-content {
  display: flex;
  flex-direction: column;
  align-items: center;
  position: absolute;
  background-color: white;
  border-bottom-left-radius: 2rem;
  border-bottom-right-radius: 2rem;
  min-width: 160px;
  left: 50%;
  transform: translateX(-50%);
}

.dropdown-content a {
  color: black;
}

a,
.category-link {
  padding: 0.5rem;
  text-decoration: none;
  color: white;
}

a::after,
.category-link::after {
  content: '';
  display: block;
  width: 0;
  height: 2px;
  background: #000;
  transition: width 0.3s;
}

a:hover::after,
.category-link:hover::after {
  width: 100%;
}
</style>
