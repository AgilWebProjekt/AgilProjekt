<template>
    <footer class="page-footer">
        <p>
            &copy;
            <a href="https://github.com/AgilWebProjekt" target="_blank">Quiztastic</a>
            built by Team Remote |
            <a href="/contact" target="_blank">Contact Us</a>
        </p>
    </footer>
</template>
  
<script setup>
</script>
  
<style scoped>
.page-footer {
    height: 4rem;
    background-color: #005b41a7;
    color: aliceblue;
    display: flex;
    align-items: center;
    justify-content: center;
    margin-top: 2rem;
}

.page-footer a {
    color: aliceblue;
    text-decoration: none;
    margin: 0 1rem; /* Add some spacing between links */
}

.page-footer a::visited {
    color: aliceblue;
}
</style>
