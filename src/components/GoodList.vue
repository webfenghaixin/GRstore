<template>
    <div>
        <div class="list-content">
            <div class="list-w">
                <div class="left-nav">
                    <div class="left-title">所有分类</div>
                    <div class="left-cont">
                        <ul>
                            <li>
                                <a href="#" @click="change" data-a="">奶粉辅食</a>
                                <div>
                                    <p><a href="">进口奶粉</a></p>
                                    <p><a href="">宝宝辅食</a></p>
                                    <p><a href="">营养品</a></p>
                                </div>
                            </li>
                            <li>
                                <a href="#" @click="change" data-a="">儿童用品</a>
                                <div>
                                    <p><a href="">纸尿裤</a></p>
                                    <p><a href="">婴儿湿巾</a></p>
                                    <p><a href="">婴儿车</a></p>
                                    <p><a href="">婴儿床</a></p>
                                    <p><a href="">儿童安全座椅</a></p>
                                </div>
                            </li>
                            <li>
                                <a href="#" @click="change" data-a="">儿童早教</a>
                                <div>
                                    <p><a href="">儿童玩具</a></p>
                                    <p><a href="">早教书籍</a></p>
                                    <p><a href="">孕产育儿书</a></p>
                                </div>
                            </li>
                            <li>
                                <a href="#" @click="change" data-a="">儿童服饰</a>
                                <div>
                                    <p><a href="">童鞋</a></p>
                                    <p><a href="">童装</a></p>
                                    <p><a href="">宝宝配饰</a></p>
                                </div>
                            </li>
                            <li>
                                <a href="#" @click="change" data-a="">孕妈专区</a>
                                <div>
                                    <p><a href="">孕妇装</a></p>
                                    <p><a href="">孕妇护肤</a></p>
                                    <p><a href="">孕妇用品</a></p>
                                </div>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="right-cont">
                    <div class="right-cont-i">
                        <div class="right-top">
                            <a href="">销量</a>
                            <a href="">价格</a>
                            <a href="">新品</a>
                            <a href="">收藏</a>
                            <div class="clear"></div>
                        </div>
                        <div class="right-num">
                            <span>200个</span>
                        </div>
                        <div class="right-list">
                            <div class="right-items" v-for="(item,i) of list" :key="i" >
                                <div class="img" >
                                    <a href="#"  >
                                        <img :src="item.img_url" @click="jump" :data-i="i">
                                    </a>
                                </div>
                                <div>
                                    <p class="item-title">{{item.title}}</p>
                                    <p class="item-price">
                                        <span class="pri">￥{{item.price}}.00</span>
                                        <span class="num">{{item.sell}}付款</span>
                                    </p>
                                </div>
                            </div>
                        </div>
                        <div class="right-bottom">
                            <div class="bottom-i">
                                <div class="last"><a href="#">上一页</a></div>
                                <div><a href="">1</a></div>
                                <div><a href="">2</a></div>
                                <div><a href="">3</a></div>
                                <div><a href="">4</a></div>
                                <div><a href="">5</a></div>
                                <div><a href="" class="font-wight">...</a></div>
                                <div class="next"><a href="#">下一页</a></div>
                            </div>
                        </div>
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
            n:false,
            list:[]
        }
    },
    created(){
        this.getlist();
    },
    methods:{
        jump(e){
            var i=Number(e.target.dataset.i)+1;
            this.$router.push(`/Details?id=${i}`);
        },
        getlist(){
            var url="http://127.0.0.1:3000/getlist";
            this.axios.get(url).then(result=>{
                this.list=result.data.data;
            })
        },
        /* 导航条折叠 */
        change(e){
            var p=e.target.parentElement;
            var d=e.target.dataset.a;
            if(d=="active"){
                console.log(p);
                p.style="height:39px";
                e.target.style="background-position:8px -39px";
                e.target.dataset.a="";
            }else if(d==""){
                p.style="height:156px";
                e.target.style="background-position:8px 0";
                 e.target.dataset.a="active";
            }
        }
    }
}
</script>

<style scoped>
    .list-content{
        background: #f8f8f8;
        padding: 50px 0 90px 0;
    }
    .list-w{
        width: 1200px;
        margin: 0 auto;
    }
    .left-nav{
        width: 200px;
        line-height: 38px;
        background: #fff;
        float: left;
        margin-right: 58px;
    }
    .left-title{
            color: #fff;
    font-size: 16px;
    background: #333333;
    text-align: center;
    }
    .left-cont{
        border:1px solid #eeeeee;
    }
    .left-cont>ul{
        list-style: none;
        padding: 0;
        margin: 0;
    }
    .left-cont>ul>li a:first-child{
        font-size: 14px;
        color: #333;
        background: url("../img/off-icon.png") 8px -2px no-repeat;
        background-position:8px -39px;
        cursor: pointer;
        
    }
    .left-cont>ul>li{
        height: 39px;
        overflow: hidden;
        transition:.5s;
    }
    .left-cont>ul>li>div>p>a{
        color:#888888;
        transition: .2s;
    }
    .left-cont>ul>li>div>p{
        border-bottom: 1px dashed #eeeeee;
        padding-left: 30px;
        margin: 0;
    }
    .left-cont>ul>li>div>p:hover a{
        color:rgb(253, 64, 64)
    }
    .left-cont>ul>li>a{
        display: block;
        border-bottom: 1px dashed #eeeeee;
        padding-left: 30px;
        color:#333;
    }
    .clear{
        clear: both !important;
    }
    .right-cont{
        float: left;
        width: 940px;
    }
    .right-cont-i{
        width: 1000px;
    }
    .right-top{
        margin-top: 5px;
    }
    .right-top a{
        width: 58px;
        height: 26px;
        line-height: 26px;
        font-size: 14px;
        color: #333333;
        border: 1px solid #eaeaea;
        margin-left: -1px;
        float: left;
        background: #fff url(../img/sort-arrow.png) no-repeat 41px 0;
        text-indent: 9px;
    }
    .right-num{
        line-height: 44px;
        font-size: 16px;
        padding-left: 7px;
    }
    .right-list::after{
        content:"";
        display: block;
        clear: both;
    }
    .right-items{
        float: left;
    width: 280px;
    height: 366px;
    border: 1px solid #eaeaea;
    background: #fff;
    margin: 0 47px 60px 0;
    }
    .right-items div:last-child{
        padding: 14px 0 0 14px;
    }
    .right-items div:last-child p:first-child{
        color: #333333;
        font-size: 16px;
        margin-bottom: 14px;
        line-height: 23px;
    }
    .right-items div p span:last-child{
        float:right;  
        margin-right: 15px;  
        color: #999999;
        line-height: 23px;
    }
    .right-items div p span:first-child{
        color:#ee0000;
        font-size:19px;
    }
    
    .img img{
        width: 100%;
        height: 249px;
        border-bottom: 1px solid #eaeaea;
    }
    .right-bottom{
        text-align: center;
    }
    .bottom-i{
        display: inline-block;
        vertical-align: middle;
        margin: 10px 0;
    }
    .bottom-i div{
        display: inline-block !important;
        border-radius: 2px 0 0 2px;
        border: 1px solid #e2e2e2;
        background: #fff;
    }
    .bottom-i div a{
        display: inline-block;
        vertical-align: middle;
        padding: 0 15px;
        height: 28px;
        line-height: 28px;
        color: #333;
        font-size: 12px;
    }
    .font-wight{
        font-weight: 700;
    }
    
</style>
