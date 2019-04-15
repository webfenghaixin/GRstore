<template>
    <div>
      <div id='dd1'>
			<div id='dd2'>
				<h2>用户注册</h2>
				<form>
				<table>
					<tr>
						<td class='tt1'>用户名:</td>
						<td><input type='text' id='uname' @focus="show1" @blur ='checkuname' placeholder="请输入用户名" v-model="uname">
						<span>{{msg1}}</span>
						</td>
					</tr>
					<tr>
						<td class='tt1'>密码:</td>
						<td>
							<input type='password' @focus="show2" @blur="show3" id='upwd' placeholder="请输入密码" maxlength="12" v-model="upwd">
							<span>{{msg2}}</span>
						</td>
					</tr>
					<tr>
						<td class='tt1'>电话:</td>
						<td>
							<input type="tel" id="phone" placeholder="请输入联系电话" v-model="phone">
						</td>
					</tr>
					<tr>
						<td class='tt1'>性别:</td>
						<td>
							<input type="radio" id="w" name='gender' value='0' class='pb' v-model="gender"> <label for="w">女</label>
							<input type="radio" id="m" name='gender' value='1' class='pb' v-model="gender"> <label for="m">男</label>
						</td>
					</tr>
					<tr>
						<td colspan='2'>
						<button @click='reg' id='regb'>注册</button>
					</td>
					</tr>
				</table>
				</form>
				<div id='d1'>{{msg3}}</div>
			</div>
		</div>
    </div>
</template>

<script>
export default {
    data(){
        return{
			msg1:"",
			msg2:"",
			uname:"",
			upwd:"",
			phone:"",
			gender:"",
			msg3:""
		}
	},
	methods:{
		show1(){
				this.msg1="请输入6~12位用户名"
		},
		checkuname(){
				var url="http://127.0.0.1:3000/user/checkuname?uname="+this.uname;
				this.axios.get(url).then(rel=>{
					this.msg1=rel.data
				})
		},
		show2(){
			this.msg2="请输入6~10位密码"
		},
		show3(){
			if(this.upwd.length>0 && this.upwd.length<6){
					this.msg2="密码长度错误";
					return;
				}else if(this.upwd.length==0){
					this.msg2="密码不能为空";
					return;
				}else{
					this.msg2="输入正确"
				}
			},
		reg(){
			var uname=this.uname;
			var upwd=this.upwd;
			var phone=this.phone;
			var gender=this.gender;
			var url=`http://127.0.0.1:3000/userReg`;
			if(uname!="" && upwd!=""){
			var value=`uname=${uname}&upwd=${upwd}&phone=${phone}&gender=${gender}`;
			 this.axios.post(url,value).then(rel=>{
				 this.msg3=rel.data.data;
					if(rel.data.code==1){
							setTimeout(()=>{
								this.$router.push("/Index");
							},1000);
							this.msg3=rel.data.msg;
					}
			 })
			}
		}
		}
	}

</script>

<style scoped>
*{margin: 0;padding: 0;}
			#regb{
				color: #fff;
				background:rgba(0,0,0,0.3);
				width: 300px;
				margin-left: 70px;
				height: 40px;
				font-size: 22px;
			}
			input{
				margin: 0 !important;
			}
			table tr{
				display: block;
				margin-bottom: 15px;
			}
			#dd1{
				width:100%;
				height:772px;
				background:url("../img/load_bg.jpg");
				position:relative;
			}
			#dd2{
			  color:#f0ffff;
				width: 600px;
				height: 500px;
				position:absolute;
				top:200px;
				left:300px;
				background:rgba(0,0,0,0.3);
			}	
			#dd2 table input:not(.pb){
				width: 300px;
				height: 30px;
				color:#000;
			}
			 #dd2 .cc1{
				color:#fff !important;
			}
			#dd2 .tt1{
				width: 70px;
				text-align: center;
			}
			#dd2 .cc1{
				width: 300px;
				height: 40px !important;
				background:rgba(0,0,0,0.5);
				margin:20px 84px;
				color:#fff;
			}
			#dd2 h2{
				font-size:30px;
				font-weight:700;
				margin:10px 180px;
			}
			#dd2 table td{
				border:5px solid rgba(0,0,0,0);
			}
			#d1{
				color:#fff;
				font-size:30px;
				margin-left:180px;
			}
</style>
