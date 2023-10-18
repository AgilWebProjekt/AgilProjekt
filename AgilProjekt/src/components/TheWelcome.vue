<script setup>
</script>

<template>
<div>
  <div class="images-top">
    <img title="history" src="..\assets\history.png" alt="history">
    <img title="science" src="..\assets\science.png" alt="science">
    <img title="language" src="..\assets\language.png" alt="language">
  </div>
 
    <h1> Welcome to Quiztastic!</h1>

    <div class="images-bottom">
    <img title="maths" src="..\assets\maths.png" alt="mathematics">
    <img title="geography" src="..\assets\geography.png" alt="geography">
    <img title="sweden" src="..\assets\sweden.png" alt="sweden">  
  </div> 
  <div class="info">
    <p>🚀 Welcome to the Ultimate Quiz Showdown! 🌟</p>
    <p>Are you ready to put your knowledge to the test and embark on a 
      thrilling trivia adventure? Whether you're a lone genius or a dynamic duo,
      our quiz game is your ticket to hours of brain-teasing, laughter-inducing fun!
    </p>
    <p>🎮 How to Play:<br>
      1️⃣ Solo Mode: Challenge yourself and become the trivia master as you tackle a wide range of mind-boggling questions. Will you claim the title of the Ultimate Quiz Champ?<br>
      2️⃣ Duel Mode: Grab a friend, family member, or even a friendly rival for an epic head-to-head battle of wits! Test your skills, bragging rights are on the line!<br>
      🌍 Explore Diverse Topics: From history's mysteries to mathematics, science to language, and everything in between, our quizzes cover it all. Choose the topic and buckle up!
    </p>
    <p>Get ready to flex those brain muscles, have a blast, 
      make lasting memories and become a legend! 
      It's time to start quizzing! 🤓✨"
    </p>
  </div>



  <div class="button">
    <RouterLink to="/quiz" custom v-slot="{ navigate }">
      <button @click="navigate" role="link">LET'S GO</button>
    </RouterLink>
  </div>


</div>
</template>

<style scoped>
p{
  margin: 10px 80px;
}

h1{
  display: flex;
  align-items: center;
  justify-content: center;
  font-size: 3em;
  margin: 30px 0;
  color: white;
}

.button{
  display: flex;
  justify-content: space-around;

}

button{
  background-color: #005B41;
  border: none;
  color: white;
  padding: 15px 32px;
  text-align: center;
  text-decoration: none;
  font-size: 16px;
  font-weight: bold;
  cursor: pointer;
  margin: 30px;
}

img{
  width: 150px;
  padding: 10px;
  margin: 10px;
}

img:hover {
  animation: wiggle 0.5s infinite;
  animation-timing-function: linear;   
}

@keyframes wiggle {
  0% { transform: translate(0, 0) rotate(0deg); }
  25% { transform: translate(5px, 5px) rotate(5deg); }
  50% { transform: translate(0, 0) rotate(0eg); }
  75% { transform: translate(-5px, 5px) rotate(-5deg); }
  100% { transform: translate(0, 0) rotate(0deg); }
}

.images-top{
  margin: 0 100px;
  animation-duration: 3s;
  animation-delay: 2s;
  animation-name: slideintop;
  animation-timing-function: ease-out;
  display: flex;
  justify-content: space-around;
  animation-fill-mode: forwards;
}

@keyframes slideintop{
  from{
    margin-left: 100%;
    width: 200%;
  }

  to{
    margin-left: 5%;
    width: 90%;
  }
}

.images-bottom{
  margin: 0 100px;
  animation-duration: 3s;
  animation-delay: 2s;
  animation-name: slideinbottom;
  animation-timing-function: ease-out;
  display: flex;
  justify-content: space-around;
  animation-fill-mode: forwards;
}

@keyframes slideinbottom{
 from{
    margin-left: -100%;
    width: 100%;
  }

  to{
    margin-left: 5%;
    width: 90%;
  }


}
</style>