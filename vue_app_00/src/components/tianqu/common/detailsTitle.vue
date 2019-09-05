<template>
    <div class="page-head">
        <img class="imgLeft" src="../../../assets/less.png">
        <img class="imgRight" src="../../../assets/c.png">
    </div>
    

</template>
<script>
export default{
    data(){
        return{}
    }
}
</script>
<style scoped>
body {
		margin: 0 !important;
}
.page-head{
    display:flex;
    position:fixed;
    z-index:999;
    top:0;left:0;
    width:100%;
    justify-content:space-between;
    background-color:rgba(0, 0, 0, 0.753);
    height:60px;
}
.imgLeft{
    margin-left:20px;
}
.imgRight{
    margin-right:20px;
}
</style>