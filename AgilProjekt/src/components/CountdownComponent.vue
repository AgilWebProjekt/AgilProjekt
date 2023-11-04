<script setup>
import { ref, onMounted } from 'vue'

const emit = defineEmits(['countdownCompleted'])

const countdown = ref(3)

const displayMessage = ref('')

const startCountdown = () => {
  countdown.value = 3
  setTimeout(() => {
    countdown.value--
  }, 0)
  const interval = setInterval(() => {
    if (countdown.value > 0) {
      countdown.value--
    } else if (countdown.value === 0) {
      displayMessage.value = 'Start!'
      countdown.value--

      clearInterval(interval)
      setTimeout(() => {
        emit('countdownCompleted')
      }, 2000)
    }
  }, 2000)
}

onMounted(() => {
  startCountdown()
})
</script>

<template>
  <div class="countdown-container">
    <transition name="zoom" mode="out-in" @before-enter="beforeEnter" @enter="enter" @leave="leave">
      <div v-if="countdown >= 0" class="countdown-number zoom-enter-active" :key="countdown">
        {{ countdown }}
      </div>

      <div v-else class="countdown-message" :key="displayMessage">
        {{ displayMessage }}
      </div>
    </transition>
  </div>
</template>

<style scoped>
.countdown-container {
  color: white;
  display: flex;
  justify-content: center;
  align-items: center;
  height: 100vh;
}

.zoom-enter-active,
.zoom-leave-active {
  position: absolute;
  animation-duration: 1s;
}

.zoom-enter-active {
  animation: zoomIn 1s ease-out forwards;
}

.zoom-leave-active {
  animation: zoomOut 1s ease-in forwards;
}

.countdown-number,
.countdown-message {
  font-size: 48px;
  opacity: 1;
  transform: scale(1);
  transition: opacity 0.5s ease-in-out;
}

@keyframes zoomIn {
  0% {
    transform: scale(0);
    opacity: 0;
  }

  50% {
    opacity: 1;
  }

  100% {
    transform: scale(1);
    opacity: 1;
  }
}

@keyframes zoomOut {
  0% {
    transform: scale(1);
    opacity: 1;
  }
  100% {
    transform: scale(0);
    opacity: 0;
  }
}
</style>
