<template>
    <div>
    <div class="login-bg">
        <div class="login-w">
            <div class="form-box">
                <form>
                    <h3>手机号登录</h3>
                    <div class="form-item-i">
                        <div class="form-item-t">
                            <input type="text" placeholder="请输入用户名">
                        </div>
                        <div class="form-item-b">
                            <input type="text" placeholder="请输入密码">
                        
                        </div>
                    </div>
                    <div class="form-item-t">
                        <button>登录</button>
                    </div>
                    <div class="form-item-a">
                            <a href="">手机号登录</a>
                        <div>
                            <router-link to="/UserReg" href="">注册</router-link>
                            <a href="">忘记密码?</a>
                        </div>
                    </div>
                </form>
            </div>
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
            msg:""
        }
    },
    methods:{
        login(){
            var u=this.uname;
            var p=this.upwd;
            var sql=`http://127.0.0.1:3000/user/login?uname=${u}&upwd=${p}`;
            console.log(sql)
            this.axios.get(sql).then(result=>{
                this.msg=result.data.data;
                if(result.data.code==1){
                    setTimeout(()=>{
                        this.$router.push("/Index");
                    },1000);
                }
            })

            // var rel=[];
            // function axiosGet(sql){
            //     this.axios.get(sql).then(result=>{
            //         rel=result;
            // })
            // }
            // axiosGet(gsql);
            // function axiosPost(sql,url){
            //     this.axios.post(sql,url).then(result=>{
            //         rel=result;
            // })
            // }
            // axiosPost(psql,purl)
        }
    }
}
</script>

<style scoped>
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
