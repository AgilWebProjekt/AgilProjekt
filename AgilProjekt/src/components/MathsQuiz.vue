<script setup>
import { ref, onMounted, computed } from 'vue'
import axios from 'axios'

const questions = ref([])
const currentQuestionIndex = ref(0)


onMounted(() => {
  fetchQuestions()
})

const fetchQuestions = async () => {
  try {
    const response = await axios.get('http://localhost:3000/api/mathematics')
    console.log(response.data)
    questions.value = response.data
    console.log(questions.value)
    console.log(questions.value.at(currentQuestionIndex).mathQuestion)
    console.log(questions.value.length)
    console.log(questions.value.at(currentQuestionIndex).mathOption1)

  } catch (error) {
    console.error('Error fetching maths questions:', error)
  }
}

console.log(currentQuestionIndex.value)

const currentQuestion = computed(() => {
  if (questions.value[currentQuestionIndex.value]) {
    const q = questions.value[currentQuestionIndex.value];
    return {
      ...q,
      options: [q.mathOption1, q.mathOption2, q.mathOption3, q.mathOption4],
    };
  }
  return null;
});

const score = computed(() => {
  let value = 0
  questions.value.forEach((q) => {
    if (q.selected === q.answer) {
      value++
    }
  })
  return value
})

const setAnswer = (evt, option) => {
  if (option === currentQuestion.value.mathAnswer) {
    questions.value[currentQuestionIndex.value].isCorrect = true;
  } else {
    questions.value[currentQuestionIndex.value].isCorrect = false;
  }
  questions.value[currentQuestionIndex.value].selected = option;
  console.log('Selected option:', currentQuestion.value.selected); // Add this line

}

 const nextQuestion = () => {
  if (currentQuestionIndex.value < questions.value.length - 1) {
    currentQuestionIndex.value++
  } 
}
</script>

<template>
  <main class="quiz">
    <div class="quiz-box">
      <div class="question-box">
          <!-- <div class="timer-box">
          <input type="text" readonly class="timer" id="timer" :value="formatTime(timer)" />
        </div> -->

         <h1>Math Questions</h1>
        <div v-if=" currentQuestionIndex < questions.length">
          {{ currentQuestion.mathQuestion }}
        </div> 
        
        <!-- <button @click="previousQuestion" :disabled="currentQuestionIndex.value === 0">Previous</button>
        <button @click="nextQuestion" :disabled="currentQuestionIndex.value === questions.length.value - 1">Next</button>
 -->
      </div>

      <div class="option-box" v-if="currentQuestion">
  <label
    v-for="(option, index) in currentQuestion.options"
    :key="index"
    :class="`option ${
      currentQuestion.selected === option
        ? option == currentQuestion.mathAnswer
          ? 'correct'
          : 'wrong'
        : ''
    } 
                  ${
                    currentQuestion.selected && option != currentQuestion.selected
                      ? 'disabled'
                      : ''
                  }`"
  >
  <input
  type="radio"
  :name="currentQuestion.mathId"
  :value="option"
  :checked="currentQuestion.selected === option"
  :disabled="currentQuestion.selected"
  @change="evt => setAnswer(evt, option)"
/>
    <div>{{ option }}</div>
  </label>
</div>

      <button @click="nextQuestion">Next</button>
    </div>
    <!-- <div class="score" v-else>
      <h2>You have finished the quiz!</h2>
      <p>
        You scored <span>{{ score }} / {{ questions.length }}</span> questions correct
      </p>
    </div> -->
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
