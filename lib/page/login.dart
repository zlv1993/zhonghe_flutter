import 'package:smart_flare/smart_flare.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => new _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String _animateStatus="idle";
  List<String> animates=["idle","test","fail","success","hands_up"];
  int _toogleIndex=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:MyHomePage()

    );

  }

  Widget buildEle(BuildContext context)  {
    return Stack(
      children: [
        Positioned(
            right: 60,
            top:60,
            child: FlatButton(onPressed:(){
              if(_toogleIndex==animates.length-1){

                _toogleIndex=0;
              }else{
                _toogleIndex++;
              }
              setState(() {
                _animateStatus=animates[_toogleIndex];
              });

            },
                child: Text("切换状态")))

      ],
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
      height:300.h,
      padding: EdgeInsets.symmetric(vertical: 40.0.h,horizontal: 20.0.w),
      child: Column(
        children: [

        TextFormField(
        maxLines: 1,
        keyboardType: TextInputType.emailAddress,
        autofocus: false,
        style: TextStyle(fontSize: 15),
        decoration: new InputDecoration(
            hintText: '请输入帐号',
          contentPadding: new EdgeInsets.symmetric(vertical:5.0, horizontal: 10.0), //内边距设置

           //border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),//圆角设置
           ),
        ),
        Container(
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
              contentPadding: new EdgeInsets.symmetric(vertical:5.0, horizontal: 10.0), //内边距设置
            ),
          ),
          Container(
            height: 40.h,
          ),
          SizedBox(
            width: double.infinity,
            height: 45.h,
            child: RaisedButton(
                onPressed: (){},
                color: Colors.amber,
                highlightColor: Colors.amber[700],
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