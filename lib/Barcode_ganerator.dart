import 'package:barcode_widget/barcode_widget.dart';
// import 'lib.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_2/constraints/constraints.dart';
import 'package:screenshot/screenshot.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:image_gallery_saver/image_gallery_saver.dart';

String title = '';
List<String> historyList = [];
TextEditingController controller = TextEditingController();
ScreenshotController screenshotcontroller = ScreenshotController();

class BarcodeGanerator extends StatefulWidget {
  const BarcodeGanerator({super.key});
  @override
  State<BarcodeGanerator> createState() => _BarcodeGaneratorState();
}

class _BarcodeGaneratorState extends State<BarcodeGanerator> {
  // final String website = '';
  // Future<void> captureAndSaveImage() async {
  //   final Uint8List = await screenshotcontroller.capture();
  //   if (Uint8List != null) {
  //     final PermissionStatus status = await Permission.storage.request();
  //     if (status.isGranted) {
  //       final result = await ImageGallerySaver.saveImage(Uint8List);
  //       if (result["isSuccess"]) {
  //         print("image save succesfully");
  //       } else {
  //         print("Failed to save image:${result['error']}");
  //       }
  //     } else {
  //       print("permission is denied");
  //     }
  //   }
  // }
  // @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//     getvalue();
//   }
//   Color customColor = Color(0xff8592a1);
//       int i = 0;
// void getvalue()async{

// SharedPreferences sp= await SharedPreferences.getInstance();

// // List<String> data= sp.getStringList("data").toList();

// historyList.add(sp.getStringList("data").toString());
// }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: appbarcolor,
          toolbarHeight: 100,
          title: Text("BarCode Scanner"),
        ),
        body: Center(
            child: SingleChildScrollView(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
              Card(
                color: Colors.white,
                elevation: 6,
                shadowColor: Colors.amber,
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Screenshot(
                    controller: screenshotcontroller,
                    child: BarcodeWidget(
                      width: 200,
                      height: 200,
                      drawText: false,
                      backgroundColor: Colors.amber,
                      barcode: Barcode.code128(),
                      data: controller.text,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: TextField(
                  onSubmitted: (_) => setState(() {}),
                  controller: controller,
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                  decoration: InputDecoration(
                      hintText: "Enter the data",
                      hintStyle: TextStyle(
                        color: Colors.grey,
                      ),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: BorderSide(color: secondaryTextColor))),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.amber,
                    onPrimary: Colors.black,
                  ),
                  onPressed: () async {
                    // await captureAndSaveImage();
                    // HistoryList model = HistoryList(
                    // controller:controller.text, data:controller.text );
                    historyList.add(controller.text);
                    // historyList.add(screenshotcontroller.toString());
                    SharedPreferences sp =
                        await SharedPreferences.getInstance();
                    sp.setStringList('data', historyList);
                    // title=sp.getString("data").toString();
                    print(sp.getStringList("data"));
                  },
                  icon: Icon(Icons.save),
                  label: Text("Save")),
            ]))));
  }
}
