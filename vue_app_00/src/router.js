import Vue from 'vue'
import Router from 'vue-router'

// 引入组件
import Index from "./components/Index.vue"
import Header from "./components/Header.vue"
import LoginPhone from "./components/LoginPhone.vue"
import Login from "./components/Login.vue"
import GoodList from "./components/GoodList.vue"
import text from "./components/text.vue"
import Details from "./components/Details.vue"
import UserReg from "./components/UserReg.vue"
import Shopcart from "./components/Shopcart.vue"
import Buytoday from "./components/Buytoday.vue"
import About from "./components/About.vue"
import Information from "./components/Information.vue"

Vue.use(Router)

// 为Test组件配置访问路径
export default new Router({
  routes: [
    {path:'/', component:Header, children:[
      {path:"Index",component:Index},
      {path:"LoginPhone",component:LoginPhone},
      {path:"Login",component:Login},
      {path:"GoodList",component:GoodList},
      {path:"Details",component:Details},
      {path:"text",component:text},
      {path:"Shopcart",component:Shopcart},
      {path:"UserReg",component:UserReg},
      {path:"Buytoday",component:Buytoday},
      {path:"About",component:About},
      {path:"Information",component:Information}
    ]
  }
    
    
  ]
})
