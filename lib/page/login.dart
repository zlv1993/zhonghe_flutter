import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class LoginPage extends StatefulWidget {
  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<LoginPage> {
  String _animateStatus="idle";
  List<String> animates=["idle","test","fail","success","hands_up"];
  int _toogleIndex=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: buildEle(context)
    );

  }

  Widget buildEle(BuildContext context)  {
    return Stack(
      children: [
        FlareActor( "assets/Teddy.flr", alignment:Alignment.center,  fit:BoxFit.contain, animation:_animateStatus),
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
}