import { createStore } from 'vuex';

const store = createStore({
    state: {
        user: null, // Store user data when logged in
    },
    mutations: {
        setUser(state, user) {
            state.user = user;
        },
    },
    actions: {
        login({ commit }, user) {
            // Perform login logic here (e.g., an API call to authenticate)
            // Upon successful login, commit the user to the store
            commit('setUser', user);
        },
        logout({ commit }) {
            // Perform logout logic here
            // Clear user data from the store upon logout
            commit('setUser', null);
        },
    },
    getters: {
        isAuthenticated: (state) => {
            return state.user !== null;
        },
    },
});

export default store;
