import 'package:flutter/material.dart';

class EmailTextFieldState extends StatefulWidget {
  const EmailTextFieldState({super.key});

  @override
  State<EmailTextFieldState> createState() => _EmailTextFieldStateState();
}

class _EmailTextFieldStateState extends State<EmailTextFieldState> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.all(2.0),
            child: Text(
              "Вход по E-mail",
              style: TextStyle(
                fontSize: 15,
                color: Color.fromRGBO(126, 126, 154, 1)
              ),
              textAlign: TextAlign.start,

            ),
          ),
          
          const TextField(
            
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                borderSide: BorderSide(
                  color: Color.fromRGBO(235, 235, 235, 1),
                  
                )
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                
                borderSide: BorderSide(
                  color: Color.fromRGBO(235, 235, 235, 1),
                  
                )
              ),
              hintText: "example@mail.ru",
              filled: true,
              fillColor: Color.fromRGBO(245, 245, 249, 1)
              
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.05,
          ),
          const SizedBox(
            width: double.infinity,
            child: ElevatedButton(
            onPressed: null,
            style: ButtonStyle(
              shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(10))
              )),
              padding: MaterialStatePropertyAll(EdgeInsets.only(top: 15, bottom: 15)),
              backgroundColor: MaterialStatePropertyAll(Color.fromRGBO(26, 111, 238, 1))
            ),
            child: Text(
              "Далее",
              style: TextStyle(
                color: Colors.white,
                fontSize: 17
              ),
            ),
          ),
          )
          
            
          
        ],
      ),
    );
  }
}