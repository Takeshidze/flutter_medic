import 'package:flutter/material.dart';

class MyDropDownField extends StatefulWidget {
  final String? Function(String?)? validator;

  const MyDropDownField({this.validator, super.key});

  @override
  State<MyDropDownField> createState() => _MyDropDownFieldState();
}

class _MyDropDownFieldState extends State<MyDropDownField> {
  ValueChanged<String>? onChange;

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<String>(
      validator: widget.validator,
      value: null,
      onChanged: (String? newValue) {
        if (onChange != null) {
          onChange!(newValue!);
        }
      },
      items: ['Мужской', 'Женский'].map((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(
            value,
            style: TextStyle(color: Colors.black),
          ),
        );
      }).toList(),
      decoration: const InputDecoration(
          helperText: ' ',
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              borderSide: BorderSide(
                color: Color.fromRGBO(235, 235, 235, 1),
              )),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              borderSide: BorderSide(
                color: Color.fromRGBO(235, 235, 235, 1),
              )),
          hintText: "Пол",
          filled: true,
          fillColor: Color.fromRGBO(245, 245, 249, 1)),
    );
  }
}
