import 'package:fluro/fluro.dart';

import 'package:zhongheflutter/page/SplashPage.dart';
import 'package:zhongheflutter/page/LoginPage.dart';
import 'package:zhongheflutter/page/HomePage.dart';


//闪屏页
var splashHandler = Handler(
  handlerFunc: ( context,params) {
    return Splash();
  },
);
//闪屏页
var loginHandler = Handler(
  handlerFunc: ( context,params) {
    return LoginPage();
  },
);
//闪屏页
var homeHandler = Handler(
  handlerFunc: ( context,params) {
    return HomePage ();
  },
);