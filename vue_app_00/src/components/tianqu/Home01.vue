<template>
<div class="v-container">
    <div class="page-wrap">
        <!-- 顶部题栏 -->
        <titlebar :leftTitle="active"></titlebar>

        <mt-tab-container v-model="active">
            <mt-tab-container-item id="indexPage">
                <carousel></carousel>
                <indexpage @goML="goTab"></indexpage>
            </mt-tab-container-item>
        </mt-tab-container>

        <mt-tab-container v-model="active">
            <mt-tab-container-item id="flowersList">
                <flowerslist></flowerslist>
            </mt-tab-container-item>
        </mt-tab-container>

        <mt-tab-container v-model="active">
            <mt-tab-container-item id="cart">
                <cart></cart>
            </mt-tab-container-item>
        </mt-tab-container>
        <mt-tab-container v-model="active">
            <mt-tab-container-item id="me">
                <login></login>
            </mt-tab-container-item>
            
        </mt-tab-container>
        <mt-tabbar v-model="active" fixed>
            <!-- 第一个按钮首页 -->
            <mt-tab-item id="indexPage" @click.native="changeState(0)">
                <tabbaricon :selectedImage="require('../../assets/main.png')"
                :normalImage="require('../../assets/main_no.png')"
                :focused="currentIndex[0].isSelect"
                >
                </tabbaricon>
                首页
            </mt-tab-item>
            <!-- 第二个按钮鲜花 -->
            <mt-tab-item id="flowersList" @click.native="changeState(1)">
                <tabbaricon  :selectedImage="require('../../assets/flower.png')"
                :normalImage="require('../../assets/flower_no.png')"
                :focused="currentIndex[1].isSelect"
                >
                </tabbaricon>
                鲜花
            </mt-tab-item>
            <!-- 第三个按钮购物车 -->
            <mt-tab-item id="cart" @click.native="changeState(2)">
                <tabbaricon :selectedImage="require('../../assets/car.png')"
                :normalImage="require('../../assets/car_no.png')"
                :focused="currentIndex[2].isSelect"
                >
                </tabbaricon>
                购物车
            </mt-tab-item>
            <!-- 第四个按钮我的 -->
            <mt-tab-item id="me" @click.native="changeState(3)">
                <tabbaricon :selectedImage="require('../../assets/girl.png')"
                :normalImage="require('../../assets/girl_no.png')"
                :focused="currentIndex[3].isSelect"
                > 
                </tabbaricon>
                我的
            </mt-tab-item>
        </mt-tabbar>
    </div>
</div>
</template>
<script>
// 1:引入TitleBar.vue 
import TitleBar from "./common/TitleBar.vue"
// 2：引入底部导航条的图片
import TabBarIcon from "./common/TabBarIcon.vue"
// 3：引入轮播图
import carousel from "./common/carousel.vue"
// 4:引入主页面内容
import IndexPage from "./common/IndexPage.vue"
// 5：引入鲜花页面
import flowersList from "./common/flowersList.vue"
// 6:引入购物车页面
import cart from "./common/cart.vue"
// 6:引入登录页面
import Login from "./common/Login.vue"
export default{
    data(){
        return{
            active:"indexPage",
            // 在data添加属性  currentIndex
            // 集中报错所有按钮状态
            currentIndex:[
                {isSelect:true},//保留第一个按钮的状态
                {isSelect:false},
                {isSelect:false},
                {isSelect:false}
            ]

        }
    },
    methods:{
        goTab(val){
				// 切换到对应的tab
				this.active=val;
			},
        changeState(idx){
            console.log(idx);
            // 创建循环遍历状态数组
            // 获取用户点击下标与当前数据元素的下标比较
            // 如果两个值相等，当前状态改为true
            // 其他元素状态改为false
            for (var i=0;i<this.currentIndex.length;i++){
                var ui=idx;
                if(ui==i){
                    this.currentIndex[i].isSelect=true;
                }else{
                    this.currentIndex[i].isSelect=false;
                }
            }
        }
    },
    components:{
        // 注册顶部导航条信息的子组件
        "titlebar":TitleBar,
        // 注册底部导航条图片子组件
        "tabbaricon":TabBarIcon,
        // 注册轮播子组件
        "carousel":carousel,
        // 注册主页面的内容
        "indexpage":IndexPage,
        // 注册鲜花页面
        "flowerslist":flowersList,
        // 注册购物车页面
        "cart":cart,
        // 注册登录页面
        "login":Login,
    }
}
</script>
<style scoped>
   /*修改 tabbar 默认文字颜色*/
.mint-tabbar>.mint-tab-item{
  color:#999999;
}
/*修改默认tab选中文字样式*/
.mint-tabbar>.mint-tab-item.is-selected{
  color:#f00;
} 
</style>