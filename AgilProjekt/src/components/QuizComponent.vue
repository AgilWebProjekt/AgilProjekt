<script setup>
import CountdownComponent from './CountdownComponent.vue'
import TimerComponent from './TimerComponent.vue'
import HintPopupComponent from './HintPopupComponent.vue'
import { ref, onMounted, computed } from 'vue'

import axios from 'axios'


const props = defineProps({
  category: {
    type: String,
    required: true
  }
})

const questions = ref([])
const currentQuestionIndex = ref(0)
const timerRef = ref(null)

function shuffleArray(array) {
  for (let i = array.length - 1; i > 0; i--) {
    const j = Math.floor(Math.random() * (i + 1))
    ;[array[i], array[j]] = [array[j], array[i]]
  }
}

onMounted(() => {
  fetchQuestions()
})

const fetchQuestions = async () => {
  try {
    const response = await axios.get(`http://localhost:3000/api/${props.category}`)
    const fetchedQuestions = response.data
    shuffleArray(fetchedQuestions)
    questions.value = fetchedQuestions.slice(0, 5)
  } catch (error) {
    console.error('Error fetching ${category.value} questions:', error)
  }
  
}

const currentQuestion = computed(() => {
  if (questions.value[currentQuestionIndex.value]) {
    const q = questions.value[currentQuestionIndex.value]
    const prefix = props.category
    return {
      ...q,
      id: q[`${prefix}Id`],
      question: q[`${prefix}Question`],
      options: [
        q[`${prefix}Option1`],
        q[`${prefix}Option2`],
        q[`${prefix}Option3`],
        q[`${prefix}Option4`]
      ],
      answer: q[`${prefix}Answer`],
      hint: q[`${prefix}Hints`]
    };
    
  }
  return null
})

const score = ref(0)

const setAnswer = (evt, option) => {
  timerRef.value.pause()
  if (option === currentQuestion.value.answer) {
    questions.value[currentQuestionIndex.value].isCorrect = true
    score.value++
  } else {
    questions.value[currentQuestionIndex.value].isCorrect = false
  }
  questions.value[currentQuestionIndex.value].selected = option
}

const quizCompleted = ref(false)

const nextQuestion = () => {
  if (currentQuestionIndex.value < questions.value.length - 1) {
    currentQuestionIndex.value++
    timerRef.value.reset()
    timerRef.value.resume()
  } else {
    quizCompleted.value = true
  }
}

const hintPopupTrigger = ref()

const handleHintPopupVisibility = (visible) => {
  hintPopupTrigger.value = visible
  if (visible) {
    timerRef.value.pause()
  } else {
    timerRef.value.resume()
  }
}

const countdown = ref(true)

const onCountdownCompleted = () => {
  countdown.value = false; }
</script>

<template>
<div class="countdown-screen" v-if="countdown">
  <CountdownComponent @countdownCompleted="onCountdownCompleted" />
  </div>
  <main v-else class="quiz">
    <h1 class="heading">{{category}}</h1>
    <div class="quiz-box" v-if="currentQuestionIndex < questions.length && !quizCompleted">
      <div class="question-box">
        <div class="hint-and-timer">
          <button class="hint-button" @click="handleHintPopupVisibility(true)">
            <img class="hint-img" src="..\assets\551080.png" />
          </button>
          <HintPopupComponent
            :visible="hintPopupTrigger"
            :hint="currentQuestion.hint"
            category=props.category
            @update:visible="handleHintPopupVisibility($event)"
          />
          <TimerComponent :onTimeout="nextQuestion" ref="timerRef" />
        </div>

        <h1>{{ currentQuestion.question}}</h1>
      </div>

      <div class="option-box" v-if="currentQuestion">
        <label
          v-for="(option, index) in currentQuestion.options"
          :key="index"
          :class="`option ${
            currentQuestion.selected === option
              ? option == currentQuestion.answer
                ? 'correct'
                : 'wrong'
              : ''
          } 
                  ${
                    currentQuestion.selected && option != currentQuestion.selected ? 'disabled' : ''
                  }`"
        >
          <input
            type="radio"
            :name="currentQuestion.id"
            :value="option"
            :checked="currentQuestion.selected === option"
            :disabled="currentQuestion.selected"
            @change="(evt) => setAnswer(evt, option)"
          />
          <div>{{ option }}</div>
        </label>
      </div>

      <button @click="nextQuestion">Next</button>
    </div>
    <div class="score" v-else-if="quizCompleted">
      <h2>You have finished the quiz!</h2>
      <p>
        You scored <span>{{ score }} / {{ questions.length }}</span> questions correct
      </p>
    </div>
  </main>
</template>

<style>
.quiz {
  display: flex;
  flex-direction: column;
  align-items: center;
  padding: 2rem;
  margin-top: 2rem;
}

.heading {
  text-transform: capitalize;
  color: white;
  margin-bottom: 3rem;
  font-size: 2.5rem;
}

.quiz-box {
  background-color: #008170;
  padding: 1.8rem 3rem;
  width: 100%;
  max-width: 500px;
  border-radius: 0.5rem;
}

.question-box {
  margin-top: 0.5rem;
  margin-bottom: 1rem;
  padding: 1.5rem;
  color: white;
  display: flex;
  flex-direction: column;
}

.hint-and-timer {
  display: flex;
  justify-content: space-between;
  align-items: center;
  height: 3rem;
}

.hint-button {
  width: 2.5rem;
  background-color: #008170;
}
.hint-img {
  width: 2.5rem;
}

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

h1 {
  margin-top: 15px;
}

.option-box {
  margin: 1rem 1rem 2rem 1rem;
}

.option {
  padding: 1rem;
  display: block;
  background-color: rgb(207, 200, 200);
  margin-bottom: 2rem;
  border-radius: 0.5rem;
  cursor: pointer;
  font-size: 1.1rem;
}

.option:hover {
  background-color: #232d3f;
  color: white;
}

.option.correct {
  background-color: #2cce7d;
}

.option.wrong {
  background-color: #ff5a5f;
}

.option input {
  display: none;
}

button {
  border-style: none;
  background-color: #005b41;
  outline: none;
  cursor: pointer;
  padding: 0.5rem 1rem;
  color: white;
  font-weight: 700;
  text-transform: uppercase;
  font-size: 1.2rem;
  border-radius: 0.5rem;
  margin: 1rem;
  margin-bottom: 2rem;
}

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

label.option.disabled {
  opacity: 0.5;
  pointer-events: none;
}
</style>
