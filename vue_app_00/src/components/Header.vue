<template>
<div class="header">
    <div class="header-border">
	<div class="nav-bg">
        <div class="nav">
            <div class="nav-left" >
                <a href="#" @click="show">首页</a>
            </div>
            <div class="nav-right">
                <router-link to="/LoginPhone" class="text-danger btn">{{this.$store.getters.getUname}}</router-link>
                <a href="#" v-show="isLogin" class="quit" @click="quit">注销</a>
                <router-link to="/Shopcart" class="btn pr-0">购物车</router-link>
                <span class="d-inline-block">2</span>
            </div>
        </div>
	</div>
    <div class="header-width">00
        <div class="header-img-left">
            <a href="#">
                <img src="../img/logo.png" alt=""/>
            </a>
        </div>
        <div class="header-input-right">
            <div class="offset-4 col-8 p-0">
                <input type="text" class="" placeholder="请输入要搜索的商品" v-model="searchMsg"/><button @click="search">搜索</button>
            </div>
        </div>
    </div>
	<div class="lb-width">
        <div class="lb">
            <ul id="u2" @click="change">
                <li class="active"><a href="#" class="white" >全部分类</a></li>
                <li class=""><router-link to="/GoodList">所有商品</router-link></li>
                <li class=""><router-link to="/Buytoday">今日团购</router-link></li>
                <li class=""><router-link to="/Information">母婴咨询</router-link></li>
                <li class=""><router-link to="/About">关于我们</router-link></li>
            </ul>
        </div>
	</div>
    </div>
    <router-view></router-view>
    <div class="foot">
        <div class="foot-t">
            <div class="foot-t-w">
                <p>
                    <a href=""><img src="../img/us-icon1.png" alt="">7天无理由退换</a>
                    <a href=""><img src="../img/us-icon2.png" alt="">满99元全场免邮</a>
                    <a href=""><img src="../img/us-icon3.png" alt="">100%品质保证</a>
                </p>    
            </div>
        </div>
        <div class="foot-b">
            <p>
                <a href="#">关于我们</a><span>|</span>
                <a href="#">帮助中心</a><span>|</span>
                <a href="#">售后服务</a><span>|</span>
                <a href="#">母婴资讯</a><span>|</span>
                <a href="#">关于货源</a>
            </p>
        </div>
    </div>
</div>
</template>

<script>
export default {
    data(){
        return{
            i:this.$route.query.i,
            state:false,
            name:this.$store.getters.getUname,
            isLogin:this.$store.getters.getLogin=="false" ? false : true,
            searchMsg:""
        }    
    },
    created(){
        this.$router.push("/Index");
        console.log(this.$store.getters.getLogin)
    },
    // beforeRouteEnter(to, from, next){
    //     this.name=this.$store.getters.getUname
    //     next();
    // },
    methods:{
        search(){
            var url="http:"
        },
        quit(){
            sessionStorage.setItem("isLogin",false);
            sessionStorage.setItem("name","");
            // this.isLogin=false;
            location.reload(true);
        },
        change(e){
            var children=document.getElementById("u2").children;
            var u2=document.getElementById("u2");
            for(var i=1;i<5;i++){
                children[i].className="";
                children[i].firstElementChild.style="color:#000"
            }
            if(e.target.className!="white"){
            children[0].style="display:none";
            u2.style="width:480px";
            }
            e.target.parentElement.className="active";
            e.target.style="color:#fff;"
        },
        show(){
            this.$router.push("/Index");
            var children=document.getElementById("u2").children;
            var u2=document.getElementById("u2");
            for(var i=0;i<5;i++){
                children[i].className="";
                children[i].firstElementChild.style="color:#000"
            }
            children[0].style="display:block";
            u2.style="width:660px";
            children[0].firstElementChild.style="color:#fff";
            children[0].className="active";
        }
    }
}
</script>

<style scoped>
body{
    padding: 0;
    margin: 0;
}
.white{
    color:#fff !important;
}
.nav-bg{
    background: #f5f5f5;
    height: 30px;
    line-height: 30px;
}
.nav{
    width: 1200px;
    margin: 0 auto;
    position: relative;
}
.nav-left a{
    text-decoration: none;
    color:#000;
}
.nav-right>a:first-child{
    text-decoration: none;
    margin-right: 5px;
    color:lightcoral;
}
.nav-right a.pr-0{
    color: lightseagreen !important;
    margin-left: 10px;
}
.quit{
    font-size: 16px;
}
.nav-right{
    position: absolute;
    right: 0;
    top: 0;
}
.header-width{
    width: 1200px;
    margin: 0 auto;
    height: 100px;
}
.header-img-left{
    float: left;
    margin-left: 30px;
    height: 100px;
    width: 100px;
    line-height: 100px;
}
.header-input-right{
    float:right;
    display: flex;
    flex-wrap: nowrap;
    box-sizing: border-box;
    margin-top: 28px;
}
.header-input-right input {
    height: 36px;
    line-height: 38px;
    width: 436px;
    border-width:1px 0 1px 1px ;
    border:solid #cfb2f6;
    margin: 0;
    border-radius: 0;
    font-size:15px;
}
.header-input-right button{
    height: 36px;
    border-radius: 0;
    border:solid #cfb2f6;
    background: #cfb2f6;
    color:#fff;
}
.lb-width{
    width: 1200px;
    margin: 0 auto;

}

.lb ul{
    display: flex;
    flex-wrap: nowrap;
    list-style: none;
    padding: 0;
    margin: 0;
    width: 660px;
}
.lb a{
    color:#000;
}
.lb>ul>li:first-child{
    width: 180px;
}
.lb>ul li{
    width: 120px;
}
.lb>ul li a{
    display: block;
    width: 100%;
    text-align: center;
    padding: 0;
    padding-top: 0.5rem;
    padding-bottom: 0.5rem;
    padding: 8px 0;
}
.lb>ul li:hover{
    background:#cfb2f6;
}
.active{
    background:#cfb2f6;
    color:#fff !important;
}
.lb>ul li:hover a{
    color:#fff;
}
.lb>ul li a{
    text-decoration: none;
}
.header-border{
    border-bottom: 1px solid #cfb2f6;
    background: #fff;
}
.foot{
    background: #2f2f2f;
    padding-bottom: 54px;
}
.foot-t{
    border-bottom: 1px solid #3d3d3d;
    line-height: 145px;
}
.foot-t-w{
    width: 1200px;
    margin: 0 auto;
}
.foot-t-w p>a:first-child,.foot-t-w p a:nth-child(2){
    margin-right: 210px;
    padding-left: 44px;
}
.foot-t-w p a{
    color: #fff;
    font-size: 20px;
    height: 40px;
    display: inline-block;
    line-height: 40px;
}
.foot-t-w p a img{
    vertical-align: middle;
    margin-right: 10px;
}
.foot-b{
    text-align: center;
    color: #888888;
    width: 1200px;
    margin: 0 auto;
}
.foot-b p{
    margin: 38px 0 16px 0;
}
.foot-b p a{
    text-decoration: none;
    color: #888888;
}
.foot-b p span{
    padding: 0 22px;
}
</style>
