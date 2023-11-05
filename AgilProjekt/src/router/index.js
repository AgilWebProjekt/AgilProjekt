import { createRouter, createWebHistory } from 'vue-router'
import HomeView from '../views/HomeView.vue'

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
      component: () => import('../views/AboutView.vue')
    },
    {
      path: '/contact',
      name: 'contact',
      component: () => import('../views/ContactView.vue')
    },
    {
      path: '/login',
      name: 'login',
      component: () => import('../views/LoginView.vue')
    },
    { path: '/quiz', 
      name: 'quiz', 
      component: () => import('../views/QuizView.vue') 
    },
    {
      path: '/categories/history',
      name: 'history',
      component: () => import('../views/HistoryView.vue')
    },
    {
      path: '/categories/mathematics',
      name: 'mathematics',
      component: () => import('../views/MathsView.vue')
    },
    {
      path: '/categories/science',
      name: 'science',
      component: () => import('../views/ScienceView.vue')
    },
    {
      path: '/categories/language',
      name: 'language',
      component: () => import('../views/LanguageView.vue')
    },
    {
      path: '/categories/sweden',
      name: 'sweden',
      component: () => import('../views/SwedenView.vue')
    },
    {
      path: '/categories/geography',
      name: 'geography',
      component: () => import('../views/GeographyView.vue')
    }
  ]
})

export default router
