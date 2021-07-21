import 'package:flutter/material.dart';
import 'InformationPage.dart';
import 'MovePage.dart';
import 'FoundPage.dart';
import 'PersonalPage.dart';
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex=0;
  List<Widget> pages = [InformationPage(),MovePage(),FoundPage(),PersonalPage() ];
  List<BottomNavigationBarItem> iconItems=[];
  @override
  void initState() {
    iconItems=[
      BottomNavigationBarItem(icon: getTabImage('images/ic_nav_news_normal.png'),activeIcon:getTabImage('images/ic_nav_news_actived.png'),label: "资讯"),
      BottomNavigationBarItem(icon: getTabImage('images/ic_nav_tweet_normal.png'),activeIcon:getTabImage('images/ic_nav_tweet_actived.png'),label: "动弹"),
      BottomNavigationBarItem(icon: getTabImage('images/ic_nav_discover_normal.png'),activeIcon:getTabImage('images/ic_nav_discover_actived.png'),label: "发现"),
      BottomNavigationBarItem(icon: getTabImage('images/ic_nav_my_normal.png'),activeIcon:getTabImage('images/ic_nav_my_pressed.png'),label: "我的"),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text("发现"),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: iconItems,
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        fixedColor: Theme.of(context).primaryColor,
        onTap: (int index){
          setState(() {
            _currentIndex=index;
          });
        },
      ) ,
      body: pages[_currentIndex],
      drawer:MyDraw() ,
    );
  }

  Image getTabImage(path) {
    return Image.asset(path, width: 20.0, height: 20.0);
  }

}

class MyDraw extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text("抽屉"),
    );
  }
}
