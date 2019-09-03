<template>
    <div>
        <div class="page-head">
            <img src="../../../assets/less.png" @click="changeIt"/>
            <img src="../../../assets/c.png"/>
        </div>
        <div class="banner">
            <mt-swipe :auto="3000">
                <mt-swipe-item>
                    <img src="../../../assets/b1.jpg" class="myPic">                
                </mt-swipe-item>
                <mt-swipe-item>
                    <img src="../../../assets/b-1.jpg" class="myPic">
                </mt-swipe-item>
            </mt-swipe>
        </div>
    </div>
</template>
<script>
export default{
    data(){
        return{}
    },
    methods:{
        changeIt(){
            this.history.go(-1);
        }
    }
}
</script> 
<style scoped>
     body{
        margin:0 !important;
    }
    .page-head{
        display:flex;
        position:fixed;
        z-index:999;
        top:0;left:0px;
        width:100%;
        justify-content:space-between;
        align-items:center;
        background-color:rgba(0, 0, 0, 0.753);
        height:60px;
    }
    /* 轮播 */
    .banner{
        width:100%;
        height:350px;
    }
    .banner .myPic{
        width:100%;
        height:350px;
        margin-top:60px;
    }
</style>