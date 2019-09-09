<template>
    <div class="page-head">
        <div class="myspan" v-if="leftTitle=='indexPage'">
            <!-- 左边图片 -->
            <img src="../../../assets/kf.png" class="mykf"/>
            <!-- 右边图片 -->
            <div class="right-head">
                <img class="img-ss" src="../../../assets/ss.png">
                <input type="text" placeholder="请搜索">
                <span class="textLogin" @click="goCart">登录</span>
            </div>
        </div>
        <div v-else-if="leftTitle=='flowersList'">
            <h4>全部鲜花</h4>
        </div>
        <div v-else-if="leftTitle=='cart'">
            <h4>购物车</h4>
        </div>
    </div>
</template>
<script>
export default{
    data(){
        return{}
    },
    props:{
        leftTitle:{default:""}
    },
    methods:{
        goCart(){
            this.$router.push('/cart');
        }
    }
}
</script>
<style>
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
    align-items:center;
    background-color:rgba(0, 0, 0, 0.753);
    height:60px;
}
.mykf{
    margin-left:20px;
}
.right-head{
    display:flex;
    margin-left:80px;
    margin-top:-35px;
    position:fixed;
}
input{
    margin-right:20px;
}
.img-ss{
    position: relative;left: 35px;  
}
 input{
    border-radius:20px;
    outline: none;
    border: none;
    height:30px;
    background: #ddd;
    box-sizing: border-box;
    padding-left: 30px;
}
.page-head div>h4{
    color:#fff;
    margin-left:150px;
}
.page-head div>p{
    color:#fff;
    
}
.textLogin{
    color:#fff;
    font-size:20px;
}
</style>