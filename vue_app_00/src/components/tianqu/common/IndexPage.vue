<template>
<div id="indexPage">
    <!-- 热销推荐 -->
    <h3 class="myH3">热销推荐</h3>
    <div class="flex" @click="changeDetail">
        <div class="indexItem" v-for="(item,i) of indexDetails" :key="i">
            <img :src="item.mpicture"/>
            <p class="f-title">{{item.title}}</p>
            <p class="f-mprice">{{item.mprice}}</p>
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
        }
    },
    methods:{
        loadMore(){
            var url="cakelist";
            this.axios.get(url).then(res=>{
                this.indexDetails=res.data.data;
                console.log(this.indexDetails);
            })
        },
        changeDetail(){
            this.$router.push('details');
            // this.history.go(-1);
        }
    },
    created(){
        this.loadMore();
        console.log("2:created 组件创建成功");
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

</style>