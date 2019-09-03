<template>
        <!-- 子组件功能：完成底部导航条图片切换 -->
        <div>
            <!-- <h1>TabBarIcon.vue</h1> -->
            <img :src="focused?selectedImage:normalImage" class="imgstyle">
            <!-- 1:显示一张图片 -->
            
        </div>
    </template>
    <script>
    export default{
        data(){
            return{}
        },
        props:{
            focused:false,//状态默认  false
            selectedImage:{default:""},//选中图片
            normalImage:{default:""}//默认图片
        }
    }
    </script>
    <style scoped> 
      body{
         margin:0 !important; 
      }
    </style>