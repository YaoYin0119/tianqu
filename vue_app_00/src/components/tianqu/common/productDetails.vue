<template>
<div class="v_container">
    <!-- 顶部标题栏 -->
    <div class="page-head">
        <img class="imageLeft" src="../../../assets/less.png" @click="goBack"/>
        <img class="imageRight" src="../../../assets/c.png" @click="goCart"/>
    </div>
    <!-- 蛋糕的内容区域 -->
    <div class="detail-item" v-for="(item,i) of indexDetails" :key="i">
        <div class="banner">
            <mt-swipe :auto="3000">
                <mt-swipe-item>
                    <img :src="item.carouselOne" class="myPic"/>
                </mt-swipe-item>
                <mt-swipe-item>
                    <img :src="item.carouselTwo" class="myPic"/>
                </mt-swipe-item>
            </mt-swipe>
        </div>
        <div class="tpDiv">
            <p>{{item.title}}</p>
            <p >{{item.price}}</p>
        </div>
        <div class="btnDiv">
            数量
            <button @click="lessChange">-</button>
            <span>{{n}}</span>
            <button @click="addChange">+</button>
        </div>
        <div class="pDiv">
            <p>
                <span class="c-span">材料：</span>
                <span class="text-span">{{item.material}}</span>
            </p>
            <p>
                <span class="c-span">规格：</span>
                <span class="text-span">{{item.stand}}</span>
            </p>
            <p>
                <span class="c-span">配送：</span>
                <span class="text-span">{{item.distri}}</span>
            </p>
        </div>
    </div>
    <!-- 底部 -->
    <mt-tabbar fixed>
        <mt-tab-item>
            <div class="bottomDiv">
                <img src="../../../assets/kf1.png" >
                <mt-button class="btnLeft" type="primary">加入购物车</mt-button>
                <mt-button class="btnRight" type="danger">立即购买</mt-button>
            </div>
        </mt-tab-item>
    </mt-tabbar>
</div>
</template>
<script>
// 引入子组件：顶部标题
 import TitleBar from './TitleBar.vue';
export default{
    data(){
        return{
           indexDetails:'',
            // id:'',
            n:0
        }
    },
    methods:{ 
        goCart(){
            this.$router.push('/cart')
        },
        goBack(){
            history.go(-1);
        },
        lessChange(){
            this.n--;
        },
        addChange(){
            this.n++;
        },
        loadMore(){
            var id=this.$route.query.id;
            //  this.id=id;
            var url="cakeemp";
            var obj={id:id};
            this.axios.get(url,{params:obj}).then(res=>{
                this.indexDetails=res.data.data;
                console.log(this.indexDetails)
                // console.log(res);
                // console.log(id);
            })
        }
    },
    created(){
        this.loadMore();
    },
    components: {
      "titlebar": TitleBar
    },
}
</script> 
<style scoped>
    body{
        margin:0 !important;
    }
    .v_container {
    overflow: hidden;
    }
    .detail-item{
        background:#eee;
        margin-top:60px;
    }
    .imageLeft{
        margin-left:20px;
    }
    .imageRight{
        margin-right:20px;
    }
    /* 轮播 */
    .banner{
        width:100%;
        height:350px;
    }
    .banner .myPic{
        width:100%;
        height:350px;
    }
    .tpDiv{
        background:#fff;
        border-radius:15px;
        margin-left:10px;
    }
    .tpDiv p{
        margin:20px 20px;
    }
    .btnDiv{
        background:#fff;
        border-radius:15px;
        padding:10px 0;
        margin-bottom:20px;
        margin-left:10px;
    }
    .pDiv{
        background:#fff;
        line-height:2em;
    }
    .c-span{
        color:#8e8e8e;
    }
    .text-span{
        font-size:15px;
    }
    .bottomDiv{
        background:#fff;
    }
    .bottomDiv>img{
        float:left;
        margin-left:20px;
    }
    .btnLeft{
        left:-20px;
        border-radius:20px;
        outline: none;
        border: none;
        box-sizing: border-box;
    }
    .btnRight{
        margin-right:-100px;
        border-radius:20px;
        outline: none;
        border: none;
        box-sizing: border-box;
    }
</style>