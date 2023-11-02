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
    <nav class="navbar">
            <div class="navbar-container container">
                <input type="checkbox" name="" id="">
                <div class="hamburger-lines">
                    <span class="line line1"></span>
                    <span class="line line2"></span>
                    <span class="line line3"></span>
                </div>
                <ul class="menu-items">
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
  

    <!--  <nav>
      <RouterLink to="/categories">Categories</RouterLink>
    </nav>
  </header>
 /*   <button @click="fetchTest">
    fetch
  </button> */ -->
    <!-- <div class="homeview">
    <RouterView />
  </div> -->

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
  </ul>
</div>
  </nav>
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
.navbar input[type="checkbox"],
.navbar .hamburger-lines {
    display: none;
}

.container {
    max-width: 1200px;
    width: 100%;
    margin: auto;
}

.navbar {
    position: relative;
    width: 100%;
    opacity: 0.85;
    z-index: 10000;
}

.navbar-container {
    display: flex;
    justify-content: space-between;
    height: 64px;
    align-items: center;
}

.menu-items {
    order: 2;
    display: flex;
}


.menu-items li {
    list-style: none;
    margin-left: 1.5rem;
    font-size: 1.3rem;
}

.navbar a {
    text-decoration: none;
    font-weight: 500;
    transition: color 0.3s ease-in-out;
}

.navbar a:hover {
    color: black;
}

@media (max-width: 768px) {
  header{
    padding: 0;
  }

    .navbar {
        opacity: 0.95;
    }

    .navbar-container input[type="checkbox"],
    .navbar-container .hamburger-lines {
        display: block;
    }

    .navbar-container {
        display: block;
        position: relative;
        height: 64px;
    }

    .navbar-container input[type="checkbox"] {
        position: absolute;
        display: block;
        height: 32px;
        width: 30px;
        top: 20px;
        left: 20px;
        z-index: 5;
        opacity: 0;
        cursor: pointer;
    }

    .navbar-container .hamburger-lines {
        display: block;
        height: 28px;
        width: 35px;
        position: absolute;
        top: 20px;
        left: 20px;
        z-index: 2;
        display: flex;
        flex-direction: column;
        justify-content: space-between;
    }

    .navbar-container .hamburger-lines .line {
        display: block;
        height: 4px;
        width: 100%;
        border-radius: 10px;
        background: #333;
    }

    .navbar-container .hamburger-lines .line1 {
        transform-origin: 0% 0%;
        transition: transform 0.3s ease-in-out;
    }

    .navbar-container .hamburger-lines .line2 {
        transition: transform 0.2s ease-in-out;
    }

    .navbar-container .hamburger-lines .line3 {
        transform-origin: 0% 100%;
        transition: transform 0.3s ease-in-out;
    }

    .navbar .menu-items {
        padding-top: 100px;
        height: 100vh;
        max-width: 300px;
        transform: translate(-150%);
        display: flex;
        flex-direction: column;
        margin-left: -40px;
        padding-left: 40px;
        transition: transform 0.5s ease-in-out;
        background: #005b41;
        
    
    }

    .navbar .menu-items li {
        margin-bottom: 1.8rem;
        font-size: 1.1rem;
        font-weight: 500;
    }

    .logo {
        position: absolute;
        top: 10px;
        right: 15px;
        font-size: 2.5rem;
    }

    .navbar-container input[type="checkbox"]:checked~.menu-items {
        transform: translateX(0);
    }

    .navbar-container input[type="checkbox"]:checked~.hamburger-lines .line1 {
        transform: rotate(45deg);
    }

    .navbar-container input[type="checkbox"]:checked~.hamburger-lines .line2 {
        transform: scaleY(0);
    }

    .navbar-container input[type="checkbox"]:checked~.hamburger-lines .line3 {
        transform: rotate(-45deg);
    }

}

@media (max-width: 500px) {
    .navbar-container input[type="checkbox"]:checked~.logo {
        display: none;
    }
    .logo {
        order: 1;
        font-size: 2.3rem;
    }
}
</style>
