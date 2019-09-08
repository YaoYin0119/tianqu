<template>
<div class="v-container">
    <!-- 顶部标题栏 -->
    <div class="page-head">
        <img class="imageLeft" src="../../../assets/less.png" @click="goBack"/>
        <img class="imageRight" src="../../../assets/c.png" @click="goCart"/>
    </div>
    <!-- 鲜花内容区域 -->
    <div class="detail-item" v-for="(item,i) of indexFlowDel" :key="i">
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
            <p>{{item.xtitle}}</p>
            <p class="f-price">
                {{item.xprice}}
                <s class="f-notPrice">{{item.xnoprice}}</s>
            </p>
        </div>
        <!-- 数量计算按钮 -->
        <div class="btnDiv">
            数量
            <button @click="lessChange">-</button>
            <span>{{n}}</span>
            <button @click="addChange">+</button>
        </div>
        <!-- 内容文字加说明 -->
        <div class="textDiv">
            <p>材料：{{item.material}}</p>
            <p>包装：{{item.pack}}</p>
            <p>花语：{{item.flowuage}}</p>
            <p>附送：{{item.fgive}}</p>
            <p>配送：{{item.pgive}}</p>
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
export default{
    data(){
        return{
            indexFlowDel:'',
            n:0,
            // lid:'1'
           
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
            var lid=this.$route.query.lid;
            var url="flowerdel";
            var obj={lid:lid};
            this.axios.get(url,{params:obj}).then(res=>{
                this.indexFlowDel=res.data.data;
                console.log(this.indexFlowDel)
                console.log(res);
                console.log(lid);
            })
        }
    },
    created(){
        this.loadMore();
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
    .tpDiv p .f-notPrice{
        color:#8e8e8e;
        font-size:15px;
        margin-left:15px;
    }
    /* 数量计算按钮样式 */
    .btnDiv{
        background:#fff;
        border-radius:15px;
        padding:10px 20px;
        margin-bottom:20px;
        margin-left:10px;
    }
    .textDiv{
        background:#fff;
        line-height:2em;
        font-size:15px;
    }
    /* 底部 */
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