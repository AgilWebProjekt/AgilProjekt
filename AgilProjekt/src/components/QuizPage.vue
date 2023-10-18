<script setup>
import { ref, computed } from 'vue';

const questions = ref([
  {
    question: "Which language has the most native speakers?",
    options: ["English", "Spanish", "Mandarin Chinese", "French"],
    answer: 2,
    selected: null
  },
  {
    question: "Which planet is known as the Red Planet?",
    options: ["Earth", "Mars", "Jupiter", "Saturn"],
    answer: 1,
    selected: null
  }
]);

const quizCompleted = ref(false)
const currentQuestionIndex = ref(0);
const score = computed (() => {
  let value = 0
  questions.value.map (q => {
    if (q.selected == q.answer) {
      value++
    }
  })
  return value
})

const currentQuestion = computed(() => questions.value[currentQuestionIndex.value]);

const setAnswer = evt => {
  questions.value[currentQuestionIndex.value].selected = evt.target.value
  evt.target.value = null
}

const nextQuestion = () => {
  if (currentQuestionIndex.value < questions.value.length - 1) {
    currentQuestionIndex.value++
  } else {
    quizCompleted.value = true
  }
};
</script>

<template>
<main class="quiz">
  <div class="quiz-box" v-if="!quizCompleted">
    <div class="question-box" >
      <h1>{{ currentQuestion.question }}</h1>
    </div>
    
    <div class="option-box">
      <label v-for="(option, index) in currentQuestion.options"
              :key="index"
              :class="`option ${
                        currentQuestion.selected == index
                          ? index == currentQuestion.answer
                            ? 'correct'
                            : 'wrong'
                          : ''
                        } 
                        ${
                          currentQuestion.selected != null &&
                          index != currentQuestion.selected
                            ? 'disabled'
                            : ''
                        }`">
        <input type="radio"
              :name="currentQuestion.index"
              :value="index"
            v-model="currentQuestion.selected"
              :disabled="currentQuestion.selected"
              @change="setAnswer"
        >
        <div>{{ option }}</div>
      </label>
    </div>
  
    <button @click="nextQuestion">
      Next
    </button>
  
  </div>
  <div class="score" v-else>
    <h2>You have finished the quiz!</h2>
    <p>You scored <span>{{ score }} / {{ questions.length }}</span> questions correct</p>
  </div>
</main>
</template>

<style>

.quiz {
  display:  flex;
  flex-direction: column;
  align-items: center;
  padding: 2rem;
  margin-top : 2rem;
}

.quiz-box {
  background-color:#008170;
  padding: 1.8rem 3rem;
  width:100%;
  max-width: 500px;
  border-radius: 0.5rem;
  
}

.question-box {
  margin-bottom: 1rem;
  padding: 1.5rem;
  color: white;
}

.option-box {
  margin: 1rem 1rem 2rem 1rem;
}

.option {
  padding: 1rem;
  display: block;
  background-color:rgb(207, 200, 200);
  margin-bottom: 2rem;
  border-radius: 0.5rem;
  cursor: pointer;
}

.option:hover {
  background-color: #232D3F;
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
	appearance: none;
  background-color: #005B41;
	outline: none;
	cursor: pointer;
	padding: 0.5rem 1rem;
	color: white;
	font-weight: 700;
	text-transform: uppercase;
	font-size: 1.2rem;
	border-radius: 0.5rem;
  margin: 1rem;
  margin-bottom: 2rem
}

.score {
  background-color: #008170;
  padding: 5rem;
  border-radius: 0.5rem;
  color: white;
}

.score p{
  font-size: 30px;
}

.score span {
  background-color:#2cce7d;
  padding: 2px 5px;
  color: black;
}

</style>