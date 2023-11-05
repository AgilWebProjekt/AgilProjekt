<script setup>
import { useStore } from 'vuex'
import { RouterLink } from 'vue-router'
import { ref, computed } from 'vue'
const showDropdown = ref(false)

const store = useStore()

const isAuthenticated = computed(() => store.getters.isAuthenticated)

const logout = () => {
  store.dispatch('logout')
}

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
    <RouterLink to="/">Home</RouterLink>
    <RouterLink to="/about">About Us</RouterLink>
    <img alt="game logo" class="logo" src="@/assets/Quiztastic.png" />
    <RouterLink v-if="isAuthenticated" to="/" @click="logout">Logout</RouterLink>
    <RouterLink v-else to="/login">Login</RouterLink>

    <div class="category-dropdown" @click="toggleDropdown">
      <span class="category-link">Categories</span>

      <div v-if="showDropdown" class="dropdown-content">
        <RouterLink to="/categories/history">History</RouterLink>
        <RouterLink to="/categories/mathematics">Mathematics</RouterLink>
        <RouterLink to="/categories/science">Science</RouterLink>
        <RouterLink to="/categories/geography">Geography</RouterLink>
        <RouterLink to="/categories/language">Language</RouterLink>
        <RouterLink to="/categories/sweden">Sweden</RouterLink>
      </div>
    </div>
  </header>
</template>

<style scoped>
header {
  background-color: #005b41;
  padding: 20px 200px;
  display: flex;
  justify-content: space-between;
  align-items: center;
  flex-wrap: wrap;
  font-size: 1.5rem;
}

img {
  width: 80px;
  height: 80px;
}

a,
.category-link {
  text-decoration: none;
  color: white;
  cursor: pointer;
}

.category-dropdown {
  position: relative;
  display: grid;
}

.dropdown-content {
  display: flex;
  flex-direction: column;
  align-items: center;
  font-size: 1.2rem;
  position: absolute;
  background-color: white;
  border-bottom-left-radius: 2rem;
  border-bottom-right-radius: 2rem;
  min-width: 160px;
  top: 100%;
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
