//vue_server_00/app.js node程序
//1:加载第三方模块
//web服务器
const express = require("express");
//mysql驱动
const mysql = require("mysql");
//跨域
const cors = require("cors");
// 引入中间件body-parser模块
const bodyParser=require('body-parser');
//session
const session = require("express-session");

//2:配置数据库连接池:提高数据效率
var pool = mysql.createPool({
   host:"127.0.0.1",  //数据库地址
   user:"root",       //数据库用户名
   password:"",       //数据库密码
   port:3306,         //数据库端口
   database:"tq",     //数据库名称
   connectionLimit:100 //连接数量
});

var server = express();
//3:配置跨域模块 50
server.use(cors({
//   //允许跨域访问程序地址列表
   origin:["http://127.0.0.1:8080",
   "http://localhost:8080"],
   credentials:true //请求验证
}))
//4:配置session模块
server.use(session({
    secret:"128位字符串",  //安全字符串
    resave:true,          //请求时更新数据
    saveUninitialized:true//保存初始数据
}));
// 使用中间件
server.use(bodyParser.urlencoded({
  extended:false
}));
//4.1:配置项目静态目录
server.use(express.static("public"));
//http://127.0.0.1:3000/imgs/01.jpg
//5:启动监听3000
server.listen(3000);


//一：完成用户登录操作
//http://127.0.0.1:3000/login
server.get("/login",(req,res)=>{
  var uname=req.query.uname;
  var upwd=req.query.upwd;
  var sql="SELECT id FROM tq_login WHERE uname=? AND upwd=?";
  pool.query(sql,[uname,upwd],(err,result)=>{
    if(err)throw err;
    if(result.length==0){
      res.send({code:-1,msg:"用户名或密码有误"});
    }else{
      req.session.uid=result[0].id;
      //  console.log(req.session);
      res.send({code:1,msg:"登录成功"});
    }
  })
});

//获取flowerslist数据
//http://127.0.0.1:3000/list
server.get('/list',(req,res)=>{
  //pno  页码   pageSize  页大小
  var p=req.query;
  var ps=req.query;
  // if(!p){p=1}
  // if(!ps){ps=4}
  // var offset=(p-1)*ps;
  // ps=parseInt(ps);
  var sql="SELECT id,title,price,notPrice,picture FROM list";
  pool.query(sql,[p,ps],(err,result)=>{
    if(err)throw err;
    res.send({code:1,msg:"查询成功",data:result});
  });
})

//获取cartlist数据
//http://127.0.0.1:3000/cartlist
server.get('/cartlist',(req,res)=>{
  var p=req.query;
  var ps=req.query;
  var sql="SELECT id,title,price,notPrice,picture FROM cartlist" ;
  pool.query(sql,[p,ps],(err,result)=>{
    if(err)throw err;
    res.send({code:1,msg:"查询成功",data:result});
  });
})

//获取主页面蛋糕indexDetails数据
//http://127.0.0.1:3000/cakeemp?id=1
server.get('/cakeemp',(req,res)=>{
  var id=req.query.id;
  var sql="SELECT carouselOne,carouselTwo,title,price,material,stand,distri FROM indexDetails WHERE id=?" ;
  pool.query(sql,[id],(err,result)=>{
    if(err)throw err;
    res.send({code:1,msg:"查询成功",data:result});
  })
})

// 获取主页面蛋糕数据
//http://127.0.0.1:3000/cakelist?nan=A
server.get('/cakelist',(req,res)=>{
  var sql="SELECT mpicture,nan,title,mprice,id FROM indexDetails";
  pool.query(sql,(err,result)=>{
    if(err)throw err;
    res.send({code:1,msg:"查询成功",data:result});
  })
})
// 获取主页面鲜花的数据
//http://127.0.0.1:3000/flowerlist?nan=M
server.get('/flowerlist',(req,res)=>{
  var sql="SELECT nan,xpicture,xtitle,xprice FROM indexFlowDel";
  pool.query(sql,(err,result)=>{
    if(err)throw err;
    res.send({code:1,msg:"查询成功",data:result});
  })
})