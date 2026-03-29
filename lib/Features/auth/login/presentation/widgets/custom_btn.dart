import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../core/resources/colors_app.dart';

class CutstomBtn extends StatelessWidget {
  const CutstomBtn({super.key, required this.text, required this.onPressed});
  final String text;
  final Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 56,
      child: ElevatedButton(
          style:ElevatedButton.styleFrom(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),backgroundColor: ColorsApp.btnColors) ,
          onPressed:onPressed, child: Center(child: Text(text,style: TextStyle(fontSize: 16,color: Colors.white,fontWeight: FontWeight.bold),))),
    );
  }
}