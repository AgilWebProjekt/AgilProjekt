<template>
    <footer class="page-footer">
        <p>
            &copy;
            <a href="https://github.com/AgilWebProjekt" target="_blank">Quiztastic</a>
            built by Team Remote <span>|</span>
            <a href="/contact" target="_self">Contact Us</a>
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
a:hover {
    color: black; 
}

a{
    color: white;
    transition: color 0.3s;
    margin-right: 0.2rem;
}

a::visited {
    color: white;
}

span{
    margin: 1rem;
}
</style>
