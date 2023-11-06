<script setup>
import BannerComponent from './BannerComponent.vue'
</script>

<template>
  <div class="welcome">
    <BannerComponent />
    <div class="info">
      <p>🚀 Welcome to the Ultimate Quiz Showdown! 🌟</p>
      <p>
        Are you ready to put your knowledge to the test and embark on a thrilling trivia adventure?
        Whether you're a genius or a quiz enthusiast, our quiz game is your ticket to hours of
        brain-teasing, laughter-inducing fun!
      </p>
      <p>
        🎮 How to Play:<br />
        🔐 Create account or Login: Create an account and login to play our quiz!<br />
        👤 Play as guest: Or play as guest if you want to keep it casual 😉!<br />
        🌍 Explore Diverse Topics: From history's mysteries to mathematics, science to language, and
        everything in between, our quizzes cover it all. Choose the topic and buckle up!
      </p>
      <p>
        Get ready to flex those brain muscles, have a blast, make lasting memories and become a
        legend! It's time to start quizzing! 🤓✨"
      </p>
    </div>

    <div class="button">
      <RouterLink to="/quiz" custom v-slot="{ navigate }">
        <button @click="navigate" role="link">Play as guest</button>
      </RouterLink>
    </div>
  </div>
</template>

<style scoped>
.welcome {
  min-height: 100vh;
}

p {
  margin: 10px 80px;
}

.button {
  display: flex;
  justify-content: space-around;
}

button {
  background-color: #005b41;
  border: none;
  color: white;
  padding: 15px 32px;
  text-align: center;
  text-decoration: none;
  font-size: 16px;
  font-weight: bold;
  cursor: pointer;
  margin: 30px;
  border-radius: 20px;
}
@media (max-width: 768px) {
div .info{
   padding: 25px 15px;
   margin:0;
   font-size: 1em;
  }
  p{
    margin: 0;
  }
  button {
    padding: 9px 17px ;
    font-weight :100;
  }
}
</style>
