import 'package:fluro/fluro.dart';
import 'package:zhongheflutter/config/fluro/router_handler.dart';
class Routes {
  static String communicateUrl="/communicate";
  static String splashUrl="/";
  static String eventUrl="/event";
  static String homeUrl="/home";
  static String personalUrl="/personal";

  static void configureRoutes(FluroRouter router){
    router.define(communicateUrl, handler: communicateHandler);
    router.define(splashUrl, handler: loginHandler);
    router.define(eventUrl, handler: eventHandler);
    router.define(homeUrl, handler: homeHandler);
    router.define(personalUrl, handler: personalHandler);
  }
}