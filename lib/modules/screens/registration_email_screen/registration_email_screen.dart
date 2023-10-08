import 'package:flutter/material.dart';
import 'package:flutter_beginning/modules/widgets/email_text_field.dart';


class RegistrationEmailScreen extends StatelessWidget {
  const RegistrationEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              SizedBox(
                    height: MediaQuery.of(context).size.height * 0.1,
              ),
              const Row(
                children: [
                  Text(
                    "🤚   ",
                    style: TextStyle(
                      fontSize: 28
                    ),
                  ),
                  Text(
                    "Добро пожаловать!",
                    style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.w600
                    ),
                  )
                ],
              ),
              SizedBox(
                    height: MediaQuery.of(context).size.height * 0.02,
              ),
              const Text(
                    "Войдите, чтобы пользоваться функциями приложения",
                    style: TextStyle(
                      fontSize: 15,
                      
                    ),
              ),
              SizedBox(
                    height: MediaQuery.of(context).size.height * 0.1,
              ),
              const EmailTextFieldState(),
                    
            ],
          ),
        ),
      ),
    );
  }
}