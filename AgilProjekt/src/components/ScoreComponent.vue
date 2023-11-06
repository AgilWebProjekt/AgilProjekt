<script setup>
import { ref } from 'vue'
import html2canvas from 'html2canvas'

defineProps({
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

const scoreboard = ref(null)

const takeScreenshot = async () => {
  if (scoreboard.value) {
    const canvas = await html2canvas(scoreboard.value)
    const image = canvas.toDataURL('image/png')
    downloadImage(image, 'quiztasticScoreboard.png')
  }
}

const downloadImage = (blob, filename) => {
  const link = document.createElement('a')
  link.href = blob
  link.download = filename
  document.body.appendChild(link)
  link.click()
  document.body.removeChild(link)
}
</script>

<template>
  <div class="complete-area" v-if="quizCompleted">
    <div ref="scoreboard" class="scoreboard">
      <div class="score">
        <h2>You rocked at Quiztastic!</h2>
        <p>
          You scored <span>{{ score }} / {{ totalQuestions }}</span> questions correct
        </p>
      </div>
    </div>
    <button id="screenshot-button" @click="takeScreenshot">Save the scoreboard</button>
  </div>
</template>

<style scoped>
.complete-area {
  background-color: #008170;
  padding: 2rem;
  border-radius: 0.5rem;
  color: white;
  display: flex;
  flex-direction: column;
}

h2{
    font-size: 2rem;
}

.score p {
  font-size: 1.4rem;
}

.score span {
  background-color: #2cce7d;
  padding: 2px 5px;
  color: black;
}
@media (max-width: 768px) {
  h2{
    margin :25px 31px;

  }
}
</style>
