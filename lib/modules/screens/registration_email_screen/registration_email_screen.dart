import 'package:flutter/material.dart';
import 'package:flutter_beginning/modules/screens/registration_email_screen/widgets/email_text_field.dart';
import 'package:flutter_beginning/modules/widgets/text.dart';
import 'package:flutter_beginning/modules/screens/registration_email_screen/widgets/yandex_button_bar.dart';

class RegistrationEmailScreen extends StatelessWidget {
  const RegistrationEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding:
              const EdgeInsets.only(bottom: 48, left: 16, right: 16, top: 16),
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.1,
              ),
              const Row(
                children: [
                  Text(
                    "🤚   ",
                    style: TextStyle(fontSize: 28),
                  ),
                  Text(
                    "Добро пожаловать!",
                    style: TextStyle(fontSize: 26, fontWeight: FontWeight.w600),
                  )
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              const MyTextBox(
                  text: "Войдите, чтобы пользоваться функциями приложения"),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.1,
              ),
              const EmailTextFieldState(),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.2,
              ),
              const Expanded(
                  child: Align(
                alignment: Alignment.bottomCenter,
                child: YandexButtonBar(),
              ))
            ],
          ),
        ),
      ),
    );
  }
}
