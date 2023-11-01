<script setup>
import { ref } from 'vue';

const thankYouVisible = ref(false);
const firstName = ref('');
const lastName = ref('');
const message = ref('');

const submitForm = () => {
  if (isValid()) {
    thankYouVisible.value = true;
    firstName.value = '';
    lastName.value = '';
    message.value = '';
  }
};

const isValid = () => {
  const nameRegex = /^[A-Za-z]+$/;

  if (!nameRegex.test(firstName.value) || !nameRegex.test(lastName.value)) {
    alert('Please enter valid first and last names (only letters).');
    return false;
  }

  if (message.value.length < 25) {
    alert('Please enter a message with at least 25 characters.');
    return false;
  }

  return true;
};
</script>

<template>
  <div>
    <form id="contactForm" @submit.prevent="submitForm" novalidate>
      <h1>Contact Us</h1>
      <label for="fname">First Name</label>
      <input v-model="firstName" type="text" id="fname" name="firstname" placeholder="Your name.." pattern="[A-Za-z]+" required>

      <label for="lname">Last Name</label>
      <input v-model="lastName" type="text" id="lname" name="lastname" placeholder="Your last name.." pattern="[A-Za-z]+" required>

      <label for="message">Message</label>
      <textarea v-model="message" id="message" name="message" rows="9" minlength="25" required></textarea>
  
      <input type="submit" id="submitBtn" value="Submit">
    </form>

    <p class="thanks" v-if="thankYouVisible">Thank you for your message!</p>
  </div>
</template>


<style scoped>
.thanks{
   padding: 25px 50px;
    color: white;
    font-size: 1.3em;
    font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;
}
input[type=text], textarea {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
}

input[type=submit] {
  width: 100%;
  background-color: #005b41;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  border-radius: 4px;
  cursor: pointer;
}

input[type=submit]:hover {
  background-color: #45a049;
}

form {
  border-radius: 5px;
  background-color: #f2f2f2;
  padding: 20px;
}
</style>
