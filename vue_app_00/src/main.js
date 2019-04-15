import Vue from 'vue'
import Vuex from 'vuex'
import App from './App.vue'
import router from './router'
import'mint-ui/lib/style.css'

Vue.config.productionTip = false
//5: 设置请求的根路径 
//Vue.http.options.root = "http://127.0.0.1/vue_ser/";
//6:全局设置post 时候表音的数据组织格式为 application/x-www-form-urlencoded
//Vue.http.options.emulateJSON = true;
// 导入 MUI 的样式表， 和 Bootstrap 用法没有差别
import './lib/mui/css/mui.css'
// 导入 MUI 的样式表，扩展图标样式，购物车图标
// 还需要加载图标字体文件
import './lib/mui/css/icons-extra.css'

// 引入Header组件
import {Header,Button} from "mint-ui"

//注册Header组件
Vue.component(Header.name,Header)
Vue.component(Button.name,Button)

// 引入轮播图组件
import {Swipe,SwipeItem} from "mint-ui"
//注册轮播图组件
Vue.component(Swipe.name,Swipe)
Vue.component(SwipeItem.name,SwipeItem)

//引入tabbar组件
import { Tabbar, TabItem } from 'mint-ui';

Vue.component(Tabbar.name, Tabbar);
Vue.component(TabItem.name, TabItem);

//引入axios库
import axios from "axios";
//配置跨域访问选项
axios.defaults.withCredentials=true;
//将axios配置vue实例属性
Vue.prototype.axios=axios;
Vue.use(Vuex)
//    -将store对象与vue 绑定       
  var store = new Vuex.Store({
          state:{
            name:sessionStorage.getItem('name') || "登录",
            isLogin:sessionStorage.getItem('isLogin') || false
        },   // #全局共享数据
          mutations:{
          
          },      
          getters:{
            getUname(state){  // #获取购物车数据函数
              return state.name;
            },
            getLogin(state){
              return state.isLogin;
            }
          }           
        })
new Vue({
  router,
  store,
  render: h => h(App)
}).$mount('#app')
