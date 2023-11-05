import { createRouter, createWebHistory } from 'vue-router';
import store from '../stores/store';
import RegistrationForm from '../components/RegistrationForm.vue';

const router = createRouter({
    history: createWebHistory(),
    routes: [
        {
            path: '/dashboard',
            component: Dashboard,
            meta: { requiresAuth: true },
        },
        {
            path: '/login',
            component: Login,
        },
        {
            path: '/logout',
            beforeEnter: (to, from) => {
                store.dispatch('logout');
                return '/login';
            },
        },
        {
            path: '/register',
            component: RegistrationForm,
        },
    ],
});

router.beforeEach((to, from, next) => {
    if (to.matched.some((record) => record.meta.requiresAuth)) {
        if (!store.getters.isAuthenticated) {
            next({ path: '/login' });
        } else {
            next();
        }
    } else {
        next();
    }
});

export default router;
