import 'package:flutter/material.dart';

const aBook = 'Avenir Book' ;
const aHeavy = 'Avenir Heavy' ;
const aRoman = 'Avenir Roman' ;
const aLight = 'Avenir Light' ;
const aBlack = 'Avenir Black' ;
const aMedium = 'Avenir Medium' ;


 const  primaryColor =  Color(0xffFF6400);
 const  primaryTextTextColor =  Color(0xff01000D);
 const  secondaryTextColor =  Color(0xff8F92A1);
 const  hintColor =  Color(0xff8F92A1);
const  fbColor =  Color(0xff2684FB);
const appbarcolor=Color(0xFF001F3F);



class Themes{
  final lightTheme= ThemeData.light().copyWith(
    primaryColor: Colors.blueGrey[300],
          appBarTheme: AppBarTheme(color: fbColor ),
textTheme: const TextTheme(
headline1: TextStyle(color: Colors.black),),
    );

    final darkTheme= ThemeData.dark().copyWith(
      primaryColor: Colors.blueGrey[800],
                appBarTheme: AppBarTheme(color: fbColor ),
textTheme: const TextTheme(
headline1: TextStyle(color: Colors.black),),
    );
}

class HistoryList{
  String controller= '';
  String data='';
  HistoryList({required this.controller,required this.data});
}