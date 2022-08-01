import 'package:flutter/material.dart';
import './scroll.dart';
import 'form.dart';
import 'profile.dart';
void main() {
  runApp(MyApp());}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
   return MaterialApp(
     home: Tabs()
     );

  }
}

class Tabs extends StatefulWidget{
  Tabs();
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _TabsState();
  }
}
class _TabsState extends State<Tabs>{
  List pages=[
    HomePage(),
    FormPage(),
    ProfilePage()
  ];
  int _currentIndex=0;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      // appBar: AppBar(title: Text('GlobeSister travels')),
      body: pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: this._currentIndex,
        onTap: (int index){
          setState(() {
            this._currentIndex=index;
          });
        },
        iconSize: 30,
        fixedColor: Colors.blue[600],
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
            label: 'Images',

          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.info),
            label: 'Info',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          )
        ],
      ),
    );

  }
}

class HomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
child: Scroll_Image(),
    );
  }
  
}




class FormPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
  return Container(
child: Forms(),
  );
  }
  
}
class ProfilePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
   return Container(
child: Profile(),
   );
  }
  
}
