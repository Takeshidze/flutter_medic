import 'package:flutter/material.dart';
import 'package:flutter_beginning/modules/widgets/button_skip.dart';
import 'package:flutter_beginning/modules/screens/creating_profile_screens/widgets/password_field.dart';
import 'package:flutter_beginning/modules/widgets/text.dart';

class PasswordScreen extends StatefulWidget {
  const PasswordScreen({super.key});

  @override
  State<PasswordScreen> createState() => _PasswordScreenState();
}

class _PasswordScreenState extends State<PasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [SkipButton('/create_profile/patient')],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.05,
              ),
              const MyTextBox(
                  text: "Cоздайте пароль",
                  fontWeight: FontWeight.bold,
                  fontSize: 24),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              const MyTextBox(
                  text: "Для защиты ваших персональных данных",
                  color: Color.fromRGBO(147, 147, 150, 1)),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.05,
              ),
              const PasswordField()
            ],
          ),
        ),
      ),
    );
  }
}
