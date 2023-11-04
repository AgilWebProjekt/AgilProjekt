<script setup>
import { ref, onMounted} from 'vue';
//import { useRouter } from 'vue-router';

const emit = defineEmits([
  'countdownCompleted'
])

const countdown = ref(3);

//const countdownZoomed = ref(false);
//const router = useRouter();

const displayMessage = ref(''); // This will be used to display the "Start!" message.

const startCountdown = () => {
  const interval = setInterval(() => {
    if (countdown.value > 0) {
      countdown.value--;
    } else if (countdown.value === 0) {
      displayMessage.value = 'Start!'; // Update the message
      countdown.value--; // Decrease countdown below zero to stop rendering the numbers

      // Stop the interval
      clearInterval(interval);

      // Emit the countdownCompleted event after a brief delay to ensure "Start!" is visible
      setTimeout(() => {
        emit('countdownCompleted');
      }, 3000); // Make sure this delay is long enough for the "Start!" message to be seen
    }
  }, 1500);
};


onMounted(() => {
  startCountdown();
});

//onUnmounted(() => {
  //router.back();
  //emit('countdown', false)
//});
</script>

<template>
  <div class="countdown-container">
    <transition
      name="zoom"
      mode="out-in"
      @before-enter="beforeEnter"
      @enter="enter"
      @leave="leave"
    >
      <div v-if="countdown >= 0" class="countdown-number" :key="countdown">
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

.zoom-enter-active, .zoom-leave-active {
  position: absolute;
}

.zoom-enter-active {
  animation: zoomIn 2s ease-out forwards;
}

.zoom-leave-active {
  animation: zoomOut 2s ease-in forwards;
}

.countdown-number, .countdown-message {
  font-size: 48px;
  opacity: 0;
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
  