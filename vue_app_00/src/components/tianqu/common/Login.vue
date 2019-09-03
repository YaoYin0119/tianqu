<template>
<div>
    <div class="hello">
        <div class="avatar">
            <p>欢迎来到甜趣小屋</p>
            <img src="../../../assets/s3.jpg">
        </div>
    </div>
    <div class="login_container">
        <h2>登录页面</h2>
        <mt-field 
            label="用户名" 
            :placeholder="unameHolder" 
            v-model="uname" 
            class="myinput"
            @blur.native.capture="inputLogin1">
        </mt-field>
        <mt-field 
            label="密码" 
            :placeholder="upwdHolder" 
            type="password" 
            v-model="upwd"  
            class="myinput"
            @blur.native.capture="inputLogin2">
        </mt-field>
        <mt-button size="large" @click="login" class="mybtn">登录</mt-button>
    </div>
</div>
</template>
<script>
export default{
data(){ //数据
    return{
        uname: "",
        upwd: "",
        unameHolder: "请输入用户名",
        upwdHolder: "请输入密码"
    }
},
methods:{
    inputLogin1() {
        if (this.uname.trim() == "") {
          this.$toast("用户名不能为空");
          return; //结束
        }
      },
      inputLogin2() {
        if (this.upwd.trim() == "") {
          this.$toast("密码不能为空");
          return; //结束
        }
      },
    login(){
        // 获取输入用户名和密码
        var u=this.uname;
        var p=this.upwd;
        // 创建正则表达式验证用户名和密码
        var reg=/^[a-z0-9]{3,12}$/i;
        if(u.trim()=="" || p.trim()==""){
            this.$toast("用户名或密码不能为空");
            return;//失败停止执行
        }
        if(!reg.test(u)){
            this.$toast("用户名格式不正确");
            return;//失败停止执行
        }
        if(!reg.test(p)){
            this.$toast("密码格式不正确");
            return;//失败停止执行
        }
            //发送ajax  请求axios
            var url="login";
            var obj={uname:u,upwd:p}
            this.axios.get(url,{params:obj}).then(res=>{
            // 获取服务器返回结果
            //  console.log(res);
            this.$toast("登录成功");
            
        })
    }
}
}

</script>
<style>
/* 欢迎界面 */
.hello{
    /* margin-top: 20px; */
    text-align: center;
  }
  .hello .avatar{
    margin: 10px auto;
    position:relative;
  }
  .avatar p{
    font-size: 20px;
    font-family: Arial, Helvetica, sans-serif;
    color:#ff00dd;
  }
  .hello .avatar>img{
    width: 250px;
    height:250px;
    border-radius: 15px;
  }
.login_container {
    padding-top: 40px;
    /* background-color:transparent; */
}
h2{
    margin-left:120px;
    margin-top:0px;
}
.myinput{
    width:400px;
    height:30px;
}
</style>












