<template>
    <div>
        <div class="title">
            <h2>母婴咨询</h2>
        </div>
        <div class="cont">
            <div class="item">
                <img src="../img/hot5.jpg" alt="">
                <div>
                    <h3 class="item-title">Lorem ipsum dolor sit amet consectetur adipisicing elit. Vel, nihil.</h3>
                    <span class="item-time">2019-4-1</span>
                    <span class="item-text">Lorem ipsum dolor sit amet consectetur adipisicing elit. Ipsa officiis voluptates quis dolor unde reiciendis blanditiis dolore nobis asperiores aliquam corrupti earum enim ea magni velit mollitia, perspiciatis, minus, porro beatae nulla ut? Esse cupiditate natus, officia corporis explicabo impedit praesentium obcaecati atque sed aut numquam voluptate, magnam modi aspernatur eos! Ab accusantium molestias, nam vero rerum minima nisi doloribus, a obcaecati magnam at tenetur! Deserunt eos aperiam ipsam ipsum ut nobis facere fugiat corrupti esse blanditiis iure quas architecto excepturi veritatis, expedita nulla sit. Accusamus distinctio odio minima necessitatibus iste vitae quam exercitationem soluta earum aperiam, illum maxime perferendis!</span>
                </div>
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
.title{
    width: 1200px;
    text-align: center;
    margin:0 auto;
    padding:60px 0;
}
h2{
    font-weight: 400;
}
.cont{
    width: 1200px;
    margin: 0 auto;
    padding:0 100px;
}
.item{
    border:1px solid #e2e2e2;
    border-radius: 20px;
    display: flex;
}
.item img{
    border-radius: 20px;
}
.item span{
    display: block;
    padding: 20px;
}
.item h3{
    display: block;
    padding: 20px;
    margin: 0;
}
.item .item-text{
    overflow:hidden;
    text-overflow:ellipsis;
    white-space:nowrap;
    width: 648px;
}
</style>
