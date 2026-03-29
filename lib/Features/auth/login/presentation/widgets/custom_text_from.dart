import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../../core/resources/colors_app.dart';
import '../../../../../core/resources/images_icons.dart';

class  CustomTexTFromFeild extends StatefulWidget {
  final String hint;
  final String label;
  final dynamic controller;
  final dynamic vaildator;
  final bool ispass;
  bool isCLiked = false;
  CustomTexTFromFeild({super.key, required this.hint, required this.label, required this.ispass, this.controller, this.vaildator});

  @override
  State<CustomTexTFromFeild> createState() => _CustomTexTFromFeildState();
}

class _CustomTexTFromFeildState extends State<CustomTexTFromFeild> {


  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      validator: widget.vaildator,
      decoration: InputDecoration(
        labelStyle: GoogleFonts.epilogue(color: ColorsApp.secondaryGrey,letterSpacing: .6),
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
        contentPadding: EdgeInsets.symmetric(horizontal: 20,vertical: 15),
        focusedBorder:  OutlineInputBorder(borderSide: BorderSide.none),
        errorBorder:  OutlineInputBorder(borderSide: BorderSide.none),
        border:  OutlineInputBorder(borderSide: BorderSide.none),
        enabledBorder: OutlineInputBorder(borderSide: BorderSide.none)),);
  }
}
