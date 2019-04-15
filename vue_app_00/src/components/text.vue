<template>
    <div>
        <h1>第一单元</h1>
        <span><h2>1.</h2>He sometimes ____ in bed until lunchtime.</span>
        <br>
        <div id="d1">
        <div v-for="(item,i) of q1" :key="i" >
            <input type="radio" :value="item.qid" name="q1"  :data-i="i" @change="changes1">{{item.option1}}
        </div>
        <div :class="show"><h2>解析:</h2> <h4>{{q1[0].questionResolve}}</h4></div>
        <span><h2>2.</h2>Light ____ faster than sound.</span>
        <br>
        <div v-for="(item,k) of q2">
            <input type="radio" :value="item.qid" name="q2"  :data-k="k" @change="changes2">{{item.option1}}
        </div>
        <div :class="show"><h2>解析:</h2> <h4>{{q2[0].questionResolve}}</h4></div>
        <span><h2>3.</h2>My parents ____ in the kitchen now.</span>
        <br>
        <div v-for="(item,j) of q1" >
            <input type="radio" :value="item.qid" name="q3"  :data-j="j" @change="changes3">{{item.option1}}
        </div>
        <div :class="show"><h2>解析:</h2> <h4>{{q3[0].questionResolve}}</h4></div>
        <div>
            <button @click="put">提交</button>
        </div>
        </div>
    </div>
</template>
 
 <script>
 export default {
     data(){
         return{
             arr:[],
             q1:[],
             q2:[],
             q3:[],
             a1:"",
             a2:"",
             a3:"",
             show:"none"
         }
     },
     created(){
         this.get();
     },
     methods:{
         changes1(e){
            var rs=e.target.checked;
            var i=e.target.dataset.i;
            if(rs)this.a1=i;
         },
         changes2(e){
            var rs=e.target.checked;
            var k=e.target.dataset.k;
            if(rs)this.a2=k;
         },
         changes3(e){
            var rs=e.target.checked;
            var j=e.target.dataset.j;
            if(rs)this.a3=j;
         },
         get(){
             var url="http://127.0.0.1:3000/get";
             this.axios.get(url).then(result=>{
                 this.arr=result.data.data;
                 console.log(this.arr)
                 for(var i=0;i<13;i++){
                    if(i<4){
                        this.q1.push(result.data.data[i])
                        }
                    else if(i<8){
                        this.q2.push(result.data.data[i])
                    }else{
                        this.q3.push(result.data.data[i])
                    }
                 }
                 console.log(this.q1)
             })
         },
         put(){
             console.log(this.a1,this.a2,this.a3)
                var q1=document.getElementsByName("q1");
                var q2=document.getElementsByName("q2");
                var q3=document.getElementsByName("q3");
             if(this.q1[this.a1].rightAnswer==this.q1[this.a1].qid){
                 q1[this.a1].parentElement.className="true";
             }else{
                 q1[this.a1].parentElement.className="false";
                 q1[this.q1[0].rightAnswer-1].parentElement.className="true";
                 q1[this.q1[0].rightAnswer-1].checked;
             }
             if(this.q2[this.a2].rightAnswer==this.q2[this.a2].qid){
                q2[this.a2].parentElement.className="true";
             }else{
                 q2[this.a2].parentElement.className="false";
                 q2[this.q2[0].rightAnswer-1].parentElement.className="true";
                 q2[this.q2[0].rightAnswer-1].checked;
             }
             if(this.q3[this.a3].rightAnswer==this.q3[this.a3].qid){
                q3[this.a3].parentElement.className="true"
             }else{
                 q3[this.a3].parentElement.className="false";
                 q3[this.q3[0].rightAnswer-1].parentElement.className="true";
                 q3[this.q3[0].rightAnswer-1].checked;
             }
             
             this.show="show";
         }
     }
 }
 </script>
 
<style>
    h2{
        display: inline-block;
    }
    .true{
        background: lightgreen;
    }
    .false{
        background: rgb(241, 38, 38);
    }
    .none{
        display: none;
    }
    .show{
        display: block;
        background: rgb(228, 255, 212);
        border:1px solid lightgreen;
    }
    #d1 div{
        padding-left:15px;
        border-radius:10px;
    }
    #d1 div h2{
        color:rgb(20, 153, 20);
    }
    #d1 div h4{
        color:rgb(20, 153, 20);
    }
</style>
