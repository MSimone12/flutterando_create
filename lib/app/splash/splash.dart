import 'package:flutter/material.dart';

class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {

  @override
  void initState() {
    super.initState();
    Future<dynamic>.delayed(Duration(seconds: 2))
    .whenComplete(() => 
      Navigator.of(context).pushReplacementNamed('/home', result: (context) => Splash()) 
    ); 
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 200,
          width: 200,
          child: Hero(
            tag: 'fisio',
            createRectTween: (Rect begin, Rect end){
              return RectTween(begin: begin, end: end);
            },
            child: Image.asset('assets/img/fisio.png', fit: BoxFit.cover,),
          ),
        ),
      ),
    );
  }
}