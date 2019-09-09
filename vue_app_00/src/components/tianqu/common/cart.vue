<template>
    <div class="cart-container">
       <div class="cartDiv">
           <img class="mycart" src="../../../assets/cart1.png"/>
           <p class="myp">购物车空空哒</p>
           <button class="mybtn" @click="toHome">随便逛逛</button>
       </div> 
       <p class="myp-title">-为您推荐-</p>
       <div class="cartlist-app">
            <div class="goods-item" v-for="(item,i) of cartlist" :key="i">
                <img :src="item.picture"/>
                <p class="c-title">{{item.title}}</p>
                <p class="c-price">
                    {{item.price}}
                    <s class="c-notPrice">{{item.notPrice}}</s>
                </p>
            </div> 
        </div>
        <div style="margin-top:20px;"></div>
    </div>
</template>
<script>
export default{
    data(){
        return{
            cartlist:[]
        }
    },
    methods:{
        toHome(){
            // this.$router.push('/Home01')
            history.go(-1);
        },
        loadMore(){
            var url="cartlist";
            this.axios.get(url).then(res=>{
                this.cartlist=res.data.data;
            })
        }
    },
    created(){
        this.loadMore();
        console.log("1:created 组件创建成功");
    }

}
</script>
<style scoped>
.cart-container{
    background-color:#eee;
}
.cartDiv{
    width:350px;
    height:350px;
    margin:60px 0px;
    text-align:center;
    background-color:#fff;
}
.mycart{
    margin-top:100px;
}
.myp{
    font-size:10px;
    color:#8e8e8e;
}
.mybtn{
    margin-top:10px;
    background-color:rgba(230, 11, 11, 0.938);
    outline: none;
    border: none;
    border-radius:40%;
    height:30px;
    box-sizing: border-box;
    color:#fff;
    font-size:15px;
}
.myp-title{
    text-align:center;
    font-size:15px;
    margin-top:-30px;
}
.cartlist-app{
    display:flex;
    flex-wrap:wrap;
    justify-content:space-between;
    margin-bottom:50px;
}
.goods-item{
    width: 48%;
    height: 250px;
    text-align: center;
    background: rgba(14, 9, 9, 0.068);
    margin-bottom: 10px;
}
.c-title{
        font-size:15px;
        color:#000;
}
.c-price{
    color:rgb(185, 106, 40);
}
.c-notPrice{
    color:#000;
    font-size:12px;
    margin-left:10px;
}
</style>