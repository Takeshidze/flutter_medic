import 'package:flutter/material.dart';
import 'package:flutter_beginning/modules/widgets/expended_button.dart';

class EmailTextFieldState extends StatefulWidget {
  const EmailTextFieldState({super.key});

  @override
  State<EmailTextFieldState> createState() => _EmailTextFieldStateState();
}

extension EmailValidator on String {
  bool isValidEmail() {
    return RegExp(
            r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$')
        .hasMatch(this);
  }
}

class _EmailTextFieldStateState extends State<EmailTextFieldState> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.all(2.0),
          child: Text(
            "Вход по E-mail",
            style: TextStyle(
                fontSize: 15, color: Color.fromRGBO(126, 126, 154, 1)),
            textAlign: TextAlign.start,
          ),
        ),
        TextFormField(
          autovalidateMode: AutovalidateMode.always,
          validator: (input) {
            if (input!.isValidEmail()) {}
            return null;
          },
          keyboardType: TextInputType.emailAddress,
          decoration: const InputDecoration(
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
              hintText: "example@mail.ru",
              filled: true,
              fillColor: Color.fromRGBO(245, 245, 249, 1)),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.05,
        ),
        ExpendedButton(
          onPressed: () {
            Navigator.of(context).pushNamed('/registration/confirm');
          },
          text: "Далее",
        )
      ],
    );
  }
}
