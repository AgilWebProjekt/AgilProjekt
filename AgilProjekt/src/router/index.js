import { createRouter, createWebHistory } from 'vue-router'
import HomeView from '../views/HomeView.vue'
import Vue3GoogleOauth from  'vue3-google-oauth2'

const router = createRouter({
  history: createWebHistory(import.meta.env.BASE_URL),
  routes: [
    {
      path: '/',
      name: 'home',
      component: HomeView
    },
    {
      path: '/about',
      name: 'about',
      // route level code-splitting
      // this generates a separate chunk (About.[hash].js) for this route
      // which is lazy-loaded when the route is visited.
      component: () => import('../views/AboutView.vue')
    },
    {
      path: '/quiz',
      name: 'quiz',
      component: () => import('../views/QuizView.vue'),
      meta: {
        requiresAuth: false,
    }},
    {
      path: '/login',
      name: 'login',
      // route level code-splitting
      // this generates a separate chunk (About.[hash].js) for this route
      // which is lazy-loaded when the route is visited.
      component: () => import('../views/LoginView.vue')
    },
    {
      path: '/categories',
      name: 'categories',
      // route level code-splitting
      // this generates a separate chunk (About.[hash].js) for this route
      // which is lazy-loaded when the route is visited.
      component: () => import('../views/CategoriesView.vue')
    }
  ]
})


router.beforeEach((to, from, next) => {
  const isAuthenticated = Vue3GoogleOauth.isAuthorized;

  if (to.meta.requiresAuth && !isAuthenticated) {
    next('/login');
  } else if (isAuthenticated && to.path === '/login') {
    next({ path: '/quiz', replace: true  });
  } else {
    next();
  }
});

export default router