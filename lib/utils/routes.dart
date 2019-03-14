import 'package:flutter/material.dart';
import 'package:flutterando_create/app/fisioterapia/fisioterapia.dart';
import 'package:flutterando_create/app/home/home.dart';
import 'package:flutterando_create/app/splash/splash.dart';

Map<String, WidgetBuilder> buidNavigationRoutes(BuildContext context) => {
    '/': (context) => Splash(),
    '/home': (context) => Home(),
    '/fisioterapia': (context) => Fisioterapia(),
  };