<script setup>


</script>

<template>
  <div class="about-section">
  <div class="top">
  <div class="top-left">
    <h1>About Us</h1> 
    <h2>Welcome to Quiztastic</h2>
    <p>
      We are a passionate team of four dedicated individuals who share a common goal: to make learning engaging, fun, and accessible to everyone. 
      As students ourselves, we understand the challenges and joys of the educational journey, which inspired us to create this innovative quiz app 
      for our school project.    </p></div>
      <div class="top-right"><img src="../assets/Untitled.jpg"></div></div>
      <div class="team">
      <h3>Meet Our Team</h3>
      <ul>
      <li>Stephen Osedumme</li>
      <li>Saher Ismail</li>
      <li>Venu Modi</li>
      <li>Wassim Tajeddin</li>
      </ul></div>
    
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
    margin: 0 10em;
}

.top-left{
  display: flex;
    flex-direction: column;
    align-items: flex-start;
    margin: 0 2em;
}
  h1 {
    color: #0f9d58;
    font-size: 5em;
    margin-top: 40px;
    margin-bottom: 20px;
  }

  img{
    width: 40em;
    height: auto;
  }

  h2 {
    color: #0f9d58;
    font-size: 3em;
    text-align: left;
    margin: 10px 0;
  }

  h3{
    color:#0f9d58;
    font-size: 2em;
  }

  p {
    font-size: 1.2em;
    color: white;
    margin: 0;
  
  }

  .team ul{
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
