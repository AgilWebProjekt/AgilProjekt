<script setup></script>

<template>
  <div class="banner">
    <div class="images-top">
      <img title="history" src="..\assets\history.png" alt="history" />
      <img title="science" src="..\assets\science.png" alt="science" />
      <img title="language" src="..\assets\language.png" alt="language" />
    </div>

    <h1>Welcome to Quiztastic!</h1>

    <div class="images-bottom">
      <img title="maths" src="..\assets\maths.png" alt="mathematics" />
      <img title="geography" src="..\assets\geography.png" alt="geography" />
      <img title="sweden" src="..\assets\sweden.png" alt="sweden" />
    </div>
  </div>
</template>

<style scoped>
.banner {
  margin-top: 40px;
}
h1 {
  display: flex;
  align-items: center;
  justify-content: center;
  font-size: 3em;
  margin: 30px 0;
  color: white;
}
img {
  width: 120px;
  padding: 10px;
  margin: 10px;
}

img:hover {
  animation: wiggle 0.5s infinite;
  animation-timing-function: linear;
}

@keyframes wiggle {
  0% {
    transform: translate(0, 0) rotate(0deg);
  }
  25% {
    transform: translate(5px, 5px) rotate(5deg);
  }
  50% {
    transform: translate(0, 0) rotate(0eg);
  }
  75% {
    transform: translate(-5px, 5px) rotate(-5deg);
  }
  100% {
    transform: translate(0, 0) rotate(0deg);
  }
}

.images-top {
  margin: 0 100px;
  animation-duration: 3s;
  animation-delay: 2s;
  animation-name: slideintop;
  animation-timing-function: ease-out;
  display: flex;
  justify-content: space-around;
  animation-fill-mode: forwards;
}

@keyframes slideintop {
  from {
    margin-left: 100%;
    width: 200%;
  }

  to {
    margin-left: 5%;
    width: 90%;
  }
}

.images-bottom {
  margin: 0 100px;
  animation-duration: 3s;
  animation-delay: 2s;
  animation-name: slideinbottom;
  animation-timing-function: ease-out;
  display: flex;
  justify-content: space-around;
  animation-fill-mode: forwards;
}

@keyframes slideinbottom {
  from {
    margin-left: -100%;
    width: 100%;
  }

  to {
    margin-left: 5%;
    width: 90%;
  }
}
@media (max-width: 768px) {
  .images-bottom{
    display: grid;
  }
  
  .images-top {
    display: grid;
  }
}
</style>
