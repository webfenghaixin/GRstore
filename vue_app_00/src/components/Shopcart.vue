<template>
    <div id="d11">
        <table></table>
        <div class="banner-bg">
            <h3>夏季清仓</h3>
            <p>宝宝被子，衣服3折起</p>
        </div>
        <div class="cart">
            <div class="cart-top">
                <div>
                    <input type="checkbox" :checked="checkall" @click="allcheck">
                    <span class="s1">全选</span>
                </div>
                <span>商品</span>
                <span>单价</span>
                <span>数量</span>
                <span>小计</span>
                <span>操作</span>
            </div>
            <div class="cart-body" v-for="(item,i) of list" :key="i">
                    <input type="checkbox" :data-c="i" @click="check" :checked="item.cb">
                    <div>
                        <img :src="item.img_url" alt="">
                    </div>
                    <div class="sp">
                        <span class="s1">{{item.title}}</span>
                        <span>{{item.color}}</span>
                        <span>130cm</span>
                    </div>
                    <div>
                        <span class="price">￥{{item.price}}.00</span>
                    </div>
                    <div>
                        <button @click="sub" :data-i="i">-</button>
                        <input type="number" v-model="item.count" >
                        <button @click="add" :data-i="i">+</button>
                    </div>
                    <div>
                        <span>￥<span class="xj">{{item.price * item.count}}</span>.00</span>
                    </div>
                    <div>
                        <a href="#" @click="del" :data-i="i">删除</a>
                    </div>
            </div>
            <div class="cart-bottom">
                <input type="checkbox" class="checkbox" :checked="checknow" @click="checks"/>
                <span class="choose">已选 {{cnum}} 件</span>
                <div class="deletemore">
                    <a href="#" @click="delmore">批量删除</a>
                </div>
                <div class="money">
                    <span>应付:</span>
                    <span>￥{{sum}}.00</span>
                </div>
                <button class="account">结算</button>
            </div>
        </div>
    </div>
</template>

<script>
export default {
    data(){
        return{
            list:[],
            checkall:false,
            sum:0,
            cnum:0,
            checknow:false,
            dels:[]
        }
    },
    created(){
        this.getcart();
    },
    methods:{
        // 右侧删除按钮
        del(e){
            // 获取当前点击的按钮在list数组中的下标i
            var i=e.target.dataset.i;
            var url="http://127.0.0.1:3000/delcart?cid="+this.list[i].cid;
            this.axios.get(url).then(result=>{
                // 恢复其他按钮状态，总价清零
                this.getcart();
                this.cnum=0;
                this.checknow=false;
                this.sum=0;
            })
        },
        // 批量删除
        delmore(){
            // 判断是否选中过商品
            // 如果选中过商品
            if(this.checknow){
            for(var i=0;i<this.list.length;i++){
                // 如果当前购物车商品是选中状态
                if(this.list[i].cb){
                    // 就把cid添加到dels数组中保存
                    this.dels.push(this.list[i].cid)
                }
            }
            // 创建变量delc保存dels数组转化的字符串，以","分割
            var delc=this.dels.join(",");
            // 清空dels
            this.dels=[];
            var url="http://127.0.0.1:3000/delcart?cid="+delc;
            console.log(url)
            this.axios.get(url).then(result=>{
                // 重新加载页面
                this.getcart();
                // 恢复其他按钮状态，总价清零
                this.cnum=0;
                this.checknow=false;
                this.sum=0;
            })
        }},
        // +号
        add(e){
            // 获取当前下标
            var i=e.target.dataset.i;
            // 当前循环的count值加1
            this.list[i].count++;
            // 如果当前元素是选中状态，再执行以下代码
            if(this.list[i].cb){
            var list=this.list;
            // 当前小计
            list[i].xj=list[i].count*list[i].price;
            // 总计
            this.sum+=parseInt(list[i].price);
            }
        },
        // 商品数量减1按钮
        sub(e){
            var list=this.list;
            var i=e.target.dataset.i;
            // 判断选中状态
            if(list[i].cb){
                // 如果数量大于1再执行操作
                if(list[i].count>1){
                this.sum-=parseInt(list[i].price);
                list[i].xj=list[i].count*list[i].price;
            }}
            // 最后再把当前数量减1
            if(list[i].count>1){list[i].count--};
        },
        //当前已选
        checks(){
            // 清空多选框
            for(var item of this.list){
                item.cb=false;
                }
            this.checknow=false;
            this.checkall=false;
            this.cnum=0;                        
        },
        // 点击多选框时触发的函数
        check(e){
            // 当前元素的选中状态
            var ischeck=e.target.checked;
            // 下标
            var i=e.target.dataset.c;
            var list=this.list;
            list[i].cb=ischeck;
            this.checknow=true;
            // 获取所有小计
            var xj=document.getElementsByClassName("xj")[i];
            // 判断当前多选框是否选中状态                   //选中的多选框个数+1
            if(ischeck){
                this.sum+=parseInt(xj.innerHTML);this.cnum++;
            }else{
                this.sum-=parseInt(xj.innerHTML);this.cnum--;
            };
            // 当前选中的个数为n
            var n=0;
            for(var item of list){
                // 如果选中就+1
                if(item.cb){n++};
            }
                if(n==list.length){
                    this.checkall=true;
                }else if(n>0){ //如果选中的大于0,多选的按钮就为选中状态
                    this.checknow=true
                }else{ //否则都为空
                    this.checkall=false;
                    this.checknow=false;
                }
        },
        // 全选
        allcheck(e){
           var isc=e.target.checked;
           var xj=document.getElementsByClassName("xj");
           if(isc){
            //    如果选中，先清空当前总价
            this.sum=0;this.cnum=xj.length;
            this.checknow=true
            // 再计算总价
           for(var i=0;i<xj.length;i++){
               this.sum+=parseInt(xj[i].innerHTML);
           }
           }else{
            //    如果未选中
               this.sum=0;this.cnum=0;
               this.checknow=false;
           }
        //    把每个多选框的状态跟全选框同步
            for(var item of this.list){
                item.cb=isc;
                if(isc){//如果选中
                    for(var i=0;i<this.dels.length;i++){
                        // 多选的数组去重
                        if(this.dels[i]!=item.cid)
                        this.dels.push(item.cid);
                    }
                    // 未选中就清空
                }else{this.dels=[]}
            }
            // 全选框的状态
            this.checkall=isc;
        },
        // 获取当前用户的购物车信息
        getcart(){
            var url="http://127.0.0.1:3000/getcart"
            this.axios.get(url).then(result=>{
                this.list=result.data.data;
            })
        }
    }
    
} 
</script>
<style scoped>
#d11{
    background: #fff;
}
    .banner-bg{
        width: 1200px;
        height: 180px;
        background: url("../img/buy_banner.jpg") no-repeat;
        margin: 50px auto;
        padding-left: 68px;
        box-sizing: border-box;
        color: #fff;
        border-radius: 15px;
    }
    .banner-bg h3{
        font-size: 36px;
        padding: 40px 0 20px 0;
        font-weight: 400;
    }
    .banner-bg p{
        color:#fff;
        font-size: 21px;
    }
    .cart{
        padding-bottom: 180px;
        width: 1200px;
        margin: 0 auto;
        
    }
    .cart-top{
        height: 50px;
        line-height: 50px;
        background: #f5f5f5;
        padding-left: 43px;
        display: flex;
    }
    .cart-top div span{
        margin-left: 10px;
    }
    .cart-top div{
        width: 80px;
        display: inline-block;
    }
    .cart-top span:not(.s1){
        width: 190px;
        display: inline-block;
        text-align: center;
    }
    
    .cart-top>span:nth-child(2){
        width: 300px !important;
    }
    .cart-body{
        border: 1px solid #ececee;
        border-top: 0;
        height: 218px;
        padding: 59px 0;
        padding-left: 43px;
        box-sizing: border-box;
        position: relative;
        display: flex;
        flex-wrap: nowrap;
    }
    .cart-body input:first-child{
        position: absolute;
        left: 43px;
        top:102.5px;
    }
    .cart-body div{
        display: inline-block;
    } 
    .cart-body div.sp{
        width: 160px;
    }
    .cart-body div:nth-child(2){
        margin-left: 100px;
    }
    .cart-body p{
        display: inline-block;
        line-height: 100px;
    }
    .cart-body img{
        width: 100px;
        border: 1px solid #ececee;
        margin-right: 20px;
    }
    .cart-body>div>span:first-child{
        display:block;
        font-size: 15px;
    }
    .cart-body>div>span:not(.s1){
        margin-right: 10px;
        color: #888;
        font-size: 13px;
        line-height: 90px;
    }
    .sp span:nth-child(2),.sp span:nth-child(3){
        line-height: 30px !important;
    }
    .cart-body>div:nth-child(4){
        width: 190px;
    }
    .cart-body>div:nth-child(5){
        width: 190px;
        display: flex;
        flex-wrap: nowrap;
        justify-content:center;
        align-items: center;
    }
    .cart-body>div:nth-child(5) button{
        width: 30px;
        height: 40px;
    }
    .cart-body>div:nth-child(5) input{
        width: 30px;
        height: 40px;
        display: block;
        padding: 5px;
        text-align: center;
        margin: 0;
    }
    .cart-body>div:nth-child(6){
        width: 190px;
        text-align: center;
        
    }
    .cart-body>div:nth-child(6) span{
        color:red !important;
        font-size: 20px !important;
        margin: 0 !important;
    }
    .cart-body>div:nth-child(7){
        width: 185px;
        display: flex;
        align-items: center;
        justify-content: center;
    }
    .cart-body>div:nth-child(7) a{
        color:rgb(231, 52, 52)
    }
    .cart-body>div>span.price{
        width: 190px;
        text-align: center;
        color:#000 !important;
    }
    /* 购物车底部 */
    .cart-bottom{
        height: 85px;
        padding-left: 43px;
        line-height: 78px;
        border: 1px solid #ececee;
        background: #f5f5f5;
        position: relative;
    }
    .cart-bottom .choose{
        width: 120px;
        text-align: center;
        display: inline-block;
    }
    .cart-bottom div{
        display: inline-block;
    }
    .cart-bottom .deletemore a{
        display: block;
        height: 21px;
    }
    .cart-bottom .money{
        float: right;
        margin-right: 230px;
    }
    .cart-bottom .money span:last-child{
        font-size:27px;
        color:red;
        font-weight: 450;
    }
    .cart-bottom button{
        width: 160px;
        height: 84px;
        line-height: 84px;
        font-size: 24px;
        color: #fff;
        text-align: center;
        background: #ff5500;
        border-radius: 0;
        position: absolute;
        right: 0px;
        top: -1px;
        border:0;
        padding:0 18px;
    }
</style>
