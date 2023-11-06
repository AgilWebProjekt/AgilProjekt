<script setup></script>

<template>
  <div class="banner">
    <div class="images">
      <RouterLink to="/categories/history"
        ><img title="History" src="..\assets\history.png" alt="history"
      /></RouterLink>
      <RouterLink to="/categories/science"
        ><img title="Science" src="..\assets\science.png" alt="Science"
      /></RouterLink>
      <RouterLink to="/categories/language"
        ><img title="Language" src="..\assets\language.png" alt="Language"
      /></RouterLink>
    </div>

    <p>Click on one of the icons to pick a category to play!</p>

    <div class="images">
      <RouterLink to="/categories/mathematics"
        ><img title="Mathematics" src="..\assets\maths.png" alt="mathematics"
      /></RouterLink>
      <RouterLink to="/categories/geography"
        ><img title="Geography" src="..\assets\geography.png" alt="Geography"
      /></RouterLink>
      <RouterLink to="/categories/sweden"
        ><img title="Sweden" src="..\assets\sweden.png" alt="Sweden"
      /></RouterLink>
    </div>
  </div>
</template>

<style scoped>
.banner {
  margin-top: 40px;
  min-height: 100vh;
}
p {
  display: flex;
  align-items: center;
  justify-content: center;
  font-size: 2rem;
  margin: 30px 0;
  color: white;
}

.images {
  display: flex;
  justify-content: space-evenly;
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
@media (max-width: 768px) {
  img{
    width: 75px;
    padding : 0px;
  }
  p{
    font-size: 1.4em;
    margin: 1em;
  }  
  
}
</style>
