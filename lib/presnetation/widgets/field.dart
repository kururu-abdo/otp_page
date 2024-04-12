import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class OtpTextField extends StatefulWidget {
  final TextEditingController? controller;
  final FocusNode? currentFocus;
  final FocusNode? prevousNode;
    final FocusNode? nextFocus;
final int? currentIndex;
  final String? currentValue;
 
  const OtpTextField({super.key, this.controller, this.currentFocus, this.prevousNode, this.nextFocus, this.currentIndex, this.currentValue});

  @override
  State<OtpTextField> createState() => _OtpTextFieldState();
}

class _OtpTextFieldState extends State<OtpTextField> {


  @override
  void initState() {
    // TODO: implement initState
    super.initState();

  
  }
  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      width: MediaQuery.of(context).size.width/10,
      height: MediaQuery.of(context).size.width/8,
      child: TextFormField
      (
      focusNode:widget.currentFocus,
        controller: widget.controller!,
        textAlign: TextAlign.center,
      maxLength: 1,
      keyboardType: TextInputType.number,
      
      onChanged: (str){
        if (str.isNotEmpty) {
          if (widget.nextFocus!=null) {
        widget.nextFocus!.requestFocus();
      }
      else {
        if (widget.prevousNode!=null) {
        widget.prevousNode!.requestFocus();
      }
      }
        }
      },
      onFieldSubmitted: (str){
      if (widget.nextFocus!=null) {
        widget.nextFocus!.requestFocus();
      }else {
        if (widget.prevousNode!=null) {
        widget.prevousNode!.requestFocus();
      }
      }
      },
      onEditingComplete: (){
      if (widget.nextFocus!=null) {
        widget.nextFocus!.requestFocus();
      }
      },
      
      style:  const TextStyle(
        color: Colors.white
      ),
        decoration:     InputDecoration(
         counterText: "",
          
      border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
      
        borderSide:  BorderSide(
      color:  widget.controller!.text.isEmpty?
      
           Colors.white:Colors.purple,
          width: 1
        )), 
      
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide:  BorderSide(
          color:  widget.controller!.text.isEmpty?
      
           Colors.white:Colors.purple,
          width: 1
        )), 
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
      
       
       
        borderSide:  BorderSide(
         color:  widget.controller!.text.isEmpty?
      
           Colors.white:Colors.purple,
          width: 1
        )), 
      
      
        ),
        
      ),
    );
  }
}