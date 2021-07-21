import 'package:flutter/material.dart';
import 'package:zhongheflutter/config/fluro/routes.dart';
import 'package:zhongheflutter/config/fluro/application.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:zhongheflutter/utils/myColors.dart';

import 'config/dio/http_client.dart';
import 'config/dio/http_config.dart';
void main() {
  Routes.configureRoutes( Application.router);
  HttpConfig dioConfig =
  HttpConfig(baseUrl: "https://gank.io/",);
  // HttpConfig(baseUrl: "https://gank.io/", proxy: "192.168.2.249:8888");
  HttpClient client = HttpClient(dioConfig: dioConfig);
  Get.put<HttpClient>(client);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: Size(360,960),
        allowFontScaling: false,
        builder: ()=>   MaterialApp(
          title: 'Flutter Demo',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            primaryColor:  Color(0xFF63CA6C),
          ),
          onGenerateRoute: Application.router.generator,
        ));


  }
}
