import { createRouter, createWebHistory } from 'vue-router';
import store from '../stores/store';

const router = createRouter({
    history: createWebHistory(),
    routes: [
        {
            path: '/dashboard',
            component: Dashboard, // Your protected component
            meta: { requiresAuth: true },
        },
        {
            path: '/login',
            component: Login, // Your login component
        },
        {
            path: '/logout',
            beforeEnter: (to, from) => {
                // Handle the logout logic (e.g., calling a logout action)
                store.dispatch('logout');
                return '/login'; // Redirect to the login page after logout
            },
        },
    ],
});

router.beforeEach((to, from, next) => {
    if (to.matched.some((record) => record.meta.requiresAuth)) {
        if (!store.getters.isAuthenticated) {
            next({ path: '/login' }); // Redirect to login page if not authenticated
        } else {
            next(); // Continue to the protected route
        }
    } else {
        next(); // Continue to other routes
    }
});

export default router;
