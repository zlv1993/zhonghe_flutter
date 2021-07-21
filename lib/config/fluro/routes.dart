import 'package:fluro/fluro.dart';
import 'package:zhongheflutter/config/fluro/router_handler.dart';
class Routes {

  static String splashUrl="/";

  static String homeUrl="/home";
  static void configureRoutes(FluroRouter router){

    router.define(splashUrl, handler: loginHandler);
    router.define(homeUrl, handler: homeHandler);
  }
}