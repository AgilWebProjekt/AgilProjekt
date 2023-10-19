<script setup>


</script>

<template>
  <div class="about-section">
  <div class="top">
    <h1>About Us</h1>
    <img src="../assets/team-programmers-working-software-flat-illustration_74855-18772.jpg">
    </div>
    <h2>Welcome to Quiztastic</h2>
    <p class="description">
      We are a passionate team of four dedicated individuals who share a common goal: to make learning engaging, fun, and accessible to everyone. 
      As students ourselves, we understand the challenges and joys of the educational journey, which inspired us to create this innovative quiz app 
      for our school project.    </p>
      <h3>Meet Our Team</h3>
      <ul class="team">
      <li>Stephen Osedumme</li>
      <li>Saher Ismail</li>
      <li>Venu Modi</li>
      <li>Wassim Tajeddin</li>
      </ul>
    
  </div>
</template>

<style scoped>


 .about-section {
  display: flex;
  text-align: center;
  flex-direction: column;
  padding: 20px 0;
}

.top{
  display: flex;
  justify-content: space-evenly;
    align-items: center;
    padding: 4rem;
}
  h1 {
    color: #0f9d58;
    font-size: 5em;
  }

  img{
    width: 40em;
    height: auto;
    border-radius: 3rem;
  }

  h2 {
    color: #0f9d58;
    font-size: 3em;
  }

  h3{
    color:#0f9d58;
    font-size: 2em;
  }

  .description {
    font-size: 1.2em;
    color: white;
    margin: 20px 40px 100px 40px;
    padding: 0 100px;
  
  }

  .team{
    list-style: none;
    padding-left: 0;
    color: white;
    margin-top: 0;
    font-size: 1.2em;
  }

  .team li{
    margin:0;
  }
</style>
