<template>
<div class="v-container">
    <!-- 顶部标题栏 -->
    <div class="page-head">
        <img class="imageLeft" src="../../../assets/less.png" @click="goBack"/>
        <img class="imageRight" src="../../../assets/c.png" @click="goCart"/>
    </div>
    <!-- 主页面鲜花内容区域 -->
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
            <p>
                <span class="c-span">材料：</span>
                <span class="text-span">{{item.material}}</span>
            </p>
            <p>
                <span class="c-span">包装：</span>
                <span class="text-span">{{item.pack}}</span>
            </p>
            <p>
                <span class="c-span">花语：</span>
                <span class="text-span">{{item.flowuage}}</span>
            </p>
            <p>
                <span class="c-span">附送：</span>
                <span class="text-span">{{item.fgive}}</span>
            </p>
            <p>
                <span class="c-span">配送：</span>
                <span class="text-span">{{item.pgive}}</span>
            </p>
        </div>
        <div class="flowerImage">
            <p class="text-title">12道品控标准 + 送前实拍</p>
            <p class="p-text">行业内率先研发并实施12道严苛品控标准：从花材采购、制作、成品、配送、售后全程覆盖，将产品及服务标准化；每束花均实拍回传总部审核，符合品控标准方可送出。
            </p>
            <img :src="item.photoOne"/>
            <p class="text-title">花艺设计团队</p>
            <p class="p-text">国内领先的原创花艺：中国花艺博览会赛事冠军花艺师打造团队，坚持原创设计，创作花款迄今已畅销千万束。</p>
            <img :src="item.photoTwo"/>
            <p class="text-title">当日新鲜花材制作，极速送达</p>
            <p class="p-text">门店覆盖全国2000+城市，鲜花皆由当地门店花艺 师在配送当日使用新鲜A级花材制作，确保鲜花娇艳欲滴！并由专人专车送货上门，最快1小时送达，快人一步！</p>
            <img :src="item.photoThree"/>
            <p class="text-title">客服团队</p>
            <p class="p-text">建设一支较其他电商更大规模的客服团队，将常规客服升级为售前订花顾问、售中专人跟单、售后快速响应的一站式管家客服模式。</p>
            <img :src="item.photoFour"/>
        </div>
        <div style="margin-top:60px;"></div>
    </div>
    <!-- 全部鲜花 -->
    <div class="detail-item" v-for="(item,i) of list" :key="i">
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
            <p class="f-price">
                {{item.price}}
                <s class="f-notPrice">{{item.notPrice }}</s>
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
            <p>
                <span class="c-span">材料：</span>
                <span class="text-span">{{item.material}}</span>
            </p>
            <p>
                <span class="c-span">包装：</span>
                <span class="text-span">{{item.pack}}</span>
            </p>
            <p>
                <span class="c-span">花语：</span>
                <span class="text-span">{{item.flowuage}}</span>
            </p>
            <p>
                <span class="c-span">附送：</span>
                <span class="text-span">{{item.fgive}}</span>
            </p>
            <p>
                <span class="c-span">配送：</span>
                <span class="text-span">{{item.pgive}}</span>
            </p>
        </div>
        <div class="flowerImage">
            <p class="text-title">12道品控标准 + 送前实拍</p>
            <p class="p-text">行业内率先研发并实施12道严苛品控标准：从花材采购、制作、成品、配送、售后全程覆盖，将产品及服务标准化；每束花均实拍回传总部审核，符合品控标准方可送出。
            </p>
            <img :src="item.photoOne"/>
            <p class="text-title">花艺设计团队</p>
            <p class="p-text">国内领先的原创花艺：中国花艺博览会赛事冠军花艺师打造团队，坚持原创设计，创作花款迄今已畅销千万束。</p>
            <img :src="item.photoTwo"/>
            <p class="text-title">当日新鲜花材制作，极速送达</p>
           <p class="p-text">门店覆盖全国2000+城市，鲜花皆由当地门店花艺 师在配送当日使用新鲜A级花材制作，确保鲜花娇艳欲滴！并由专人专车送货上门，最快1小时送达，快人一步！</p>
            <img :src="item.photoThree"/>
            <p class="text-title">客服团队</p>
            <p class="p-text">建设一支较其他电商更大规模的客服团队，将常规客服升级为售前订花顾问、售中专人跟单、售后快速响应的一站式管家客服模式。</p>
            <img :src="item.photoFour"/>
        </div>
        <div style="margin-top:50px;"></div>
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
            list:'',
            n:0
            // photoes:''
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
                console.log(this.indexFlowDel);
                // var photos=this.indexFlowDel[0].photo;
                // this.photo=photos.split(',');
                // console.log(res)
                // console.log(photos);
            });
            var mid=this.$route.query.mid;
            var url="flist";
            var obj={mid:mid};
            this.axios.get(url,{params:obj}).then(res=>{
                this.list=res.data.data;
                console.log(this.list);
                // var photos=this.list[0].photoes;
                // this.photoes=photos.split(',');
                // console.log(res);
                // console.log(mid);
                // console.log(photos);
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
    .c-span{
        color:#8e8e8e;
    }
    .text-span{
        font-size:15px;
    }
    .cakeImgae{
        width:100%;
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
    .flowerImage img{
        width:100%;
    }
    .text-title{
        text-align:center;
        font-size:20px;
        color:hotpink;
    }
    .p-text{
        font-size:15px;
        color:#8e8e8e;
    }
</style>