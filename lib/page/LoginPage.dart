import 'package:smart_flare/smart_flare.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:zhongheflutter/config/fluro/navigator_util.dart';
class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => new _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String _animateStatus="idle";
  List<String> animates=["idle","test","fail","success"];
  int _toogleIndex=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          color: Theme.of(context).primaryColor,
        ),
        child: Center(
          child: Column(
          mainAxisAlignment:MainAxisAlignment.center,
          children: [
            SizedBox(
              height:300.h,
              width:200.w,
              child: MyHomePage(),
            )
            ,
            _container(context)
          ],
        ),)
      )



    );

  }



  Widget _container(BuildContext context){
    return UnconstrainedBox(
        child:Container(
      decoration: BoxDecoration(
          color:Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(6))
      ),
      width: 300.w,
      height:320.h,
      padding: EdgeInsets.symmetric(vertical: 20.0.h,horizontal: 20.0.w),
      child: Column(
        children: [

        TextFormField(
        maxLines: 1,
        keyboardType: TextInputType.emailAddress,
        autofocus: false,
        style: TextStyle(fontSize: 15),
        decoration: new InputDecoration(
            hintText: '请输入帐号',
           contentPadding: new EdgeInsets.symmetric(horizontal: 10.0), //内边距设置
           //border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),//圆角设置
           ),
        ),
        SizedBox(
          height: 20.h,
        ), 
          TextFormField(
            maxLines: 1,
            keyboardType: TextInputType.emailAddress,
            autofocus: false,
            obscureText: true,
            style: TextStyle(fontSize: 15),
            decoration: new InputDecoration(
              hintText: '请输入密码',
              contentPadding: new EdgeInsets.symmetric(horizontal: 10.0), //内边距设置
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          SizedBox(
            width: double.infinity,
            height: 45.h,
            child: RaisedButton(
                onPressed: (){
                  NavigatorUtil.detailPage(context,url:'/home');
                },
                color: Theme.of(context).primaryColor,
                shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
                child:Text("提交")
            ),
          )

        ],
      ),

    ) )  ;
  }


}



class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return new SmartFlareActor(
      filename: 'assets/teddy_wrong_password.flr',
      startingAnimation: 'idle',
    );

  }
}