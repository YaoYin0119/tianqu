<template>
    <div class="banner" @change="handleChange">
        <mt-swipe :auto="3000">
            <mt-swipe-item>
                <img src="../../../assets/s1.jpg" class="myPic">
            </mt-swipe-item>
            <mt-swipe-item>
                <img src="../../../assets/s2.jpg" class="myPic">
            </mt-swipe-item>
        </mt-swipe>
    </div>
</template>
<script>
export default{
    data(){
        return{}
    },
    methods:{
        handleChange(){}
    }


}
</script>
<style scoped>
    body{
        margin:0 !important;
    }
    /* 轮播 */
    .banner{
        width:100%;
        height:250px;
    }
    .banner .myPic{
        width:100%;
        height:250px;
        margin-top:60px;
    }
</style>
