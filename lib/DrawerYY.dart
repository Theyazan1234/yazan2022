import 'package:flutter/material.dart';
import 'package:yazannn/Calculator12.dart';
import 'package:yazannn/TOpag1.dart';
import 'package:yazannn/Widget3.dart';
class DrawreHo extends StatelessWidget {
  const DrawreHo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("yazan"),
        actions: [
          IconButton(icon: Icon(Icons.exit_to_app),onPressed: (){},),
          IconButton(icon: Icon(Icons.alarm),onPressed: (){},),
        ],
        backgroundColor: Color.fromARGB(222, 231, 111,666),
        centerTitle: true,

      ),
      drawer: Drawer(
        child: ListView(children: [

          UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                backgroundImage:AssetImage("image/aq.jpg"),),
              accountName: Text("yazan"),
              accountEmail:Text("www.yazan@gmail.com")),
          ListTile(
            title: Text("الصفحة الرائسية"),
            leading: Icon(Icons.home),
            onTap: (){

            },

          ),
          ListTile(
            title: Text("تسجيل الدخول"),
            leading: Icon(Icons.login),
            onTap: (){

            },
          ),
          ListTile(
            title: Text("TO page"),
            onTap: (){
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => topag()));

            },
          ),

          ListTile(
            title: Text("LAlertWidget"),
            onTap: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) =>LAlertWidget() ));

            },
          ),


          ListTile(
            title: Text("اله حاسبة"),
            leading: Icon(Icons.calculate_sharp),
            onTap: (){
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => Calculator()));
            },
          ),
          ListTile(
            title: Text("تسجيل خروج"),
            leading: Icon(Icons.exit_to_app),
            onTap: (){

            },
          ),



        ],

        ),
      ),

    );

  }
}
