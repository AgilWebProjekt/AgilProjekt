<template>
    <div>
        <h1>Math Questions</h1>
        <ul>
            <li v-for="question in mathQuestions" :key="question.mathId">
                {{ question.mathQuestion }}
            </li>
        </ul>
    </div>
</template>
     
<script setup>
import { ref, onMounted } from 'vue';
import axios from 'axios';

const mathQuestions = ref([]);

onMounted(() => {
    fetchMathQuestions();
});

const fetchMathQuestions = async () => {
    try {
        const response = await axios.get('http://localhost:3000/api/mathematics'); // Replace with your server URL
        mathQuestions.value = response.data;
    } catch (error) {
        console.error('Error fetching math questions:', error);
    }
};
</script>