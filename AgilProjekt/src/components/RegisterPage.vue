<script setup>
import { Form, Field } from 'vee-validate'
import * as Yup from 'yup'

//import { useUsersStore, useAlertStore } from '@/stores'
//import { router } from '@/router'

const schema = Yup.object().shape({
  firstName: Yup.string().required('First Name is required'),
  lastName: Yup.string().required('Last Name is required'),
  username: Yup.string().required('Username is required'),
  password: Yup.string()
    .required('Password is required')
    .min(6, 'Password must be at least 6 characters')
})

/*async function onSubmit(values) {
  const usersStore = useUsersStore()
  const alertStore = useAlertStore()
  try {
    await usersStore.register(values)
    await router.push('/account/login')
    alertStore.success('Registration successful')
  } catch (error) {
    alertStore.error(error)
  }
}*/
</script>

<template>
  <div class="card m-3">
    <h2 class="card-header">Register</h2>
    <div class="card-body">
      <Form @submit="onSubmit" :validation-schema="schema" v-slot="{ errors, isSubmitting }">
        <div class="form-group">
          <label>First Name</label>
          <Field
            name="firstName"
            type="text"
            class="form-control"
            :class="{ 'is-invalid': errors.firstName }"
          />
          <div class="invalid-feedback">{{ errors.firstName }}</div>
        </div>
        <div class="form-group">
          <label>Last Name</label>
          <Field
            name="lastName"
            type="text"
            class="form-control"
            :class="{ 'is-invalid': errors.lastName }"
          />
          <div class="invalid-feedback">{{ errors.lastName }}</div>
        </div>
        <div class="form-group">
          <label>Username</label>
          <Field
            name="username"
            type="text"
            class="form-control"
            :class="{ 'is-invalid': errors.username }"
          />
          <div class="invalid-feedback">{{ errors.username }}</div>
        </div>
        <div class="form-group">
          <label>Password</label>
          <Field
            name="password"
            type="password"
            class="form-control"
            :class="{ 'is-invalid': errors.password }"
          />
          <div class="invalid-feedback">{{ errors.password }}</div>
        </div>
        <div class="form-group">
          <button class="btn btn-primary" :disabled="isSubmitting">
            <span v-show="isSubmitting" class="spinner-border spinner-border-sm mr-1"></span>
            Register
          </button>
          <router-link to="login" class="btn btn-link">Cancel</router-link>
        </div>
      </Form>
    </div>
  </div>
</template>
<style scoped>
.card {
  display: flex;
  flex-direction: column;
  justify-content: center;
  align-items: center;
  margin-top: 30px;
  margin-left: 250px;
  margin-right: 250px;
  margin-bottom: 100px;
  padding: 50px;
  border-radius: 10%;
}
h2,
.card-body {
  color: #fff;
}
.btn-link {
  color: #fff;
}
label {
  margin: 20px;
  width: 50%;
  height: 40px;
  border-radius: 10px;
  border-style: none;
}
.form-control {
  margin: 20px;
  width: 50%;
  height: 50%;
  border-radius: 10px;
  border-style: none;
}
.btn {
  width: 50%;
  height: 40px;
  border-radius: 10px;
  border-style: none;
  border: 1px solid;
}

card-body {
  width: 300px;
  height: 40px;
  padding-left: 20px;
  display: block;
  margin-bottom: 30px;
  margin-right: auto;
  margin-left: auto;
  border: 1px solid skyblue;
  background: skyblue;
  color: #fff;
  cursor: pointer;
}
</style>
