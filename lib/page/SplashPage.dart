import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zhongheflutter/config/dio/http_client.dart';
import 'package:zhongheflutter/config/dio/http_response.dart';

class Splash extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<Splash> {
  late HttpClient dio;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(60.0),
        child: TextButton(
          onPressed: () {
            get();
          },
          child: Text('Get'),
        ),
      )
    );
  }

  @override
  void initState() {
    super.initState();
    dio = Get.find<HttpClient>();
  }
  void get() async {
    HttpResponse appResponse = await dio.get("api/v2/banners");
    if (appResponse.ok) {
      debugPrint("====" + appResponse.data.toString());
    } else {
      debugPrint("====" + appResponse.error.toString());
    }
  }
}


