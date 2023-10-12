import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DatePicker extends StatefulWidget {
  final String? Function(String?)? validator;
  const DatePicker({this.validator, super.key});

  @override
  State<DatePicker> createState() => _DatePickerState();
}

TextEditingController datePickerController = TextEditingController();
onTapFunction({required BuildContext context}) async {
  DateTime? pickedDate = await showDatePicker(
    context: context,
    lastDate: DateTime.now(),
    firstDate: DateTime(2015),
    initialDate: DateTime.now(),
  );
  if (pickedDate == null) return;
  datePickerController.text = DateFormat('yyyy-MM-dd').format(pickedDate);
}

class _DatePickerState extends State<DatePicker> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: widget.validator,
      controller: datePickerController,
      readOnly: true,
      onTap: () => onTapFunction(context: context),
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
          hintText: "Дата рождения",
          filled: true,
          fillColor: Color.fromRGBO(245, 245, 249, 1)),
    );
  }
}
