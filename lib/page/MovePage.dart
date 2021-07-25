import 'package:flutter/material.dart';
class MovePage extends StatefulWidget {
  @override
  _MovePageState createState() => _MovePageState();
}

class _MovePageState extends State<MovePage> with SingleTickerProviderStateMixin  {


  TabController? _tabController;

  @override
  void initState() {

    super.initState();
    _tabController=new TabController(vsync:this,length:2);
  }

  @override
  Widget build(BuildContext context) {

   return DefaultTabController(
      length: 2,
      child: Scaffold(
          appBar: TabBar(
            labelColor: Colors.black,
            tabs: <Widget>[
              Tab(text: "动弹列表"),
              Tab(text: "热门动弹")
            ],
          ),
          body: TabBarView(
            children: <Widget>[        Center(child: Text("热销")),
              Center(child: Text("推荐"))],
          )),
    );
    return Scaffold(
      body:NestedScrollView(
        headerSliverBuilder: (BuildContext context,bool innerBoxIsScrolled){
          return <Widget>[
            SliverAppBar(
              bottom: TabBar(
                labelColor: Colors.black,
                controller: _tabController,
                tabs: <Widget>[
                  Tab(text: '资讯'),
                  Tab(text: '技术'),
                ],
              ),
            )
          ];
        },
      body: TabBarView(
        controller: this._tabController,
        children: <Widget>[
          Center(child: Text("热销")),
          Center(child: Text("推荐"))
        ],
      ),
      ),

    );
  }


}
