import 'package:flutter/material.dart';
import 'package:otp_page/presnetation/widgets/field.dart';


class TextFieldRow extends StatefulWidget {
  final int? currentIndex;
  final String? currentValue;
  const TextFieldRow({super.key, this.currentIndex, this.currentValue});

  @override
  State<TextFieldRow> createState() => _TextFieldRowState();
}

class _TextFieldRowState extends State<TextFieldRow> {

  TextEditingController f1 =TextEditingController();
  TextEditingController f2 =TextEditingController();
  TextEditingController f3 =TextEditingController();
  TextEditingController f4 =TextEditingController();
  TextEditingController f5 =TextEditingController();
FocusNode focus1 = FocusNode();
FocusNode focus2 = FocusNode();
FocusNode focus3 = FocusNode();
FocusNode focus4 = FocusNode();
FocusNode focus5 = FocusNode();






  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 50
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
         OtpTextField(controller: f1,
         
         currentFocus: focus1,
         nextFocus: focus2,
         prevousNode: null,
         ) , 
         OtpTextField(controller: f2,
             currentFocus: focus2,
         nextFocus: focus3,
         prevousNode: focus1,
         
         ) , 
         OtpTextField(controller: f3,
         
             currentFocus: focus3,
         nextFocus: focus4,
         prevousNode: focus2,
         ) , 
         OtpTextField(controller: f4,
         
             currentFocus: focus4,
         nextFocus: focus5,
         prevousNode: focus3,
         ) , 
               OtpTextField(controller: f5,
               
                   currentFocus: focus5,
         nextFocus: null,
         prevousNode: focus4,
               
               ) , 

      
        ],
      ),
    );
  }
}