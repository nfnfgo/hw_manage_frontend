// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';

var pri_color = Colors.cyan.shade700;

ThemeData ThemeCyan = ThemeData(
    // primarySwatch: Colors.red,
    primaryColor: pri_color,
    secondaryHeaderColor: Colors.cyan.shade100,
    // hoverColor: Colors.red.shade800,
    // focusColor: Colors.red.shade300,
    colorScheme: ColorScheme.fromSeed(seedColor: pri_color, primary: pri_color),
    // colorSchemeSeed: Colors.red.shade300,
    // textTheme: TextTheme(subtitle1: TextStyle(fontSize: 17)),
    inputDecorationTheme: InputDecorationTheme(
        contentPadding: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
        filled: true,
        border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(50)),
        focusedBorder: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(50))));
