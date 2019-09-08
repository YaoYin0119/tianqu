<template>
<div id="indexPage">
    <!-- 热销推荐 -->
    <h3 class="myH3">热销推荐</h3>
    <div class="flex">
        <div class="indexItem" v-for="(item,i) of indexDetails" :key="i">
            <img :src="item.mpicture"  @click="changeDetail(item.id)"/>
            <p class="f-title">{{item.title}}</p>
            <p class="f-mprice">{{item.mprice}}</p>
            <div class="cartDiv">
                <img src="../../../assets/c.png" @click="goCart">
            </div>
        </div>
    </div> 
    <!-- 品质鲜花 -->
    <h1 class="myH3">品质鲜花</h1>
    <div class="flex">
        <div class="indexItem" v-for="(item,i) of indexFlowDel" :key="i">
            <img :src="item.xpicture" @click="changeFlowerDetail(item.lid)"/>
            <p class="x-title">{{item.xtitle}}</p>
            <p class="x-price">{{item.xprice}}</p>
            <div class="cartDiv">
                <img src="../../../assets/c.png" @click="goCart">
            </div>
        </div>
    </div>
    <dir style="margin-top:60px;"></dir>
</div>
</template>
<script>
export default{
    data(){
        return{
            indexDetails:[],
            indexFlowDel:[]
        }
    },
    methods:{
        goCart(){
            this.$router.push('/cart')
        },
        loadMore(){
            var url="cakelist";
            this.axios.get(url).then(res=>{
                this.indexDetails=res.data.data;
                console.log(this.indexDetails);
            });
            var url="flowerlist";
            this.axios.get(url).then(res=>{
                this.indexFlowDel=res.data.data;
                console.log(this.indexFlowDel);
            })
        },
        changeDetail(id){
             this.$toast({
                message:'正在前往详情...',
                duration:500
            });
            // console.log(id);
            setTimeout(()=>{
                this.$router.push({
                    path:'details',
                    query:{id:id}
                })
            },300)
        },
        changeFlowerDetail(lid){
            this.$toast({
                message:'正在前往详情...',
                duration:500
            });
            setTimeout(()=>{
                this.$router.push({
                    path:'Detailsf',
                    query:{lid:lid}
                })
            },300)
        }
    },
    created(){
        this.loadMore();
        // console.log("2:created 组件创建成功");
    }
}
</script>
<style scoped>
.myH3{
    color:lightsalmon;
    font-size:25px;
    text-align:center;
}
.flex{
    display:flex;
    flex-wrap:wrap;
    justify-content:space-between;
}
.indexItem{
    width: 48%;
    height: 230px;
    text-align: center;
    background: rgba(14, 9, 9, 0.068);
    margin-bottom: 10px;
}
.f-title{
        font-size:15px;
        color:#000;
        margin-left:-40px;
}
.f-mprice{
    color:rgb(185, 106, 40);
    margin-left:-50px;
}
.x-title{
    font-size:15px;
    color:#000;
}
.x-price{
    color:rgb(185, 106, 40);
    margin-left:-100px;
}
.cartDiv{
    background:sienna;
    width:30px;height:30px;
    float:right;
    margin-top:-45px;
    margin-right:10px;
    border-radius:50%;
}
</style>