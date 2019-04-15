<template>
    <div>
        <div class="banner-box">
            <div class="banner"></div>
        </div>
        <div class="list-box">
            <div class="list-box-w w1200">
                <div class="list-top">
                    <a href="#">今日团购</a>
                    <a href="#">明日预告</a>
                </div>
                <div class="list-cont">
                    <div class="list-item">
                        <img src="../img/tuan_img1.jpg" alt="">
                        <div class="list-text-box">
                            <p>宝宝专用硅胶环保饭碗四套+调羹+筷子自助学吃饭套装</p>
                            <p class="plic">
                                <span class="newprice">￥100.00</span>
                                <del class="dprice">￥238.00</del>
                                <span class="discount">5折</span>
                            </p>
                        </div>
                    </div>
                    <div class="list-item">
                        <img src="../img/tuan_img1.jpg" alt="">
                        <div class="list-text-box">
                            <p>宝宝专用硅胶环保饭碗四套+调羹+筷子自助学吃饭套装</p>
                            <p class="plic">
                                <span class="newprice">￥100.00</span>
                                <del class="dprice">￥238.00</del>
                                <span class="discount">5折</span>
                            </p>
                        </div>
                    </div><div class="list-item">
                        <img src="../img/tuan_img1.jpg" alt="">
                        <div class="list-text-box">
                            <p>宝宝专用硅胶环保饭碗四套+调羹+筷子自助学吃饭套装</p>
                            <p class="plic">
                                <span class="newprice">￥100.00</span>
                                <del class="dprice">￥238.00</del>
                                <span class="discount">5折</span>
                            </p>
                        </div>
                    </div><div class="list-item">
                        <img src="../img/tuan_img1.jpg" alt="">
                        <div class="list-text-box">
                            <p>宝宝专用硅胶环保饭碗四套+调羹+筷子自助学吃饭套装</p>
                            <p class="plic">
                                <span class="newprice">￥100.00</span>
                                <del class="dprice">￥238.00</del>
                                <span class="discount">5折</span>
                            </p>
                        </div>
                    </div>
                    <div class="clear"></div>
                    <div class="list-cont-bottom">
                        <div>
                            <a href="">上一页</a>
                            <a href="">1</a>
                            <a href="">2</a>
                            <a href="">3</a>
                            <a href="">4</a>
                            <a href="">5</a>
                            <a href="">...</a>
                            <a href="">10</a>
                            <a href="">下一页</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="list-footer">
            <div class="list-footer-w">
                <div class="title">
                    <h3>团购销量榜</h3>
                </div>
                <div class="footer-box">
                    <div class="footer-item">
                        <img src="../img/tuan_img1.jpg" alt="">
                        <div>
                            <div>2</div>
                            <div>
                                <p>宝宝打底衣棉麻透气不起球白色多色可选</p>
                                <span>￥100.00</span>
                            </div>
                        </div>
                    </div>
                    <div class="footer-item">
                        <img src="../img/tuan_img2.jpg" alt="">
                        <div>
                            <div>1</div>
                            <div>
                                <p>宝宝打底衣棉麻透气不起球白色多色可选</p>
                                <span>￥100.00</span>
                            </div>
                        </div>
                    </div>
                    <div class="footer-item-last footer-item">
                        <img src="../img/tuan_img3.jpg" alt="">
                        <div>
                            <div>3</div>
                            <div>
                                <p>宝宝打底衣棉麻透气不起球白色多色可选</p>
                                <span>￥100.00</span>
                            </div>
                        </div>
                    </div>
                    <div class="clear"></div>
                </div>
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
    .banner-box .banner{
        height: 380px;
        background: url("../img/tuan_img_banner.jpg") no-repeat;
        background-size: cover;
        cursor: pointer;
    }
    .list-box{
        background: #f8f8f8;
        padding-bottom: 50px;
        text-align: center;
    }
    .w1200{
        width: 1200px;
        margin: 0 auto;
    }
    .list-top{
        padding: 60px 0 66px 0;
    }
    .list-top a{
        color: #693ca4;
        border-bottom: 2px solid #cfb2f6;
        margin-right: 70px;
        line-height: 56px;
        color: #666666;
        font-size: 20px;
        display: inline-block;
    }
    .list-cont{
        width: 1220px;
        padding-bottom: 30px;
    }
    .list-item{
        width: 290px;
        height: 420px;
        float: left;
        margin: 0 12px 20px 0;
        text-align: left;
        background: #fff;
    }
    .list-item .list-text-box{
        padding: 12px;
        box-sizing: border-box;
    }
    .list-text-box p:first-child{
            line-height: 24px;
    font-size: 16px;
    color: #666666;
    margin-bottom: 6px;
    }
    .plic{
        position: relative;
    }
    .plic span:first-child{
        font-size: 20px;
        margin-right: 24px;
        color:#f00;
    }
    .clear{
        clear: both;
    }
    .plic span:last-child{
        width: 60px;
        height: 26px;
        line-height: 26px;
        font-size: 16px;
        background: #cfb2f6;
        display: block;
        text-align: center;
        color: #fff;
        position: absolute;
        right: 0;
        top: 0;
        cursor: pointer;
    }
    .list-cont-bottom{
        text-align: center;
    }
    .list-cont-bottom div{
        display: inline-block;
        vertical-align: middle;
        margin: 10px 0;
        font-size: 16px;
    }
    .list-cont-bottom div a{
        display: inline-block;
        text-decoration: none;
        height: 30px;
        line-height: 30px;
        padding: 0 15px;
        color:#000;
        border:1px solid #e2e2e2;
        border-right: 0;
        background: #fff;
    }
    .list-cont-bottom div a:last-child{
        border:1px solid #e2e2e2;
    }
    .list-footer{
        font-size: 30px;
        color: #fffaea;
        text-align: center;
        background: #877dd2;
    }
    .list-footer-w{
        width: 1200px;
        margin: 0 auto;
        padding-bottom: 120px;
    }
    .title{
        font-size: 30px;
        color: #fffaea;
        text-align: center;
    }
    .title h3{
        padding: 60px 0;
        font-weight: 400;
        font-size: 35px;
        margin: 0;
    }
    .footer-item{
        float: left;
        text-align: left;
        width: 320px;
        height: 500px;
        background: #fff;
        margin-right: 120px;
    }
    .footer-box div.footer-item-last{
        margin: 0;
    }
    .footer-item img{
        width: 100%;
        height: 400px;
    }
    .footer-item div div:first-child{
        float: left;
        width: 80px;
        line-height: 100px;
        font-size: 36px;
        color: #ffa25d;
        font-weight: bold;
        text-align: center;
        background: #f4f5fa;
        font-style: italic;
    }
    .footer-item div div p{
       font-size: 16px;
        color: #666666;
        line-height: 24px; 
    }
    .footer-item div div span{
        font-size: 23px;
    color: #ee0000;
    }
</style>

