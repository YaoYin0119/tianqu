<template>
    <div class="list-app">
        <div class="goods-item" v-for="(item,i) of list" :key="i">
            <img :src="item.picture" @click="changefDetail(item.mid)"/>
            <p class="f-title">{{item.title}}</p>
            <p class="f-price">
                {{item.price}}
                <s class="f-notPrice">{{item.notPrice}}</s>
            </p>
        </div>
    </div>
</template>
<script>
export default{
    data(){
        return{
            list:[]//商品列表数组
              //页码(第几页)
        }
    },
    methods:{
        loadMore(){
            //功能：获取商品分页数据
            // 1.发送请求
            var url="inlist";
            // this.pno++;
            // var obj={pno:this.pno};
            this.axios.get(url).then(res=>{
                // 2.将服务器返回结果
                // console.log(res.data.data);
                // 3.将返回结果保存
                this.list=res.data.data;
            })
        },
        changefDetail(mid){
            this.$toast({
                message:'正在前往详情...',
                duration:500
            });
            // console.log(mid);
            setTimeout(()=>{
                this.$router.push({
                    path:'detailsf',
                    query:{mid:mid}
                })
            },300)
        }
    },
    created(){
        this.loadMore();
        console.log("1:created 组件创建成功")
    },
}
</script>
<style scoped>
.list-app{
    margin-top:70px;
    display:flex;
    flex-wrap:wrap;
    justify-content:space-between;
}
.goods-item{
    width: 48%;
    height: 250px;
    text-align: center;
    background: rgba(14, 9, 9, 0.068);
    margin-bottom: 10px;
}
.f-title{
        font-size:15px;
        color:#000;
        margin-left:-30px;
}
.f-price{
    color:rgb(185, 106, 40);
    margin-left:-40px;
}
.f-notPrice{
    color:#000;
    font-size:12px;
    margin-left:10px;
}
</style>