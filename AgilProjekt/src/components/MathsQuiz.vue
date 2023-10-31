<script setup>
import { ref, computed } from "vue";
import axios from "axios";

const quizData = ref([]);
const currentQuestionIndex = ref(0);
const score = ref(0);
const selectedAnswer = ref(null);

const fetchQuizData = async (subject) => {
  try {
    const response = await axios.get(`http://localhost:3000/api/${subject}`);
    quizData.value = response.data;
  } catch (error) {
    console.error("Error fetching quiz data:", error);
  }
};

fetchQuizData("science"); // or "science"

const currentQuestion = computed(() => {
  if (quizData.value.length > 0) {
    const question = quizData.value[currentQuestionIndex.value];
    if (question.scienceQuestion) {  // Check if it's a science question
      return {
        question: question.scienceQuestion,
        options: [
          question.scienceOption1,
          question.scienceOption2,
          question.scienceOption3,
          question.scienceOption4,
        ],
        answer: question.scienceAnswer,
      };
    }
    // You can add similar blocks for mathQuestion and any other type if necessary
  }
return null;
});

const checkAnswer = (option) => {
  if (option === currentQuestion.value.answer) {
    score.value++;
    selectedAnswer.value = "correct";
  } else {
    selectedAnswer.value = "wrong";
  }
};

const nextQuestion = () => {
  currentQuestionIndex.value++;
  selectedAnswer.value = null;
};

const isLastQuestion = computed(
  () => currentQuestionIndex.value === quizData.value.length - 1
);

const getButtonClass = (index) => {
  if (!currentQuestion.value.options || !currentQuestion.value.answer || !selectedAnswer.value) return "";

  const correctAnswerIndex = currentQuestion.value.options.indexOf(currentQuestion.value.answer);
  if (selectedAnswer.value === "correct" && index === correctAnswerIndex) {
    return "correct";
  }
  if (selectedAnswer.value === "wrong" && index === correctAnswerIndex) {
    return "correct";
  }
  return "";
};

console.log('quizData:', quizData.value);
console.log('currentQuestionIndex:', currentQuestionIndex.value);
console.log('currentQuestion:', currentQuestion);
</script>


<template>
    <div v-if="quizData && currentQuestion.value">
      <h2>{{ currentQuestion.value.question }}</h2>
      <div v-for="(option, index) in currentQuestion.value.options" :key="index">
        <button
          :class="getButtonClass(index)"
          @click="checkAnswer(option)"
        >
          {{ option }}
        </button>
      </div>
  
      <button @click="nextQuestion" v-if="!isLastQuestion">Next</button>
  
      <div v-if="isLastQuestion">
        Your score is: {{ score }}/{{ quizData?.length }}
      </div>
    </div>
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

h1{
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

correct {
  background-color: #2cce7d;
}

wrong {
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
</style>