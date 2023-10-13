<script setup>    
</script>

<template>
    <div class="quiz-container">
    <h1>Quiz</h1>
    <div>
      <div>
        <h3>Question:</h3>
        <p>Which language has the most native speakers?</p>
        <label for="1"><input type="radio" name="quiz" id="1" value="1"> English</label>
        <label for="2"><input type="radio" name="quiz" id="2" value="2"> Spanish</label>
        <label for="3"><input type="radio" name="quiz" id="3" value="3"> Mandarin Chinese</label>
        <label for="4"><input type="radio" name="quiz" id="4" value="4"> French</label>
      </div>
      <button type="submit" onclick="clickNextButton(1)">Next ❯</button>
    </div>
    <div>
      <h4>Play again <a href="">here</a></h4>
    </div>
  </div>
</template>

<style scoped>
  body {
      font-family: 'Arial', sans-serif;
      background-color: #ccc;
      margin: 0;
      padding: 0;
      display: flex;
      align-items: center;
      justify-content: center;
      height: 100vh;
    }

    h1 {
      color: #333;
    }

    div.quiz-container {
      background-color: #f2f2f2;
      width: 100%;
      max-width: 800px;
      padding: 30px;
      box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
      border-radius: 12px;
    }

    h3, h4 {
      color: #555;
    }

    p {
      color: #666;
    }

    label {
      display: flex;
      align-items: center;
      margin-bottom: 10px;
    }

    input[type="radio"] {
      margin-right: 10px;
    }

    button {
      background-color: #4caf50;
      color: #fff;
      padding: 10px 20px;
      border: none;
      border-radius: 5px;
      cursor: pointer;
    }

    button:hover {
      background-color: #45a049;
    }

    a {
      color: #3498db;
      text-decoration: none;
    }

    a:hover {
      text-decoration: underline;
    }
</style>
