import 'package:barcode_widget/barcode_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_2/Barcode_ganerator.dart';
import 'package:flutter_application_2/constraints/constraints.dart';

class HistoryScreen extends StatefulWidget {
  const HistoryScreen({super.key});

  @override
  State<HistoryScreen> createState() => _HistoryScreenState();
}

class _HistoryScreenState extends State<HistoryScreen> {
  // SharedPreferences sp= await SharedPreferences.getInstance();
  int index= 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
        title: Text("History"),
        backgroundColor: appbarcolor,toolbarHeight: 100,
        ),
        body:Column(children: [
          Expanded(
            child: ListView.builder(
              itemCount: historyList.length,
              itemBuilder:(context, index) => ListTile(
              leading: CircleAvatar(
                  child: Text((index + 1).toString())),
              title: Text(historyList[index].toString()),
            ),),
          )
        ]) ,
      ),
    );
  }
}