import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_2/Auth/SignUp.dart';
import 'package:flutter_application_2/Barcode_ganerator.dart';
import 'package:flutter_application_2/Settings.dart';
import 'package:flutter_application_2/constraints/constraints.dart';
import 'package:flutter_application_2/history.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:get/get.dart';

class Scanning_code extends StatefulWidget {
  const Scanning_code({super.key});
  @override
  State<Scanning_code> createState() => _Scanning_codeState();
}
class _Scanning_codeState extends State<Scanning_code> {

    Color customColor = Color(0xff8592a1).withOpacity(0.1);
  String ?scanResult;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(backgroundColor: Colors.white,
      appBar: AppBar(backgroundColor: appbarcolor,
      title: Text("BarcodeGanerator",style: TextStyle(fontSize: 20),),toolbarHeight: 100,),
        body:
         Column(
          children: [SizedBox(height: 50,),
            Card(color: Colors.white70,
              child: ListTile( 
                onTap:() {
                  Get.to(BarcodeGanerator());
                },
                trailing: Icon(Icons.barcode_reader),
                title: Text("Barcode Ganerator"),
              ),
            ),
            SizedBox(height: 30,),
            Card(color: Colors.white70,
              child: ListTile(
                onTap: QrcodeScan,
              trailing: Icon(Icons.qr_code_scanner),
                title: Text("QR & Barcode scanner"),
            
              ),
            ),
            SizedBox(height: 50,),
        const    Text("More",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
            SizedBox(height: 50,),
            Container(
              height: 120,
              width: 270,
              decoration: BoxDecoration(
                color: Colors.white54
              ),
              child: Card(color: Colors.white70,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                    GestureDetector(onTap: () {
                      Get.to(SettingsScreen());
                    },      
                      child: Icon(Icons.settings)),
                    Text("Settings")
                  ],), SizedBox(width: 35,),
                    Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                    GestureDetector(
                      onTap: () {
                        Get.to(HistoryScreen());
                      },
                      child: Icon(Icons.history)),
                    Text("History")
                  ],)
                ],),
              ),
            ),
          ],
        ),
      ),
    );
  }
  Future QrcodeScan()async{
     String scanResult;
try {
    scanResult=await FlutterBarcodeScanner.scanBarcode("#ff6666", "cancel", true, ScanMode.BARCODE);

}on PlatformException{
  scanResult="Faild to get the plateform version";
}
if(!mounted)return
setState(() =>AlertDialog(title: Text(scanResult==null? 'scan a code': 'scan a result : $scanResult'
),));
}

}