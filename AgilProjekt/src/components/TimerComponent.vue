<script setup>
import { ref, watchEffect, computed } from 'vue'

const props = defineProps({
  initialTime: {
    type: Number,
    default: 20
  },
  onTimeout: Function
})

const timer = ref(props.initialTime)
const isTimerPaused = ref(false)
let timerInterval = null

const formattedTime = computed(() => {
  const minutes = Math.floor(timer.value / 60)
  const remainingSeconds = timer.value % 60
  const formattedMinutes = String(minutes).padStart(2, '0')
  const formattedSeconds = String(remainingSeconds).padStart(2, '0')
  return `Time remaining: ${formattedMinutes}:${formattedSeconds}`
})

watchEffect(() => {
  if (timer.value > 0 && !isTimerPaused.value) {
    timerInterval = setTimeout(() => {
      timer.value--
      if (timer.value === 0 && props.onTimeout) {
        props.onTimeout()
      }
    }, 1000)
  }
  else if (timerInterval) {
    clearTimeout(timerInterval)
  }
})

const pause = () => {
  isTimerPaused.value = true
  if (timerInterval) {
    clearTimeout(timerInterval)
  }
}

const resume = () => {
  isTimerPaused.value = false
}

const reset = (newTime = props.initialTime) => {
  timer.value = newTime
}

defineExpose({ pause, resume, reset })
</script>

<template>
  <div class="timer-box">
    <input type="text" readonly class="timer" :value="formattedTime" />
  </div>
</template>


<style>
.timer-box {
  display: flex;
  justify-content: flex-end;
}

.timer {
  background: #008170;
  border: none;
  color: white;
  font-size: 1rem;
}
</style>
