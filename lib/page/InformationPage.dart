import 'dart:io';

import 'package:flutter/material.dart';
class InformationPage extends StatefulWidget {
  @override
  _InformationPageState createState() => _InformationPageState();
}

class _InformationPageState extends State<InformationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context,bool innerBoxIsScrolled){
          return <Widget>[
            SliverAppBar(
              expandedHeight: 180,
              pinned: false,
              flexibleSpace: _renderHead(),
            )
          ];
        },
        body: ListView.builder(
            itemBuilder: (BuildContext context,int index){
          return _item();
        },
          itemCount: 30,
        ),
      ),
    );
  }

  Widget _renderHead(){
     return Container(
       height: 180,
       width: double.infinity,
       decoration: BoxDecoration(
         color: Colors.cyanAccent
       ),
       child: Stack(

         children: [
             SizedBox(
               height: double.infinity,
               width: double.infinity,
               child:  Image.asset("images/banner.jpeg",fit: BoxFit.cover),
             )
             ,
             Container(
               height: 42,
               padding: EdgeInsets.symmetric(vertical: 8.0,horizontal: 10),
               width: double.infinity,
               decoration: BoxDecoration(
                 color: Color(0x8c000000)
               ),
               child: Text(
                   "谷歌以开放，'.app'顶级域名注册：需要https加密",
                 textAlign: TextAlign.justify,
                 overflow: TextOverflow.ellipsis,
                 maxLines: 1,
                 style: TextStyle(
                   color: Colors.white,
                   fontSize: 16.0

                 ),
               ),
             )
         ],
       ),
     );




  }


  Widget _item(){
    return Container(
      height: 100,

      child: Row(
        children: [
          _expendItem(),
          _imageItem()
        ],
      ),
    ) ;
  }


  Widget _expendItem(){
    return Expanded(
        child: Column(
          children: [
            SizedBox(
              height: 20.0,
            ),
            Text(
                "这篇文章主要介绍了Flutter 透明状态栏及字体颜色的设置方法，本文通过实例代码给大家介绍的非常详细，对大家的学习或工作具有一定的参考借鉴价值,需要的朋友可以参考下"
                ,maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(

              ),
            ),

            SizedBox(
              height: 20.0,
            ),
            Row(
              children: [
                Container(
                  height: 20,
                  width: 20,
                  margin: EdgeInsets.fromLTRB(0, 0, 10, 0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(6))
                  ),
                  child:    Image.asset("images/ic_logo.jpeg",fit: BoxFit.cover,) ,
                ),
                Text("2018-05-02",style: TextStyle(
                  color: Color(0xff333333)
                ),),
                Expanded(child: Text(""),),
                Text("34",style: TextStyle(
                    color: Color(0xff333333)
                ),),
              ],
            )
          ],
        )
    );
  }
  Widget _imageItem(){
    return Container(
      width: 120,
      height: 80,

      color: Colors.grey,
      margin: EdgeInsets.all(10.0),
      child: Image.asset("images/cover_img.jpg",fit: BoxFit.contain,),
    ) ;
  }


}
