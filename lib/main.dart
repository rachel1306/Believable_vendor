import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  final _email=TextEditingController(),_password=TextEditingController();

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Text('LOGIN'),
            Container(
              height: 150,
              child: Padding(
                padding: EdgeInsets.only(left: 15,top: 100),
                child: TextField(
                  controller: _email,
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'E-mail ID',
                      hintStyle: TextStyle(
                        color: Color(0xFF555555),
                      ),
                      prefixIcon: Icon(Icons.email_outlined,color: Color(0xFF555555),)
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(right: 20),
              height: 50,
              child: Padding(
                padding: EdgeInsets.only(left: 15,),
                child: TextField(
                  controller: _password,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Password',
                    hintStyle: TextStyle(
                      color: Color(0xFF555555),
                    ),
                    prefixIcon: Icon(Icons.lock,color: Color(0xFF555555),),
                    suffixIcon: Icon(Icons.remove_red_eye_outlined),
                  ),
                  obscureText: true,
                ),
              ),
            ),
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
