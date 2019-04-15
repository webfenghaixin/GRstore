<template>
    <div>
        <div class="index-bg">
            <div class="index-bg-width">
                <img src="../img/banner1.jpg" id="myImg-1" alt=""/>
                <div id="d3" class="col-7 p-0 position-absolute my_zIndex ">
                    <ul class="my_ul p-0 mb-0 m-0 h-100">
                        <li class="my_height_12 row m-0">
                            <div>
                                <a href="" class=" text-center text-black col-12 font-weight-bold">奶粉辅食</a>
                            </div>
                            <a href="" class="my_font_size pr-1 pl-1">奶粉</a>
                            <a href="" class="my_font_size pr-1">辅食</a>
                            <a href="" class="my_font_size ">营养品</a>
                            <span class="text-right m-0">
                                <a href="">＞</a>
                            </span>
                        </li>
                        <li class="my_height_12 row m-0">
                            <div>
                            <a href="" class=" text-center col-12 font-weight-bold">纸尿裤</a>
                            </div>
                            <a href="" class="my_font_size pr-1 pl-1">纸尿裤</a>
                            <a href="" class="my_font_size pr-1">婴儿湿巾</a>
                            <a href="" class="my_font_size">婴儿抽纸</a>
                            <span class="text-right m-0">
                                <a href="">＞</a>
                            </span>
                        </li>
                        <li class="my_height_12 row m-0">
                            <div>
                            <a href="" class=" text-center col-12 font-weight-bold">洗护用品</a>
                            </div>
                            <a href="" class="my_font_size pr-1 pl-1">母婴洗护用品</a>
                            <a href="" class="my_font_size">孕婴童用品</a>
                            <span class="text-right m-0">
                                <a href="">＞</a></span>
                        </li>
                        <li class="my_height_12 row m-0">
                            <div>
                            <a href="" class=" text-center col-12 font-weight-bold">儿童玩具</a>
                            </div>
                            <a href="" class="my_font_size pr-1 pl-1">婴幼玩具</a>
                            <a href="" class="my_font_size pr-1">遥控玩具</a>
                            <a href="" class="my_font_size ">积木拼插</a>
                            <span class="text-right m-0">
                                <a href="">＞</a></span>
                        </li>
                        <li class="my_height_12 row m-0">
                            <div>
                            <a href="" class=" text-center col-12 font-weight-bold">车床座椅</a>
                            </div>
                            <a href="" class="my_font_size pr-1 pl-1">婴儿推车</a>
                            <a href="" class="my_font_size ">儿童安全座椅</a>
                            <span class="text-right m-0">
                                <a href="">＞</a></span>
                        </li>
                        <li class="my_height_12 row m-0">
                            <div>
                            <a href="" class=" text-center col-12 font-weight-bold">儿童童鞋</a>
                            </div>
                            <a href="" class="my_font_size pr-1 pl-1">童装</a>
                            <a href="" class="my_font_size pr-1">童鞋</a>
                            <a href="" class="my_font_size">婴童内衣及配饰</a>
                            <span class="text-right m-0">
                                <a href="">＞</a></span>
                        </li>
                        <li class="my_height_12 row m-0">
                            <div>
                            <a href="" class=" text-center col-12 font-weight-bold">儿童图片</a>
                            </div>
                            <a href="" class="my_font_size pr-1 pl-1">0-2岁</a>
                            <a href="" class="my_font_size pr-1">早教启蒙</a>
                            <a href="" class="my_font_size ">孕产育儿</a>
                            <span class="text-right m-0">
                                <a href="">＞</a></span>
                        </li>
                        <li class="my_height_12 row m-0">
                            <div>
                            <a href="" class=" text-center col-12 font-weight-bold">孕妈转区</a>
                            </div>
                            <a href="" class="my_font_size pr-1 pl-1">孕妇装</a>
                            <a href="" class="my_font_size pr-1">婴儿背带</a>
                            <a href="" class="my_font_size pr-1">母婴服务</a>
                            <span class="text-right m-0">
                                <a href="">＞</a></span>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="sk">
            <div class="sk-width">
                <div class="sk-l">
                    <a href="">
                        <img src="../img/s_img1.jpg" alt="" class=""/>
                    </a>
                </div>
                <div class="sk-r" @mouseenter="enter" @mouseleave="leave">
                    <div class="sk-r-in">
                    <ul class="ul-hidden" id="u1" >
                        <li class="hid1" v-for="(item,i) of banner" :key="i">
                            <router-link to="/Details">
                                <img :src="item.img_url" />
                            </router-link>
                            <span class="m-1 d-block">{{item.title}}</span>
                            <div>
                            <span class="text-danger my_font_size_lg ">￥{{item.price}}.00</span><del class="ml-3 my_font_size_md">￥{{item.delprice}}.00</del>
                            </div>
                        </li>
                    </ul>
                    </div>
                <button id="btn1" @click="move"> ></button>
                </div>
            </div>
        </div>
        <div class="rx">
            <div class="rx-width">
                <div class="rx-1">
                        <h4>热销推荐</h4>
                        <div class="rx-1-big">
                            <a href="#">
                                <img src="../img/hot1.png" alt="" class=""/>
                            </a>
                        </div>
                        <div class="rx-1-sm">
                            <a href="">
                                <img src="../img/hot3.png" alt="" class=""/>
                            </a>
                        </div>
                </div>
            <div class="rx-2">
                <div class="rx-2-top">
                    <a href="">
                        <img src="../img/hot5.png" alt="" class="w-100"/>
                    </a>
                </div>
                <div class="rx-2-btm">
                    <a href="" class="col-6 pl-0 pr-2">
                        <img src="../img/hot6.png" alt="" class="w-100"/>
                    </a>
                    <a href="" class="col-6 pr-0 pl-2">
                        <img src="../img/hot7.png" alt="" class="w-100"/>
                    </a>
                </div>
            </div>
            <div class="rx-3">
                <div class="rx-3-top">
                    <a href=""><img src="../img/hot8.png" class="w-100 h-100" alt=""/></a>
                </div>
                <div class="rx-3-btm">
                    <a href=""><img src="../img/hot9.png" class="w-100 h-100" alt=""/></a>
                </div>
            </div>
        </div>
        </div>
        <div class="my_louceng_color">
        <div class="my_louceng">
            <div class="lc">
                <div class="lc-left1 lc-left">
                    <h4 class="h41">1F</h4>
                    <img src="../img/icon_gou.png" alt=""/>
                    <h5>宝宝服饰</h5>
                </div>
                <div class="lc-right">
                    <div class="lc-right-t">
                        <a href="#"><img src="../img/img12.jpg" alt="" class="w-100 h-100"/></a>
                    </div>
                    <div class="lc-a" v-for="(item,n) of floor" :key="n">
                        <a href="#">
                            <img :src="item.img_url"  class="w-100" alt=""/>
                        </a>
                    </div>
                </div>
        </div>
            <div class="lc">
                <div class="lc-left2 lc-left">
                    <h4 class="h42">2F</h4>
                    <img src="../img/icon_gou.png" alt=""/>
                    <h5>奶粉辅食</h5>
                </div>
                <div class="lc-right">
                    <div class="lc-right-t">
                        <a href="#"><img src="../img/img12.jpg" alt="" class="w-100 h-100"/></a>
                    </div>
                    <div class="lc-a" v-for="(item,n) of floor" :key="n">
                        <a href="#">
                            <img :src="item.img_url"  class="w-100" alt=""/>
                        </a>
                    </div>
                </div>
        </div>
        <div class="lc">
                <div class="lc-left3 lc-left">
                    <h4 class="h43">3F</h4>
                    <img src="../img/icon_gou.png" alt=""/>
                    <h5>宝宝用品</h5>
                </div>
                <div class="lc-right">
                    <div class="lc-right-t">
                        <a href="#"><img src="../img/img12.jpg" alt="" class="w-100 h-100"/></a>
                    </div>
                    <div class="lc-a" v-for="(item,n) of floor" :key="n">
                        <a href="#">
                            <img :src="item.img_url"  class="w-100" alt=""/>
                        </a>
                    </div>
                </div>
        </div>
        <div id="clearlc"></div>
    </div>
    </div>
     <div class="list-box" >
        <div class="list-box-width">
            <h2 class="text-center">更多推荐</h2>
            <div class="box-btm">
                <div class="box-item" v-for="(item,y) of list" :key="y">
                    <router-link to="/GoodList">
                        <img :src="item.img_url" class="m-auto d-block" alt=""/>
                    </router-link>
                    <p>{{item.title}}</p>
                    <span class="text-danger text-center d-block">￥{{item.price}}.00</span>
                </div>
        <div id="clearlc"></div>
            </div>
        </div>
    </div>
    
</div>


</template>

<script>
export default {
    data(){
        return{
            n:0,
            t:"",
            banner:[],
            hot:[],
            floor:[],
            list:[]
        }
    },
    created(){
        this.loadmove();
        this.getindex();
    },
    beforeRouteLeave(to,from,next){
        this.enter();
        next();
     },
    methods:{
        loadmove(){
            this.t=setInterval(this.move,1500);
        },
        enter(){
            clearInterval(this.t);
        },
        leave(){
            this.loadmove();
        },
        move(){
            this.n++;
            var u1=document.getElementById("u1");
            if(this.n>4){this.n=0;u1.style.marginLeft="0"}
            if(this.n>0){
                var x=this.n*225*-1;
                u1.style.marginLeft="-225px";
            }
            u1.style.marginLeft=`${x}px`;
        },
        getindex(){
            var url="http://127.0.0.1:3000/getindex";
            this.axios.get(url).then(result=>{
                var data=result.data;
                for(var i=0;i<data.data.length;i++){
                    var pic=data.data[i];
                    var pid=data.data[i].pid;
                    if(pid==1){
                        this.banner.push(pic)
                    }else if(pid==2){
                        this.hot.push(pic)
                    }else if(pid==3){
                        this.floor.push(pic)
                    }else if(pid==4){
                        this.list.push(pic)
                    }
                }
            })
        }
    }
}
</script>

<style scoped>
.index-bg{
    height: 400px;
    background-color: #ffc6dd;
}
.index-bg-width{
    width: 1200px;
    margin: 0 auto;
    position: relative;
}
#d3{
    width: 180px;
    position: absolute;
    top:0;
}
#d3 ul li a:hover{
    color:#fa2929;
}
#d3>ul{
    list-style: none;
    height: 400px;
    padding: 8px 0px 17px 5px;
    box-sizing: border-box;
    background: #fff;
    border-bottom: 1px solid #e9e9e9;
    margin: 0;
}
#d3>ul li{
    border-bottom: 1px solid #e7e7e7;
    padding-bottom: 1px;
}
#d3>ul>li div>a{
    padding-left: 27px;
    font-size: 15px;
    line-height: 24px;
    font-weight: bold;
    color:#000;
}
#d3>ul li>a{
    color:#7d7e7f;
    font-size: 12px;
    margin-left: 4px;
}
#d3>ul>li span{
    display:block;
    float:right;
}
#d3>ul>li span>a{
    color:#000;
    font-weight: 0;
}
.sk{
    height: 300px;
    padding: 80px 0 70px 0;
    background: #fff;
    box-sizing: content-box;
}
.sk-width{
    width: 1200px;
    margin: 0 auto;
}
.sk-l{
    float: left;
    width: 225px;
    height: 300px;
}
.sk-r{
    float: left;
    width: 974px;
    height: 298px;
    border: 1px solid #eaeaea;
    border-left: 0;
    position: relative;
}
.sk-r ul{
    list-style:none;
    margin: 0;
    padding: 0;
}
.sk-r ul li:not(.hid1){
    display: block;
    float: left;
    margin: 28px 0 0 35px;
}
.sk-r ul li.hid1{
    display: block;
    float: left;
    margin: 28px 0 0 20px;
    width: 204px;
}
.sk-r ul li>span{
    display: block;
    width: 190px;
    height: 40px;
    line-height: 40px;
    text-align: center;
}
.sk-r ul li div span{
    color: #ee0000;
    font-size: 24px;
}
.sk-r ul li div del{
    padding-left: 40px;
}
#btn1{
    position: absolute;
    top:50%;
    width: 36px;
    height: 36px;
    border-radius: 50%;
    font-size: 20px;
    text-align: center;
    line-height: 25px;
    background-color: rgba(0,0,0,.2);
    border:0;
    color:#fff;
    cursor: pointer;
    right:20px;
}
#btn1:hover{
    background-color: rgba(0,0,0,.4);
}
.rx{
    width: 1903px;
    height: 650px;
    padding: 80px 0 70px 0;
    background: #f8f8f8;
}
.rx-width{
    width: 1200px;
    margin: 0 auto;
}
.rx-1,.rx-2{
    width: 390px;
    height: 500px;
    background: #fff;
    margin-right: 15px;
    float: left;
    padding: 20px;
    box-sizing: border-box;
}
.rx-3{
    width: 390px;
    height: 500px;
    float: right;
    position: relative;
}
.rx-3-btm img{
    position: absolute;
    bottom: 0;
}
.rx h4{
        font-size: 24px;
    color: #333333;
    padding-top: 6px;
    font-weight: 400;
}
.rx-1-big{
    text-align: center;
    height: 160px;
    background: #f3f3f3;
    margin-top: 136px;
}
.rx-1-big:hover img{
    transform:scale(1.1)
}
.rx-1-big img{
    position: relative;
    top: -80px;
    transition: .5s;
}
.rx-1-sm{
    text-align: center;
    margin-top: 30px;
}
.rx-1-sm:hover img{
    transform: scale(1.1);
}
.rx-1-sm img{
    transition:.5s;
}
.rx-2-top{
        margin-bottom: 12px;
}
.rx-2-btm{
    position: relative;
}
.rx-2-btm a:last-child img{
    position: absolute;
    right: 0;
}
.my_louceng_color{
    background: #fff;
}
.my_louceng{
    width: 1200px;
    margin: 0 auto;
    padding:33px 0 60px 0;
}
.lc-left1{
    float: left;
    height: 400px;
    width: 198px;
    text-align: center;
    background: #c7b6d7;
}
.lc-left2{
    float: left;
    height: 400px;
    width: 198px;
    text-align: center;
    background:#c0e2ef;
}
.lc-left3{
    float: left;
    height: 400px;
    width: 198px;
    text-align: center;
    background: #f6d77d;
}
.lc-left h4{
    font-size: 72px;
    font-weight: bold;
    padding: 50px 0;
}
.h41{
    color:#9175ad;
}
.h42{
    color: #72bad5;
}
.h43{
    color: #dba64b;
}
.lc-left h5{
    font-size: 30px;
    color: #fff;
    margin-top: 36px;
}
.lc-right{
    float: left;
    width: 1002px;
    height: 400px;
}
.lc-right img{
    vertical-align: middle;
}
.lc-right-t{
    height: 202px;
}
.lc-right-t img{
    border:1px solid #e1e1e1;
    vertical-align: middle;
}
.lc-a{
    box-sizing: content-box;
    display:block;
    border: 1px solid #e1e1e1;
    float: left;
    margin: -1px -1px 0 0;
}
.lc-a img{
    width: 199px;
    height: 197px;
}
.lc{
    clear: both;
    padding-top: 70px;
}
#clearlc{
    clear: both;
}
.list-box{
    background:#f8f8f8;
    text-align: center;
}
.list-box-width{
    width: 1210px;
    margin: 0 auto;
}
.box-btm{
    padding-bottom: 96px;
}
.box-item{
    width: 230px;
    height: 300px;
    background: #fff;
    float: left;
    margin: 0 12px 12px 0;
}
.box-item a img{
    width: 190px;
    height: 190px;
    margin-top: 17px;
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
/* 轮播图 */
.sk-r-in{
    width:900px;
    height: 300px;
    overflow: hidden;
    margin-left: 15px;
}
.ul-hidden{
    width: 2000px;
}
#u1{
    transition: .6s;
}
/* 轮播图hover */
#u1 li a:hover img{
    transform: scale(1.1);
}
#u1 li a img{
    transition: .5s;
    width: 100%;
    height: 195px;
}
</style>

