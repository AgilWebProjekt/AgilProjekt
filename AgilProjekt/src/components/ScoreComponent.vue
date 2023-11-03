<script setup>

const props = defineProps({
  score: {
    type: Number,
    required: true
  },
  totalQuestions: {
    type: Number,
    required: true
  },
  quizCompleted: {
    type: Boolean,
    required: true
  }
})
</script>

<template>
    <div class="score" v-if="quizCompleted">
      <h2>You have finished the quiz!</h2>
      <p>
        You scored <span>{{ props.score }} / {{ totalQuestions }}</span> questions correct
      </p>
    </div>
  </template>
 
  <style scoped>
  .score {
    background-color: #008170;
    padding: 5rem;
    border-radius: 0.5rem;
    color: white;
  }
  
  .score p {
    font-size: 30px;
  }
  
  .score span {
    background-color: #2cce7d;
    padding: 2px 5px;
    color: black;
  }
  </style>
  