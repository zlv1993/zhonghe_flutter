import 'package:fluro/fluro.dart';
import 'package:zhongheflutter/page/communicate.dart';
import 'package:zhongheflutter/page/event.dart';
import 'package:zhongheflutter/page/home.dart';
import 'package:zhongheflutter/page/personal.dart';
import 'package:zhongheflutter/page/splash.dart';


//通讯中心
var communicateHandler = Handler(handlerFunc: ( context, params) {
    return Communicate();
  },
);
//事件
var eventHandler = Handler(
  handlerFunc: (context,params) {
    return Event();
  },
);
//首页
var homeHandler = Handler(
  handlerFunc: ( context,params) {
    return Home();
  },
);
//个人中心
var personalHandler = Handler(
  handlerFunc: ( context,  params) {
    return Personal();
  },
);

//闪屏页
var splashHandler = Handler(
  handlerFunc: ( context,params) {
    return Splash();
  },
);