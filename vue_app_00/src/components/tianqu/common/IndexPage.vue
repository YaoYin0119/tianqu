<template>
<div id="indexPage">
    <!-- 热销推荐 -->
    <!-- <div class="flex0">
        <h3 class="myH3">热销推荐</h3>
    </div> -->
    <div class="flex">
        <div class="indexItem" v-for="(item,i) of indexDetails" :key="i">
            <img :src="item.picture"/>
            <p class="f-title">{{item.title}}</p>
            <p class="f-mprice">{{item.mprice}}</p>
        </div>
    </div> 
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
        }
    },
    created(){
        this.loadMore();
        console.log("2:created 组件创建成功");
    }
}
</script>
<style scoped>
</style>