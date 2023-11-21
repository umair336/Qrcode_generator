import 'package:flutter/material.dart';
import 'package:flutter_application_2/constraints/constraints.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Settings"),
      backgroundColor: appbarcolor,toolbarHeight: 100,
      ),
      body: Column(
        children: [
          SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(color: Colors.white70,
                  child: ListTile(
                    title: Text("Theme Color"),
                    trailing: IconButton(
                      onPressed:(){
                      Get.changeTheme(
                        Get.isDarkMode ? ThemeData.light(): ThemeData.dark()
                      );
                    }
                     , icon: Icon(Icons.dark_mode
                      )),
                ),
              ),),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(color: Colors.white70,
                  child: ListTile(
                    title: Text("Font size"),
                    trailing: Icon(Icons.font_download),
                  ),
                ),
              ),
                // SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(color: Colors.white70,
                  child: ListTile(
                    title: Text("clear Cashe"),
                    trailing: Icon(Icons.clear_all),
                  ),
                ),
              ),
             
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: InkWell(
                  onTap: () {
                    showDialog(context: context, builder:(context) =>
                     Dialog(
                      backgroundColor: Colors.white,
                      child: Container(
                        decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20)
                      ),
                        height: 220,width: 150,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(Icons.emoji_emotions,
                            color: Colors.amber,
                            ),
                            SizedBox(height: 20,),
                            Text("How was your experience with us?",style: TextStyle(
                             color: fbColor,
                              fontWeight: FontWeight.bold),),
                              RatingBar.builder(
                                initialRating: 2,
                                minRating: 1,
                                direction: Axis.horizontal,
                                allowHalfRating: true,
                                itemCount: 5,
                                itemPadding:EdgeInsets.symmetric(horizontal: 3),
                                itemBuilder: (context, _)=>
                              Icon(Icons.star,color: Colors.amber,),
                               onRatingUpdate:(rating) {},),        
                                 SizedBox(height: 20,),
                            Padding(padding: EdgeInsets.only(left: 15),
                              child: Row(
                                children: [
                                    ElevatedButton.icon(
                                    style: ElevatedButton.styleFrom(
                                  primary: Colors.white38,
                                  onPrimary: Colors.black,
                                        ),
                                  onPressed: (){
                               Get.back();
                                  },
                                  icon: Icon(Icons.backspace,size: 15,),
                                   label: Text("Maybe Later")),
                                   SizedBox(width: 10,),
                                      ElevatedButton.icon(
                                    style: ElevatedButton.styleFrom(
                                  primary: Colors.amber,
                                  onPrimary: Colors.black,
                                        ),
                                  onPressed: (){
                                    Get.back();
                                //  Get.to(Scanning_code());
                                  },
                                  icon: Icon(Icons.forward),
                                   label: Text("Submit")),
                                                     ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),);
                  },
                  child: Card(color: Colors.white70,
                    child: ListTile(
                      title: Text("Rate Us"),
                      trailing: Icon(Icons.stars),
                    ),
                  ),
                ),
              ),
                 Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(color: Colors.white70,
                  child: ListTile(
                    title: Text("About App"),
                    trailing: Icon(Icons.app_settings_alt),
                  ),
                ),
              )],),
    );
  }
}