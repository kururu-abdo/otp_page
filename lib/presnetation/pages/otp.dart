import 'package:flutter/material.dart';

import 'dart:ui' as ui;

import 'package:otp_page/presnetation/widgets/keyboard.dart';
import 'package:otp_page/presnetation/widgets/textfield_list.dart';

class OtpPage extends StatefulWidget {
  const OtpPage({super.key});

  @override
  State<OtpPage> createState() => _OtpPageState();
}

class _OtpPageState extends State<OtpPage> {
  TextEditingController textEditingController = TextEditingController();



  int currentIndex=0;
String currnetDiget="";
  changeIndex(){
    if (currentIndex>0) {
       currentIndex++;
    }
    if (currentIndex<4) {
      currentIndex++;
    }
    setState(() {
      
    });
  }
  @override
  Widget build(BuildContext context) {
    return   Scaffold(
backgroundColor: Colors.black,
      body: SizedBox.expand(child: ListView(
        
        // crossAxisAlignment: CrossAxisAlignment.center,
        children:  [
const SizedBox(height: 70,),
const Center(child: Text("OTP Verification" , style: TextStyle(
fontSize: 36,
  color: Colors.white , fontWeight: FontWeight.bold
),),) , 
const SizedBox(height: 10,),
const Center(child: Text("code just sent to 0***03" , style: TextStyle(
fontSize: 18,
  color: Colors.white , fontWeight: FontWeight.w300
),),) , 



const SizedBox(height: 20,),


const TextFieldRow(),

// TextField(
//   enabled: false,
//   controller: textEditingController,
// style: const TextStyle(color: Colors.white ,fontWeight: FontWeight.bold),
// decoration: const InputDecoration(
// ),
// ),
const SizedBox(height: 20,),
Center(child: Text.rich(
  TextSpan(text: "Didn\'t get the otp? ", 
  style: TextStyle(
    fontSize: 18,
      color: Colors.white
    ) ,
  children: [
    TextSpan(text: "Resend",style: TextStyle(
      fontSize: 18,
      color: Colors.purple
    ) )
  ]
  ), 

),),
const SizedBox(height: 20,),
Center(
  child: Container(
    width: MediaQuery.of(context).size.width*.25, height: 60, 
    decoration:  BoxDecoration(
      color: Colors.purple,
      borderRadius: BorderRadius.circular(15)
    ),
    child: const Center(child: Text("Verify" ,   style: TextStyle(
      fontWeight: FontWeight.bold
    ),)),
  ),
),


const SizedBox(height: 20,),


KeyBoardItems(
  onItemTap: ((value, isDelete) {
    if (!isDelete) {
      textEditingController.text=textEditingController.text+value;
    }else {
      changeIndex();

      if (textEditingController.text.isNotEmpty) {
       textEditingController.text=
      textEditingController.text.substring(0 , textEditingController.text.length-1);
 
      }
      
    }
  }
  
  ),
)

      ],),),
    );
  }
}