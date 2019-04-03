<template>
    <div class="all-bg">
        <div class="all">
        <div class="crumb">
            <router-link to="/Index">首页</router-link>
            <span>></span>
            <router-link to="/Goodlist">所有商品</router-link>
            <span>></span>
            <a href="#">商品详情</a>
        </div>
        <div class="intro" v-for="(item,i) of list" :key="i">
            <div class="intro-left-all">
                <div class="left-l">
                    <div class="img-m" >
                        <div class="super" @mousemove="move" @mouseenter="enter" @mouseleave="leave">
                        </div>
                            <p id="fdj" :class="none"></p>
                            <a href="">
                                <img :src="item.img_url" alt="">
                            </a>
                    </div>
                    <div class="img-s">
                        <button id="btnl" @click="movel" :disabled="disabledl"> ← </button>
                        <div class="img-s-i" id="imgb">
                            <div class="img-s-i-h" id="imgmove">
                                <a href=""><img :src="item.img_url" alt=""></a>
                                <a href=""><img src="../img/details_img2.jpg" alt=""></a>
                                <a href=""><img src="../img/details_img1.jpg" alt=""></a>
                                <a href=""><img src="../img/details_img2.jpg" alt=""></a>
                                <a href=""><img src="../img/details_img2.jpg" alt=""></a>
                            </div>
                        </div>
                        <button id="btnr" @click="mover" :disabled="disabledr"> → </button>
                    </div>
                </div>
                <div class="left-r" id="bigi" :class="none">

                </div>
            </div>
            <div class="intro-right">
                <div class="g-title">
                    <h4>{{item.title}}</h4>
                    <span id="dis">收藏</span>
                </div>
                <div class="g-s">
                    <p>
                        <span>参考价</span>
                        <del>￥{{item.delprice}}.00</del>    
                    </p>
                    <p>
                        <span>活动价</span>
                        <span>
                            <b>￥</b>
                            {{item.price}}.00
                        </span>
                    </p>
                    <p>
                        <span>送&nbsp;&nbsp;&nbsp;&nbsp;至</span>
                        <span>
                            <a href="">河南</a>
                            <a href="">郑州</a>
                            <a href="">金水区</a>
                        </span>
                    </p>
                </div>
                <div class="choose" >
                    
                    <div class="choose-color">
                        <span>颜&nbsp;&nbsp;&nbsp;&nbsp;色</span>
                    </div>
                    <div id="ischoose">
                        <div class="choose-cont" v-for="(item,n) of color" :key="n" >
                            <button @click="choose">{{item}}</button>
                        </div>
                    </div>
                </div>
                <div class="number">
                    <span class="number-title">数&nbsp;&nbsp;&nbsp;&nbsp;量</span>
                    <div class="number-cont">
                        <button @click="sub">-</button>
                        <input type="number" value="1" max="99" min="1" id="numberinput"/>
                        <button @click="add">+</button>
                    </div>
                </div>
                <div class="choose-btns">
                    <button>立刻购买</button>
                    <button>加入购物车</button>
                </div>
            </div>
                <div class="clear"></div>
        </div>
        <div class="bottom">
            <div class="aside">
                <h4>热销推荐</h4>
                <div class="a-list">
                    <div class="a-item">
                        <img src="../img/details_img2.jpg" alt="">
                        <p>
                            <span>可爱宝宝粉色连体秋裤</span>
                            <span>￥99.00</span>
                        </p>
                    </div>
                    <div class="a-item">
                        <img src="../img/details_img2.jpg" alt="">
                        <p>
                            <span>可爱宝宝粉色连体秋裤</span>
                            <span>￥99.00</span>
                        </p>
                    </div>
                    <div class="a-item">
                        <img src="../img/details_img1.jpg" alt="">
                        <p>
                            <span>可爱宝宝粉色连体秋裤</span>
                            <span>￥99.00</span>
                        </p>
                    </div>
                </div>
            </div>
            <div class="detail">
                <h4>详情</h4>
                <div class="d-item">
                    <img src="../img/details_imgbig.jpg" alt="">
                </div>
            </div>
            <div class="clear"></div>
        </div>
        </div>
    </div>
</template>
<script>
export default {
    data(){
        return{
            none:"none",
            n:1,
            left:0,
            list:[],
            id:this.$route.query.id,
            color:[],
            x:1,
            disabledr:false,
            disabledl:true
        }
    },
    created(){
        this.getlist()
    },
    methods:{
        add(){
            var input=document.getElementById("numberinput");
            input.value++;
        },
        sub(){
            var input=document.getElementById("numberinput");
            if(input.value>1)input.value--;
        },
        choose(e){
            var child=document.getElementById("ischoose").children;
            console.log(child)
            for(var i=0;i<child.length;i++){
                child[i].firstElementChild.className="choose-cont";
            }
            var elem=e.target;
            elem.className="active choose-cont";
        },
        getlist(){
            var url="http://127.0.0.1:3000/getdetail?id="+this.id;
            this.axios.get(url).then(result=>{
                this.list=result.data.data;
                var color=[];
                color=this.list[0].color.split(",");
                this.color=color;
                setTimeout(()=>{
                    var bigimg=document.getElementById("bigi");
                    bigimg.style.backgroundImage=`url('${this.list[0].img_url}')`;
                },200)
                
            })
        },
        move(e){
            var fdj=document.getElementById("fdj");
            var left=e.offsetX-67;
            var top=e.offsetY-67;
            var max=200;
            if(left<0) left=0;
            else if(left>max) left=max;
            if(top<0) top=0;
            else if(top>max) top=max;
            fdj.style.left=left+"px";
            fdj.style.top=top+"px";
            var bigimg=document.getElementById("bigi");
            bigimg.style.backgroundPosition=`${left*-2}px ${top*-2}px`;
        },
        enter(){
            this.none="";
        },
        leave(){
            this.none="none";
        },
        moves(x){
            this.n=1;
            var btnr=document.getElementById("btnr");
            var btnl=document.getElementById("btnl");
            if(!this.disabledl){
                this.x--;
            }else if(!this.disabledr){
                this.x++;
            };
            var img=document.getElementById("imgmove");
            this.left+=this.n*80*x;
            img.style.marginLeft=`${this.left}px`;
            this.n++;
            console.log(this.x)
            if(this.x>1){
                this.disabledl=false;
                this.disabledr=true;
            }else if(this.x==1){
                this.disabledl=true;
                this.disabledr=false;
            }
            },
        movel(){
            this.moves(1);
        },
        mover(){
            this.moves(-1);
        }
    }
}
</script>
<style scoped>
    .all{
        width: 1200px;
        margin: 0 auto;
    }
    .active{
        border:1px solid #f00 !important;
    }
    .none{
        display: none;
    }
    .all-bg{
         background: #fff;
    }
    .crumb{
        line-height: 76px;
    }
    .crumb a{
        color: #666;
    }
    .crumb a:hover{
        color:indianred;
    }
    .crumb span{
        font-family: simsun;
        color: #666;
        font-weight: bold;
        margin: 0 5px;
    }
    .intro{
        margin-bottom: 85px;
        position: relative;
    }
    .intro-left-all{
        width: 430px;
        float: left;
        position: relative;
    }
    .left-l{
        width: 402px;
    }
    #fdj{
        width: 201px;
        height: 201px;
        margin: 0;
        padding: 0;
        position: absolute;
        background: rgba(255,255,255,0.5);
        border: 1px solid pink;
        z-index:2;
    }
    .img-m{
        position: relative;
    }
    .super{
        position: absolute;
        width: 100%;
        height: 100%;
        z-index: 10;
    }
    .img-m img{
        border: 1px solid #eaeaea; 
        display: inline-block;
        width: 402px;
        height: 402px;
    }
    .img-m a{
        text-decoration: none;
    }
    .img-s{
        width: 402px;
        height: 80.39px;
        display: inline-block;
    }
    .img-s a{
        padding: 5px;
        display: inline-block;
        width: 80px;
    }
    .img-s-i{
        display: inline-block;
        width: 310px;
        height: 80.39px;
        overflow: hidden;
        margin: 0 5px;
    }
    .img-s-i-h{
        width: 1200px;
        transition: .6s;
    }
    .img-s img{
        width: 70px;
        height: 70px;
    }
    #imgb a img{
        border:1px solid #aaa !important;
    }
    .img-s button{
        margin-top: 5px;
        height: 70.39px;
        width: 40.2px;
    }
    .left-r{
        width: 430px;
        height: 402px;
        position: absolute;
        left:430px;
        top:0;
        z-index:10;
    }
    .clear{
        clear: both;
    }
    .intro-right{
        float: left;
        width: 770px;
    }
    .g-title{
        position: relative;
        margin-bottom: 30px;
    }
    .g-title h4{
        margin: 0;
    }
    #dis{
        position: absolute;
        right: 0;
        top:0;
        top: 0px;
        cursor: pointer;
        font-size:14px;
    }
    .g-s{
        width: 100%;
    height: 160px;
    background: #f5f5f5;
    padding-top: 25px;
    margin-bottom: 16px;
    }
    .g-s p{
        line-height: 40px;
        padding-left: 34px;
        color: #888888;
        margin: 0;
    }
    .g-s p span{
        padding-right: 40px;
        color: #888888;
        line-height: 40px;
    }
    .g-s p:nth-child(2) span:last-child{
        font-size: 30px;
        color: #ee0000;
        font-weight: 700;
    }
    .g-s p:nth-child(2) span b{
        font-size: 14px;
        color: #ee0000;
    }
    .g-s p span a{
        margin:0 5px;
        display: inline-block;
    }
    .choose{
        color: #888888;
        line-height: 34px;
        padding-left: 34px;
        margin-bottom: 18px;
    }
    .choose div{
        display: inline-block;
        font-size:14px;
    }
    .choose-color{
        margin-right: 34px;
    }
    .choose-cont button{
        display: inline-block;
        padding: 0 26px;
        margin-right: 26px;
        border: 1px solid #e0e0e0;
        cursor: pointer;
        color: #000;
        height:34px;
    }
    .number{
        line-height: 32px;
        padding-left: 34px;
        color: #888;
        font-size:14px;
        margin-bottom: 22px;
    }
    .number span{
        margin-right: 34px;
    }
    .number div{
        display: inline-block;
    }
    .number div button{
        display: inline-block;
        border-radius: 0;
    }
    .number input{
        width: 35px;
        height: 33px;
        text-align: center;
        margin: 0 5px;
        border-radius: 0;
        padding:0 ;
    }
    .choose-btns{
        padding-left: 34px;
        margin-top: 30px;
    }
    .choose-btns button{
        border: 1px solid #ff5500;
        color: #ff5500;
        width: 116px;
        height: 40px;
        text-align: center;
    }
    .choose-btns button:last-child{
        width: 136px;
        height: 40px;
        margin-left: 10px;
        background-color: #FF5722;
        color:#fff;
        text-align: center;
    }
    .bottom .aside{
        float:left;
        width: 372px;
    }
    .aside h4{
        font-size: 18px;
        line-height: 42px;
        padding-left: 18px;
        color: #888888;
        font-weight: 500;
    }
    .a-list{
        border: 1px solid #ededed;
        padding: 45px;
        padding-bottom: 0;
    }
    .a-list img{
        width: 100%;
    }
    .a-list .a-item{
        margin-bottom: 34px;
    }
    .a-list .a-item p{
        line-height: 64px;
        position: relative;
    }
    .a-list .a-item p span:last-child{
        color: #ee0000;
        position: absolute;
        right: 0;
    }
    .detail{
        float:right;
    }
    .detail h4{
        line-height: 42px;
        width: 100px;
        text-align: center;
        border-bottom: 2px solid #888888;
        font-size: 18px;
        cursor: pointer;
        color: #888888;
        margin: 0;
        margin-top: 10px;
        font-weight: 500;
    }
    .detail .d-item{
        border: 1px solid #ececec;
    }
</style>
