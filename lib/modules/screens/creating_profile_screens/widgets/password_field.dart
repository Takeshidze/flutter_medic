import 'package:flutter/material.dart';
import 'package:flutter_beginning/modules/screens/creating_profile_screens/widgets/number_button.dart';

class PasswordField extends StatefulWidget {
  const PasswordField({super.key});

  @override
  State<PasswordField> createState() => _PasswordFieldState();
}

class _PasswordFieldState extends State<PasswordField> {
  final TextEditingController controller = TextEditingController();

  List<String> codeList = List.filled(4, '');

  void updateCircles() {
    for (int i = 0; i < codeList.length; i++) {
      codeList[i] = i < controller.text.length
          ? controller.text[i]
          : ''; // Записываем соответствующую цифру или пустую строку
    }
    setState(() {});
    if (controller.text.length == 4) {
      // Если введен четырёхзначный код, переходим на следующую страницу
      Navigator.of(context).pushNamed('/create_profile/patient');
    }
  }

  @override
  void initState() {
    super.initState();
    controller.addListener(() {
      updateCircles();
    });
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  void delete() {
    controller.text = controller.text.substring(0, controller.text.length - 1);
  }

  @override
  Widget build(BuildContext context) {
    double buttonSize = MediaQuery.of(context).size.width * 0.2;

    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: codeList.map((code) {
            return Container(
              width: 15.0,
              height: 15.0,
              margin: const EdgeInsets.symmetric(horizontal: 4.0),
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: code.isNotEmpty ? Colors.blue : Colors.white,
                  border: Border.all(color: Colors.blue)),
            );
          }).toList(),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.width * 0.1,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          // implement the number keys (from 0 to 9) with the NumberButton widget
          // the NumberButton widget is defined in the bottom of this file
          children: [
            NumberButton(
              number: 1,
              size: buttonSize,
              controller: controller,
            ),
            NumberButton(
              number: 2,
              size: buttonSize,
              controller: controller,
            ),
            NumberButton(
              number: 3,
              size: buttonSize,
              controller: controller,
            ),
          ],
        ),
        const SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            NumberButton(
              number: 4,
              size: buttonSize,
              controller: controller,
            ),
            NumberButton(
              number: 5,
              size: buttonSize,
              controller: controller,
            ),
            NumberButton(
              number: 6,
              size: buttonSize,
              controller: controller,
            ),
          ],
        ),
        const SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            NumberButton(
              number: 7,
              size: buttonSize,
              controller: controller,
            ),
            NumberButton(
              number: 8,
              size: buttonSize,
              controller: controller,
            ),
            NumberButton(
              number: 9,
              size: buttonSize,
              controller: controller,
            ),
          ],
        ),
        const SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            // this button is used to delete the last number
            SizedBox(
              width: buttonSize,
              height: buttonSize,
            ),
            NumberButton(
              number: 0,
              size: buttonSize,
              controller: controller,
            ),
            // this button is used to submit the entered value
            SizedBox(
              width: buttonSize,
              height: buttonSize,
              child: IconButton(
                onPressed: () => delete(),
                icon: const Icon(
                  Icons.backspace,
                  color: Colors.black,
                ),
                iconSize: buttonSize * 0.5,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
