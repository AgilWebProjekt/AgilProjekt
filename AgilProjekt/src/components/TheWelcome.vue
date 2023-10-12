<script setup>
</script>

<template>
  <div>
 <h1> Welcome to the Ultimate Quiz Showdown!</h1>
 <p>🚀 Welcome to the Ultimate Quiz Showdown! 🌟<br>
Are you ready to put your knowledge to the test and embark on a thrilling trivia adventure? Whether you're a lone genius or a dynamic duo, our quiz game is your ticket to hours of brain-teasing, laughter-inducing fun!
<br>🎮 How to Play:
<br>1️⃣ Solo Mode: Challenge yourself and become the trivia master as you tackle a wide range of mind-boggling questions. Will you claim the title of the Ultimate Quiz Champ?
<br>2️⃣ Duel Mode: Grab a friend, family member, or even a friendly rival for an epic head-to-head battle of wits! Test your skills, bragging rights are on the line!
<br>🌍 Explore Diverse Topics: From history's mysteries to mathematics, science to sports, and everything in between, our quizzes cover it all. Choose the topic and buckle up!
<br>Get ready to flex those brain muscles, have a blast, make lasting memories and become a legend! It's time to start quizzing! 🤓✨"
</p>
</div>
<div class="circle-container">
      <div class="images-left">
        <img src="..\assets\history.png" alt="Image 1" width="100px">
        <img src="..\assets\history.png" alt="Image 2" width="100px">
        <img src="..\assets\history.png" alt="Image 3" width="100px">
        </div>

        <RouterLink to="/login" custom v-slot="{ navigate }">
        <button @click="navigate" role="link">Login</button>
        </RouterLink>

        <div class="text">text</div>
        <div class="images-right">
        <img src="..\assets\history.png" alt="Image 4" width="100px">
        <img src="..\assets\history.png" alt="Image 5" width="100px">
        <img src="..\assets\history.png" alt="Image 6" width="100px">
        </div>
    </div>
</template>

<style scoped>
div {
  padding: 50px;
  margin:0 50px;
}
h1{
  display: flex;
  align-items: center;
  justify-content: center;
}
.circle-container{
  display: flex;
  justify-content: center;
  align-items: center;
  min-height: 400px;
}
.images-left{
  height: 370px;
  width: 335px;
}

.text{
  height: 370px;
  width: 335px;
}
.images-right{
 height: 370px;
  width: 335px;
}

button{
  background-color: coral;
  border: none;
  color: white;
  padding: 15px 32px;
  text-align: center;
  text-decoration: none;
  font-size: 16px;
  font-weight: bold;
  cursor: pointer;
}
</style>