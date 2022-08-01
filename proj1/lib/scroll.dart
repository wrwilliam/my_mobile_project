

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Scroll_Image extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
        title: 'Yellow Mountain',
        theme: new ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: MyHomePage()
    );
  }
}

class MyHomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Yellow Mountain'),
      ),
      body: Center(
        child: CircleImages(),
      ),
    );
  }

}

class CircleImages extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return CircleWidgets();
  }
}

class CircleWidgets extends State<CircleImages>{
  @override
  Widget build(BuildContext context) {
    List<Widget> widgets = [];
    for(var x =0 ; x < 10; x ++){
      widgets.add(
        Container(
          height: 60.0,
          width: 60.0,
          margin: EdgeInsets.all(6.0),
          decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                    color: Color.fromARGB(100, 0, 0, 0),
                    blurRadius: 5.0,
                    offset: Offset(5.0, 5.0)
                )
              ],
              border: Border.all(
                  width: 2.0,
                  style: BorderStyle.solid,
                  color: Color.fromARGB(255, 0, 0, 0)
              ),
              borderRadius: BorderRadius.circular(200.0),
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage("https://www.forestry.gov.cn/html/lssbs/lssbs_18/20200727133231016883200/20200727133424032595585.jpg")
              )
          ),
        ),
      );
    }
    return Container(
      height: 80.0,

      child: ListView(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.all(5.0),
        children: widgets,
      ),
    );
  }
}
