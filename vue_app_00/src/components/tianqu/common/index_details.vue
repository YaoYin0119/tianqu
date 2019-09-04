<template>
<div>
    <div class="detail-item" v-for="(item,i) of detailsEmp" :key="i">
        <div class="banner">
            <mt-swipe :auto="3000">
                <mt-swipe-item>
                    <img :src="item.carouselOne" alt="">
                </mt-swipe-item>
                <mt-swipe-item>
                    <img :src="item.carouselTwo" alt="">
                </mt-swipe-item>
            </mt-swipe>
        </div>
        <div class="tpDiv">
            <p>{{item.title}}</p>
            <p >{{item.price}}</p>
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
</div>
</template>
<script>
export default{
    data(){
        return{
           detailsEmp:'',
            id:'1'
        }
    },
    methods:{
        // changeIt(){
        //     this.history.go(-1);
        // }
        loadMore(){
            var url="cakeemp";
            var obj={id:this.id};
            this.axios.get(url,{params:obj}).then(res=>{
                this.detailsEmp=res.data.data;
                console.log(this.detailsEmp)
                console.log(res);
            })
        }
    },
    created(){
        this.loadMore();
    }
}
</script> 
<style scoped>
     body{
        margin:0 !important;
    }
    .detail-item{
        background:#eee;
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
    .pDiv{
        background:#fff;
        padding:15px 0;
        line-height:2em;
    }
    .c-span{
        color:#8e8e8e;
    }
    .text-span{
        font-size:15px;
        color:salmon;
    }
</style>