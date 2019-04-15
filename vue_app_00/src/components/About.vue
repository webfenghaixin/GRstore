<template>
    <div>
        <div class="banner-box">
            <div class="banner"></div>
        </div>
        <div class="cont">
            <div class="img-box">
                <img src="../img/us_img1.jpg" alt="">
                <img src="../img/us_img2.jpg" alt="">
            </div>
            <div class="text">
                <p>我们的母婴产业2016年涉足母婴行业，以品牌经销为主，在强大市场的推动下，于2016年创立自己的独立品牌。公司立足于江西南昌，2年的品牌沉淀和运营经验让我们在行业中获得良好的口碑和市场份额。以直营+连锁加盟模式，让成功可复制，成为越来越多中小投资者的优选项目，更多的妈妈青睐我们的产品。</p>
            </div>
        </div>
        <div class="banner-text">
            <div class="w1200">
                <p>我们的母婴产业2016年涉足母婴行业，以品牌经销为主，在强大市场的推动下，于2016年创立自己的独立品牌。公司立足于江西南昌，2年的品牌沉淀和运营经验让我们在行业中获得良好的口碑和市场份额。以直营+连锁加盟模式，让成功可复制，成为越来越多中小投资者的优选项目，更多的妈妈青睐我们的产品。</p>
            </div>
        </div>
    </div>
</template>
<script>
export default {
    data(){
        return{}
    }
}
</script>
<style scoped>
.banner{
    height: 750px;
    width: 100%;
    background: url("../img/us_banner.jpg") no-repeat;
    background-size: cover;
}
.cont{
    padding: 198px 0 280px 0;
    width: 1200px;
    margin: 0 auto;
}
.img-box{
    float: left;
    width: 730px;
    height: 640px;
    position: relative;
    padding-right: 100px;
    box-sizing: border-box;
}
.img-box img:last-child{
    position: absolute;
    right: 30px;
    bottom: 0;
}
.text{
    line-height: 45px;
    font-size: 20px;
    color: #888;
    padding-top: 130px;
}
.text p{
    line-height: 45px;
    font-size: 20px;
    color: #888;
}
.banner-text{
    height: 760px;
    width: 100%;
    background: url("../img/us_img3.png") no-repeat;
    background-size: cover;
}
.banner-text p{
    width: 446px;
    font-size: 20px;
    line-height: 45px;
    color: #888888;
    padding: 210px 0 0 55px;
    box-sizing: content-box;
}
.w1200{
    width: 1200px;
    margin: 0 auto;
}
</style>
