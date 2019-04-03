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
                    <input type="checkbox">
                    <span class="s1">全选</span>
                </div>
                <span>商品</span>
                <span>单价</span>
                <span>数量</span>
                <span>小计</span>
                <span>操作</span>
            </div>
            <div class="cart-body">
                    <input type="checkbox">
                    <div>
                        <img src="../img/paging_img1.jpg" alt="">
                    </div>
                    <div class="sp">
                        <span class="s1">宝宝T恤棉质小衫</span>
                        <span>粉色</span>
                        <span>130cm</span>
                    </div>
                    <div>
                        <span class="price">189.00</span>
                    </div>
                    <div>
                        <button>-</button>
                        <input type="number" value=1>
                        <button>+</button>
                    </div>
                    <div>
                        <span>1134.00</span>
                    </div>
                    <div>
                    <a href="#">删除</a>
                    </div>
            </div>
            <div class="cart-body">
                    <input type="checkbox">
                    <div>
                        <img src="../img/paging_img1.jpg" alt="">
                    </div>
                    <div class="sp">
                        <span class="s1">宝宝T恤棉质小衫</span>
                        <span>粉色</span>
                        <span>130cm</span>
                    </div>
                    <div>
                        <span class="price">189.00</span>
                    </div>
                    <div>
                        <button>-</button>
                        <input type="number" value=1>
                        <button>+</button>
                    </div>
                    <div>
                        <span>1134.00</span>
                    </div>
                    <div>
                    <a href="#">删除</a>
                    </div>
            </div>
            <div class="cart-body">
                    <input type="checkbox">
                    <div>
                        <img src="../img/paging_img1.jpg" alt="">
                    </div>
                    <div class="sp">
                        <span class="s1">宝宝T恤棉质小衫</span>
                        <span>粉色</span>
                        <span>130cm</span>
                    </div>
                    <div>
                        <span class="price">189.00</span>
                    </div>
                    <div>
                        <button>-</button>
                        <input type="number" value=1>
                        <button>+</button>
                    </div>
                    <div>
                        <span>1134.00</span>
                    </div>
                    <div>
                    <a href="#">删除</a>
                    </div>
            </div>
            <div class="cart-bottom">
                <input type="checkbox" class="checkbox"/>
                <span class="choose">已选 3 件</span>
                <div class="deletemore">
                    <a href="#">批量删除</a>
                </div>
                <div class="money">
                    <span>应付:</span>
                    <span>￥567.00</span>
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
