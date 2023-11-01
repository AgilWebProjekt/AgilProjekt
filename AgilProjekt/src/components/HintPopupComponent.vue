<script setup>
import { defineProps, defineEmits } from 'vue'

defineProps({
  visible: Boolean,
  hint: String,
  category: String
})

const emit = defineEmits(['update:visible'])

const closePopup = () => {
  emit('update:visible', false)
}

</script>

<template>
<div v-if="visible" class="popup">
    <div class="overlay" @click="closePopup"></div>
    <div class="content">
      <h3>Have a hint!</h3>
      <p>{{hint}}</p>
      <button @click="closePopup">Close</button>
    </div>
  </div>
</template>

<style scoped>
.popup {
  position: fixed;
  top: 0;
  left: 0;
  width: 100%;
  height: 100%;
  display: flex;
  align-items: center;
  justify-content: center;
  z-index: 1000;
}

.overlay {
  position: absolute;
  top: 0;
  left: 0;
  width: 100%;
  height: 100%;
  background-color: rgba(0, 0, 0, 0.7);
}

.content {
    color: black;
  position: relative;
  background-color: #fff;
  padding: 50px;
  border-radius: 8px;
  box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
  z-index: 1001;
  max-width: 400px;
}
  .content button {
    background-color: black;
    font-size: 0.8rem;
    font-weight: normal;
  }

  p{
    font-size: 1.5rem;
    border-style: dotted;
    padding: 1rem;
  }
</style>