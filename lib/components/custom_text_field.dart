// ignore_for_file: missing_return

import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String hint;
  final String errVal;
  final IconData icon;
  final Function onClick;

  const CustomTextField({
    this.hint,
    this.icon,
    this.errVal,
    this.onClick,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 30.0,
      ),
      child: TextFormField(
        obscureText: hint == 'Enter your password' ? true : false,
        validator: (value) {
          if (value.isEmpty) {
            return errVal;
          }
        },
        cursorColor: Colors.white,
        decoration: InputDecoration(
          hintText: hint,
          prefixIcon: Icon(
            icon,
//            color: KMainColor,
          ),
          filled: true,
//          fillColor: KSecondaryColor,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20.0),
            borderSide: BorderSide(color: Colors.deepOrange),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20.0),
            borderSide: BorderSide(color: Colors.white),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20.0),
            borderSide: BorderSide(color: Colors.white),
          ),
        ),
        onSaved: onClick,
      ),
    );
  }
}
