import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_beginning/modules/screens/creating_profile_screens/widgets/date_field.dart';
import 'package:flutter_beginning/modules/screens/creating_profile_screens/widgets/dropdown_field.dart';
import 'package:flutter_beginning/modules/screens/creating_profile_screens/widgets/text_field.dart';
import 'package:flutter_beginning/modules/widgets/button_skip.dart';
import 'package:flutter_beginning/modules/widgets/expended_button.dart';
import 'package:flutter_beginning/modules/widgets/text.dart';

class PatientCard extends StatefulWidget {
  const PatientCard({super.key});

  @override
  State<PatientCard> createState() => _PatientCardState();
}

class _PatientCardState extends State<PatientCard> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    double sizeWidth = MediaQuery.of(context).size.width;
    double sizeHeight = MediaQuery.of(context).size.height;
    return SafeArea(
        child: Scaffold(
            body: Padding(
                padding: EdgeInsets.all(16),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Align(
                            alignment: Alignment.topLeft,
                            child: SizedBox(
                              width: sizeWidth * 0.5,
                              child: const MyTextBox(
                                text: "Создание карты пациента",
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                                textAlign: TextAlign.left,
                              ),
                            )),
                        const Spacer(),
                        const Align(
                          alignment: Alignment.topRight,
                          child: SkipButton("/"),
                        )
                      ],
                    ),
                    SizedBox(
                      height: sizeHeight * 0.03,
                    ),
                    const MyTextBox(
                      text:
                          "Без карты пациента вы не сможете заказать анализы.",
                      color: Color.fromRGBO(147, 147, 150, 1),
                      textAlign: TextAlign.left,
                    ),
                    SizedBox(
                      height: sizeHeight * 0.015,
                    ),
                    const MyTextBox(
                      text:
                          "В картах пациентов будут храниться результаты анализов вас и ваших близких.",
                      color: Color.fromRGBO(147, 147, 150, 1),
                      textAlign: TextAlign.left,
                    ),
                    SizedBox(
                      height: sizeHeight * 0.05,
                    ),
                    Form(
                      key: _formKey,
                      autovalidateMode: AutovalidateMode.always,
                      onChanged: () {
                        if (_formKey.currentState!.validate()) {}
                      },
                      child: Column(
                        children: [
                          MyTextfield(
                              hintText: "Фамилия",
                              validator: (val) {
                                if (val!.isValidName) {
                                  return "Неверная фамилия";
                                }
                                return null;
                              }),
                          SizedBox(
                            height: sizeHeight * 0.01,
                          ),
                          MyTextfield(
                            hintText: "Имя",
                            validator: (val) {
                              if (val!.isValidName) {
                                return "Неверное имя";
                              }
                              return null;
                            },
                          ),
                          SizedBox(
                            height: sizeHeight * 0.01,
                          ),
                          MyTextfield(
                              hintText: "Отчество",
                              validator: (val) {
                                if (val!.isValidName) {
                                  return "Неверное Отчество";
                                }
                                return null;
                              }),
                          SizedBox(
                            height: sizeHeight * 0.01,
                          ),
                          const DatePicker(
                              //   validator: (val) {
                              //   if (val == null) {
                              //     return "Заполните поле";
                              //   }
                              //   return null;
                              // }
                              ),
                          SizedBox(
                            height: sizeHeight * 0.01,
                          ),
                          const MyDropDownField(),
                          SizedBox(
                            height: sizeHeight * 0.01,
                          ),
                          ExpendedButton(
                            text: 'Создать',
                            onPressed: () {
                              if (_formKey.currentState!.validate()) {
                                Navigator.of(context)
                                    .pushNamed("/registration");
                              }
                            },
                          )
                        ],
                      ),
                    )
                  ],
                ))));
  }
}
