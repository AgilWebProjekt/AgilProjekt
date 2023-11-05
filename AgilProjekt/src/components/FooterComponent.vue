<template>
  <footer class="page-footer">
    <p>
      &copy;
      <a class="github" href="https://github.com/AgilWebProjekt" target="_blank">Quiztastic</a>
      built by Team Remote |
      <a class="contact" href="/contact" target="_self">Contact Us</a>
    </p>
  </footer>
</template>

<script setup></script>

<style scoped>
/*.page-footer {
  height: 4rem;
  background-color: #005b41a7;
  color: aliceblue;
  display: flex;
  align-items: center;
  justify-content: center;
  margin-top: auto;
  min-height: 100vh;
}*/

.page-footer {
  background-color: #005b41a7;
  color: aliceblue;
  display: flex;
  align-items: center;
  justify-content: center;
  margin-top: auto;
}

.contact:hover {
  color: black;
}

.github:hover {
  color: black;
}
.contact {
  color: white;
  transition: color 0.3s;
  margin: 0;
}

.github {
  color: white;
  transition: color 0.3s;
  margin: 0 1rem;
}

.page-footer a::visited {
  color: aliceblue;
}
</style>
