// import 'package:flutter/material.dart';
// import 'package:flutter_application_2/constraints/constraints.dart';

// class SignUp extends StatefulWidget {
//   const SignUp({super.key});

//   @override
//   State<SignUp> createState() => _SignUpState();
// }

// class _SignUpState extends State<SignUp> {
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         appBar: AppBar(title: Text("SignUp"),backgroundColor: appbarcolor,toolbarHeight: 80,),
//              body:  SingleChildScrollView(
//                child: Column(      
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                               mainAxisAlignment: MainAxisAlignment.start,
//                               children: [
//                                 SizedBox(height: 50,),
//                                 Text('Email or phone number' ,
//                                   style: Theme.of(context).textTheme.bodyText2!.copyWith(color: secondaryTextColor ),),
//                               SizedBox(height: 5,),
//                                 Container(
//                                   decoration: BoxDecoration(
//                                     color: Color(0xff8592a1).withOpacity(0.1),
//                                     borderRadius: BorderRadius.circular(10)
//                                   ),
//                                   child: TextFormField(
//                                     decoration: const InputDecoration(
//                                       enabledBorder: InputBorder.none ,
//                                       focusedBorder: InputBorder.none ,
//                                       disabledBorder: InputBorder.none ,
//                                       errorBorder: InputBorder.none ,
//                                     ),
//                                   ),
//                                 ),
//                                 SizedBox(height: 50,),
                   
//                                 Text('Password' ,
//                                   style: Theme.of(context).textTheme.bodyText2!.copyWith(color: secondaryTextColor ),),
//                                 SizedBox(height: 5,),
//                                 Container(
//                                   decoration: BoxDecoration(
//                                       color: Color(0xff8592a1).withOpacity(0.1),
//                                       borderRadius: BorderRadius.circular(10),
//                                   ),
//                                   child: TextFormField(
//                                     style: Theme.of(context).textTheme.headline6!.copyWith(color: Color(0xff2d3242)),
//                                     decoration: const InputDecoration(
//                                       suffix: Icon(Icons.visibility_off , color: Colors.red,),
//                                       enabledBorder: InputBorder.none ,
//                                       focusedBorder: InputBorder.none ,
//                                       disabledBorder: InputBorder.none ,
//                                       errorBorder: InputBorder.none ,
//                                     ),
//                                   ),
//                                 ),SizedBox(height: 50,),
//                         const  Row(
//                             children:  [
//                                Expanded(child: Divider()),
//                               SizedBox(width: 20,),
//                               Text('OR' , style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
//                               SizedBox(width: 20,),
//                               Expanded(child: Divider()),
//                           ],
//                           ),
//                           SizedBox(height: 50,),
//                           ReusabelSocialContainer(color: Colors.red.shade600,
//                            asset: 'assets/images/google_icon.png',title: 'Sign up with google',),
//                       ]),
//              ) ),
//     );
//   }
// }
// class ReusabelSocialContainer extends StatelessWidget {

//   final String title , asset ;
//   final Color  color ;
//   const ReusabelSocialContainer({Key? key , required this.color , required this.title , required this.asset}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(vertical: 10),
//       child: Container(
//         height: 50,
//         decoration: BoxDecoration(
//           color:color ,
//           borderRadius: BorderRadius.circular(20)
//         ),
//         child: Padding(
//           padding: const EdgeInsets.only(left: 20),
//           child: Row(
//             children: [
//               Image(image:  AssetImage(asset),),
//               SizedBox(width: 20,),
//               Text(title,
//               style: Theme.of(context).textTheme.bodyText1!.copyWith(color: Colors.white),
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
