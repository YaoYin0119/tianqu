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
    </div>
</div>

</template>
<script>
export default{
    data(){
        return{
            indexFlowDel:[]
        }
    },
    methods:{
        goCart(){
            this.$router.push('/cart')
        },
        goBack(){
            history.go(-1);
        },
        loadMore(){
            var id=this.$route.query.id;
            var url="flowerlist";
            var obj={id:id};
            this.axios.get(url,{params:obj}).then(res=>{
                this.indexFlowDel=res.data.data;
                console.log(this.indexFlowDel)
                console.log(res);
                console.log(id)
            })
        }
    },
    created(){
        this.loadMore();
    },
}
</script>
