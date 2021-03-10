import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle.light.copyWith(
        statusBarColor: Colors.lightBlueAccent[100],
        systemNavigationBarColor: Colors.lightBlueAccent[100],
        systemNavigationBarIconBrightness: Brightness.dark),
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(child: Launch()),
    );
  }
}

class Launch extends StatefulWidget {
  @override
  _LaunchState createState() => _LaunchState();
}

class _LaunchState extends State<Launch> with SingleTickerProviderStateMixin {
  AnimationController controller;

  @override
  void initState() {
    controller = AnimationController(
        vsync: this, duration: Duration(seconds: 1, milliseconds: 30));
    controller.forward();
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 1,
              child: ListView(
                children: <Widget>[
                  FadeTransition(
                    opacity: controller,
                    child: Row(
                      children: <Widget>[
                        Container(
                          width: 70,
                          margin: EdgeInsets.only(
                              left: 40, top: 40, right: 20, bottom: 30),
                          padding: EdgeInsets.only(bottom: 10),
                          child: Text(
                            "Login",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w300),
                            textAlign: TextAlign.center,
                          ),
                          decoration: BoxDecoration(
                            border: Border(
                              bottom: BorderSide(
                                  color: Colors.lightBlueAccent, width: 2.5),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(
                              left: 0, top: 40, right: 20, bottom: 30),
                          padding: EdgeInsets.only(bottom: 10),
                          child: Text(
                            "SignUp",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w300),
                          ),
                          decoration: BoxDecoration(
                            border: Border(
                              bottom: BorderSide(
                                  color: Colors.transparent, width: 2),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  FadeTransition(
                    opacity: controller,
                    child: Container(
                      padding: EdgeInsets.only(top: 20),
                      alignment: Alignment.center,
                      child: RichText(
                        text: TextSpan(
                            text: 'Welcome To\n',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 30,
                                fontWeight: FontWeight.w300),
                            children: [
                              TextSpan(
                                  text: 'Drive',
                                  style: TextStyle(
                                      color: Colors.lightBlueAccent,
                                      fontSize: 60,
                                      fontWeight: FontWeight.w100,
                                      letterSpacing: 0)),
                              TextSpan(
                                  text: '.',
                                  style: TextStyle(
                                      color: Colors.lightBlueAccent,
                                      fontSize: 60,
                                      fontWeight: FontWeight.w300,
                                      letterSpacing: 0))
                            ]),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 40, right: 40, top: 70),
                    child: TextField(
                      decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.person_outline,
                            color: Colors.lightBlueAccent[400],
                          ),
                          hintText: 'Username',
                          hintStyle: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w300,
                              fontSize: 20),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(
                                  color: Colors.lightBlueAccent, width: 1)),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(
                                  color: Colors.lightBlueAccent, width: 1))),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 40, right: 40, top: 20),
                    child: TextField(
                      decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.lock_outline,
                            color: Colors.lightBlueAccent[400],
                          ),
                          hintText: 'Password',
                          hintStyle: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w300,
                              fontSize: 20),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(
                                  color: Colors.lightBlueAccent, width: 1)),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(
                                  color: Colors.lightBlueAccent, width: 1))),
                    ),
                  ),
                  FadeTransition(
                    opacity: controller,
                    child: Container(
                      padding: EdgeInsets.only(left: 40, top: 15),
                      child: Text(
                        'Forgot Password?',
                        style: TextStyle(),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 70),
              child: Icon(
                Icons.chevron_right,
                size: 50,
                color: Colors.lightBlueAccent[400],
              ),
              height: 100,
              width: 100,
            )
          ],
        ),
      ),
    );
  }
}
