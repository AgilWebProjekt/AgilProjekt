<script setup>
</script>

<template>
  <div class="mainpage">
      <h1>Welcome to the ultimate Quiz ShowDown!</h1>
      <p>
        "Welcome to the ultimate Quiz ShowDown"<br />
        Are you ready to put your knowledge to the test and embark on a
        thrilling trivia adventure?<br />
        Whether you are a lone genius or a dynamic duo, our quiz is your ticket
        to hours of brain-teasing and laughter-induce fun!<br />
      </p>

      <h3>How To Play</h3>
      <ol>
        <li>
          Solo Mode: Challenge yourself and become the trivia master as you
          tackle a wide range of mind-boggling questions. Will you claim the
          title of the Ultimate Quiz Champ?
        </li>
        <li>
          Duel Mode: Grab a friend, family member or even a friendly rival for
          an epic head-to-head battle of wits! Test your skills, bragging rights
          are on the line!
        </li>
        <li>
          Explore Diverse Topics: From historical mysteries to mathematical,
          scientifical, sports and everything in-between. Our quiz cover it all.
          Choose the topic and buckle-up!
        </li>
      </ol>
      <p>
        Get ready to flex those brain muscles, have a blast, make lasting
        memories and become a legend! It's time to start Quizzing!
      </p>
      <div class="history-animation">
        <h3>History</h3>
        <p>
          Would have a "zoom-in" animation/transition when we open the website
          or when we hover.
        </p>
        <div class="zoom-in"></div>
      </div>
      <div class="geography-animation">
        <h3>Geography</h3>
        <p>
          Would have a "zoom-in" animation/transition when we open the website
          or when we hover.
        </p>
        <div class="zoom-in"></div>
      </div>
      <div class="mathematics-animation">
        <h3>Mathematics</h3>
        <p>
          Would have a "zoom-in" animation/transition when we open the website
          or when we hover.
        </p>
        <div class="zoom-in"></div>
      </div>

      <div>
        <a href="singleplayer.html">Single Player</a>
      </div>
      <div>
        <a href="doubleplayer.html">Double Players</a>
      </div>
      <div class="sweden-animation">
        <h3>Sweden</h3>
        <p>
          Would have a "zoom-in" animation/transition when we open the website
          or when we hover.
        </p>
        <div class="zoom-in"></div>
      </div>
      <div class="english-animation">
        <h3>English</h3>
        <p>
          Would have a "zoom-in" animation/transition when we open the website
          or when we hover.
        </p>
        <div class="zoom-in"></div>
      </div>
      <div class="science-animation">
        <h3>Science</h3>
        <p>
          Would have a "zoom-in" animation/transition when we open the website
          or when we hover.
        </p>
        <div class="zoom-in"></div>
      </div>
    </div>
</template>

<style scoped>
      .mainpage {
        display: block;
        padding-top: 3em;
        padding-bottom: 3em;
        min-height: 85%;
      }
      .zoom-in {
        box-sizing: border-box;
        border-radius: 50%;
      }
      .zoom-in {
        padding: 50px;
        background-color: rgb(128, 196, 97);
        transition: transform 0.2s;
        width: 200px;
        height: 200px;
        margin: 0 auto;
      }
      .zoom-in:hover {
        transform: scale(1.5);
      }

</style>
