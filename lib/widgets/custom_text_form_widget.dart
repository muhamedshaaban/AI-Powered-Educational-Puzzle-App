import 'package:flutter/material.dart';

class CustomTextFormWidget extends StatelessWidget {
  const CustomTextFormWidget({
    super.key,
    this.prefixIocn,
    this.suffixIcon,
  });

  final Icon? prefixIocn;
  final Icon? suffixIcon;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 343,
      child: TextFormField(
          decoration: InputDecoration(
        prefixIcon: prefixIocn,
        suffixIcon: suffixIcon,
        filled: true,
        fillColor: Colors.white,
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: Colors.grey,
            width: 1.0,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide.none,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide.none,
        ),
      )),
    );
  }
}
