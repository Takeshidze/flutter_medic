import 'package:flutter/material.dart';

extension ExtString on String {
  bool get isValidEmail {
    final emailRegExp = RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
    return emailRegExp.hasMatch(this);
  }

  bool get isValidName {
    final nameRegExp =
        RegExp(r"^\s*([A-Za-z]{1,}([\.,] |[-']| ))+[A-Za-z]+\.?\s*$");
    return nameRegExp.hasMatch(this);
  }

  bool get isValidPassword {
    final passwordRegExp = RegExp(
        r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\><*~]).{8,}/pre>');
    return passwordRegExp.hasMatch(this);
  }

  bool get isValidPhone {
    final phoneRegExp = RegExp(r"^\+?0[0-9]{10}$");
    return phoneRegExp.hasMatch(this);
  }
}

class MyTextfield extends StatelessWidget {
  final String hintText;
  final TextInputType textInputType;
  final String? Function(String?)? validator;
  const MyTextfield(
      {required this.hintText,
      this.textInputType = TextInputType.name,
      this.validator,
      super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autovalidateMode: AutovalidateMode.always,
      validator: validator,
      keyboardType: textInputType,
      decoration: InputDecoration(
          helperText: ' ',
          enabledBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              borderSide: BorderSide(
                color: Color.fromRGBO(235, 235, 235, 1),
              )),
          border: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              borderSide: BorderSide(
                color: Color.fromRGBO(235, 235, 235, 1),
              )),
          hintText: hintText,
          filled: true,
          fillColor: Color.fromRGBO(245, 245, 249, 1)),
    );
  }
}
