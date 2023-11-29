import 'package:flutter/material.dart';
import 'package:flutter_application_2/sanning.dart';
import 'package:get/get.dart';

class PrivacyPopUp extends StatefulWidget {
  const PrivacyPopUp({super.key});

  @override
  State<PrivacyPopUp> createState() => _PrivacyPopUpState();
}

class _PrivacyPopUpState extends State<PrivacyPopUp> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    AlertDialog();
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: AlertDialog(
            title: Text('Thankyou for trusting and using our software and services!',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
            content: SingleChildScrollView(
              child: Column(
                children: [
                  Text(
                    'We understand the importance of personal information to you.We have formulated the service agreement & privacy policy in accordance with relevent laws & regulations to help you understand how we collect,use, save,share,transfer & publicy disclose your personal info. Please be sure to carefully read & fully understand the relevent terms, especially paying attention to the following:n/'
                    '1.When you use our products or services, you will provide personal info related to specific functions (which may involve identity, authentications,location info,Device info, Browsing history, operating lags etc). n/ 2.In order to provide you with sharing service, our product collect your device identification info & social account you need to share. n/ 3.You can access your personal information & manage your authorization.n/ 4.Without your consent,we will not use your personal info for other unauthorized purpose.n/ 5.If you have any question, you can contact us through feedback.',       
               style: TextStyle(fontSize: 12),   ),
                    Row(mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton.icon(
            style: ElevatedButton.styleFrom(
          primary: Colors.white38,
          onPrimary: Colors.black,
                ),
          onPressed: (){
       Get.back();
          },
          icon: Icon(Icons.backspace,size: 10),
           label: Text("Disagree")),
           SizedBox(width: 10,),
              ElevatedButton.icon(
            style: ElevatedButton.styleFrom(
          primary: Colors.amber,
          onPrimary: Colors.black,
                ),
          onPressed: (){
         Get.to(Scanning_code());
          },
          icon: Icon(Icons.forward,size: 10,),
           label: Text("Agree")),
                      ],
                    ),
         

      
      ])))),
    );
  }
}
