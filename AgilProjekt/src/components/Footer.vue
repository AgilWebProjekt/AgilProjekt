<template>
    <footer class="page-footer">
        <p>
            &copy; {{ currentYear }}
            <span class="footer-logo">Quiztastic</span>
            built by Team Remote
        </p>
    </footer>
</template>
  
<script>
export default {
    data() {
        return {
            currentYear: new Date().getFullYear(),
        };
    },
};
</script>
  
<style scoped>
.page-footer {
    height: 4rem;
    background: black;
    color: aliceblue;
    display: flex;
    align-items: center;
    justify-content: center;
}
</style>
  