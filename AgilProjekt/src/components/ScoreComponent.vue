<script setup>
import { ref } from 'vue';
import html2canvas from 'html2canvas';

const scoreboard = ref(null);

const takeScreenshot = async () => {
  if (scoreboard.value) {
    const canvas = await html2canvas(scoreboard.value);
    const image = canvas.toDataURL('image/png');
    downloadImage(image, 'scoreboard.png');
  }
};

const downloadImage = (blob, filename) => {
  const link = document.createElement('a');
  link.href = blob;
  link.download = filename;
  document.body.appendChild(link);
  link.click();
  document.body.removeChild(link);
};

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
    <div ref="scoreboard" class="scoreboard" v-if="quizCompleted">
    <div class="score" >
      <h2>You rocked at Quiztastic!</h2>
      <p>
        You scored <span>{{ props.score }} / {{ totalQuestions }}</span> questions correct
      </p>
      <button @click="takeScreenshot">Save the scoreboard</button>
    </div>
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
  