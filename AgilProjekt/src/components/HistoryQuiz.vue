<script setup>
import { ref, onMounted } from 'vue';
import axios from 'axios';

const historyQuestions = ref([]);

onMounted(() => {
    fetchHistoryQuestions();
});

const fetchHistoryQuestions = async () => {
    try {
        const response = await axios.get('http://localhost:3000/api/history'); // Replace with your server URL
        historyQuestions.value = response.data;
    } catch (error) {
        console.error('Error fetching history questions:', error);
    }
};
</script>

<template>
    <div>
        <h1>History Questions</h1>
        <ul>
            <li v-for="question in historyQuestions" :key="question.historyId">
                {{ question.historyQuestion }}
            </li>
        </ul>
    </div>
</template>
     

<style scoped>
div{
    color:aliceblue;
}
</style>