import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutterando_create/common/primary_button.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: PrimaryButton(
        label: "Fisioterapia",
        onPressed: () {
          Navigator.of(context).pushNamed('/fisioterapia');
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: SafeArea(
        child: Stack(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/img/background_init.png'),
                  fit: BoxFit.cover
                )
              ),
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
              child: Container(
                  decoration: BoxDecoration(color: Colors.white.withOpacity(0)),
                ),
              ),
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Container(
                height: 150,
                width: 150,
                child: Hero(
                  createRectTween: (Rect begin, Rect end) {
                    return RectTween(begin: begin, end: end);
                  },
                  tag: 'fisio',
                  child: Image.asset('assets/img/fisio.png', fit: BoxFit.cover,)
                ),
              )
            ),
          ],
        ),
      ),
    );
  }
}