import Vue from 'vue'
import Router from 'vue-router'

// 为Exam01.vue 组件指定访问路径
// 1：在router.js 引入组件
import Home01 from "./components/tianqu/Home01.vue"
import TitleBar from "./components/tianqu/common/TitleBar.vue"
import carousel from "./components/tianqu/common/carousel.vue"
import IndexPage from "./components/tianqu/common/IndexPage.vue"
import flowersList from "./components/tianqu/common/flowersList.vue"
import cart from "./components/tianqu/common/cart.vue"
import Login from "./components/tianqu/common/Login.vue"
import Details from './components/tianqu/common/productDetails.vue'
import Detailsf from './components/tianqu/common/product-fDetails.vue'

// 2：为组件指定访问路径 /Exam01
Vue.use(Router)
export default new Router({
routes: [
{path:"/Home01",component:Home01},
{path:"/TitleBar",component:TitleBar},
{path:"/carousel",component:carousel},
{path:"/IndexPage",component:IndexPage},
{path:"/flowersList",component:flowersList},
{path:"/cart",component:cart},
{path:"/Login",component:Login},
{path:"/Details",component:Details},
{path:"/Detailsf",component:Detailsf}
]
})
