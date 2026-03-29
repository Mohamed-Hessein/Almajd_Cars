import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../../core/resources/colors_app.dart';
import '../../../../../core/resources/images_icons.dart';
import '../../../../../core/resources/styles.dart';

class  CustomRegTextFiled extends StatefulWidget {
  final String hint;
  final dynamic prefixIcon;
  final String label;
final dynamic controller;
  final dynamic vaildator;
  final bool ispass;
  bool isCLiked = false;
  CustomRegTextFiled({super.key, required this.hint, required this.label, required this.ispass, required this.prefixIcon, this.controller, this.vaildator});

  @override
  State<CustomRegTextFiled> createState() => _CustomTexTFromFeildState();
}

class _CustomTexTFromFeildState extends State<CustomRegTextFiled> {


  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: widget.vaildator,
      controller: widget.controller,
      decoration: InputDecoration(
      prefixIcon:Padding(
        padding: const EdgeInsets.all(10),
        child: Image.asset(widget.prefixIcon,width: 10,height: 10,),
      ),
        labelStyle: StyleApp.text12BlueDark.copyWith(fontSize: 14),
        hintStyle:  TextStyle(color: ColorsApp.hintText),
        labelText: widget.label,
        floatingLabelBehavior: FloatingLabelBehavior.always,
        hintText:widget.hint,
        suffixIcon: widget.ispass?  GestureDetector(

            onTap: (){widget.isCLiked = !widget.isCLiked;
            setState(() {

            });
            },
            child: widget.isCLiked? Padding(
              padding: const EdgeInsets.all(11.0),
              child: ImageIcon(AssetImage(IconApp.eyeIC),size: 15,),
            ): Icon(Icons.visibility_off)): SizedBox.shrink(),
        contentPadding: EdgeInsets.symmetric(horizontal: 20,vertical: 17),
        focusedBorder:  OutlineInputBorder(borderSide: BorderSide.none),
        errorBorder:  OutlineInputBorder(borderSide: BorderSide.none),
        border:  OutlineInputBorder(borderSide: BorderSide.none),
        enabledBorder: OutlineInputBorder(borderSide: BorderSide.none)),);
  }
}
