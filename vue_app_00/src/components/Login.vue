<template>
    <div>
    <div class="login-bg">
        <div class="login-w">
            <div class="form-box">
                <form>
                    <h3>手机号登录</h3>
                    <div class="form-item-i">
                        <div class="form-item-t">
                            <input type="text" v-model="uname" placeholder="请输入用户名">
                        </div>
                        <div class="form-item-b">
                            <input type="password" v-model="upwd" placeholder="请输入密码">
                        </div>
                    </div>
                    <div class="form-item-t">
                        <button @click="login">登录</button>
                    </div>
                    <div class="form-item-a">
                            <router-link to="/LoginPhone">手机号登录</router-link>
                        <div>
                            <router-link to="/UserReg" href="">注册</router-link>
                            <a href="#">忘记密码?</a>
                        </div>
                    </div>
                </form>
            </div>
            <div class="show" id="showmsg">{{msg}}</div>
        </div>
    </div>
    </div>
</template>

<script>
export default {
    data(){
        return{
            uname:"",
            upwd:"",
            msg:"",
            userName:""
        }
    },
    methods:{
        login(){
            var u=this.uname;
            var p=this.upwd;
            var url=`http://127.0.0.1:3000/login`;
            var value=`uname=${u}&upwd=${p}`;
            this.axios.post(url,value).then(result=>{
                if(result.data.code==1){
                this.msg="登录成功";
                this.userName="欢迎 "+result.data.data;
                    setTimeout(()=>{
                        this.$router.push("/Index");
                        location.reload(true);
                    },1500);
                sessionStorage.setItem('name',this.userName);
                sessionStorage.setItem('isLogin',true)
                // this.$store.commit("changeUname",this.userName);
                console.log(sessionStorage)
                }else{
                    this.msg="登录失败";
                }
            })
            var show=document.getElementById("showmsg");
                show.style.height="50px";
                setTimeout(function(){
                    show.style.height=0;
                },500)
    }
    }
}
</script>

<style scoped>
    .show{
        position: fixed;
        border: 0;
        top:50%;
        left:45%;
        width: 200px;
        height: 0px;
        font-size: 25px;
        transition: .3s;
        overflow: hidden;
        background: #cfb2f6;
        line-height: 50px;
        text-align: center;
        color: #fff;
        padding-left: 18px;
    }
    .login-bg{
        width: 100%;
        background:url("../img/load_bg.jpg");
        background-size: cover;
    }
    .login-w{
        height: 772px;
        position: relative;
        width: 1200px;
        margin: 0 auto;
    }
    .form-box{
        width: 500px;
        padding: 0 50px 50px 50px;
        background:rgba(255,255,255,0.6);
        position: absolute;
        top:243px;
        left:350px;
    }
    .form-box h3{
        display: block;
        text-align: center;
        font-size:23px;
        font-weight: 400;
        padding: 50px 0;
    }
    .form-item-t>button{
        display:block;
        width: 100%;
        margin: 0 auto;
        height: 38px;
        background: #cfb2f6;
        font-size: 18px;
        color:#fff;
    }
    .form-item-a{
        margin-top: 10px;
    }
    .form-item-a>a{
        float: left;
    }
    .form-item-a>div{
        text-align: right;
    }
    .form-item-a>div>a:first-child{
       margin-right:10px;
    }
</style>
