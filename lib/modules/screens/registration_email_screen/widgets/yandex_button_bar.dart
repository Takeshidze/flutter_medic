import 'package:flutter/material.dart';

class YandexButtonBar extends StatelessWidget {
  const YandexButtonBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Padding(
          padding: EdgeInsets.all(10),
          child: Text(
            "Или войдите с помощью",
            style: TextStyle(
                fontSize: 15, color: Color.fromRGBO(147, 147, 150, 1)),
          ),
        ),
        SizedBox(
          width: double.infinity,
          child: ElevatedButton(
            onPressed: null,
            style: ButtonStyle(
                shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                    side: BorderSide(color: Color.fromRGBO(235, 235, 235, 1)),
                    borderRadius: BorderRadius.all(Radius.circular(10)))),
                padding: MaterialStatePropertyAll(
                    EdgeInsets.only(top: 18, bottom: 18)),
                backgroundColor: MaterialStatePropertyAll(Colors.white)),
            child: Text(
              "Войти с Яндекс",
              style: TextStyle(color: Colors.black, fontSize: 17),
            ),
          ),
        )
      ],
    );
  }
}
