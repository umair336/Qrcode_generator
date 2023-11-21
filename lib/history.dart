import 'package:flutter/material.dart';
import 'package:flutter_application_2/Barcode_ganerator.dart';
import 'package:flutter_application_2/constraints/constraints.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HistoryScreen extends StatefulWidget {
  const HistoryScreen({super.key});

  @override
  State<HistoryScreen> createState() => _HistoryScreenState();
}

class _HistoryScreenState extends State<HistoryScreen> {
  // SharedPreferences sp= await SharedPreferences.getInstance();
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text("History"),
      backgroundColor: appbarcolor,toolbarHeight: 100,
      ),
      body:Column(children: [
        Expanded(
          child: ListView.builder(
            itemCount: historyList.length,
            itemBuilder:(context, index) => ListTile(
            leading: Text(historyList[index].toString()),
            title: Text(historyList[index].toString()),
          ),),
        )
      ]) ,
    );
  }
}