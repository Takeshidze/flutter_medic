import 'package:flutter/material.dart';

class NumberButton extends StatefulWidget {
  final int number;
  final double size;

  final TextEditingController controller;

  const NumberButton({
    Key? key,
    required this.number,
    required this.size,
    required this.controller,
  }) : super(key: key);

  @override
  State<NumberButton> createState() => _NumberButtonState();
}

class _NumberButtonState extends State<NumberButton> {
  bool isPressed = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: (details) {
        setState(() {
          isPressed = true;
        });
      },
      onTapUp: (details) {
        setState(() {
          isPressed = false;
        });
      },
      onTapCancel: () {
        setState(() {
          isPressed = false;
        });
      },
      child: SizedBox(
        width: widget.size,
        height: widget.size,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            elevation: 0.0,
            backgroundColor: isPressed
                ? Colors.blue
                : const Color.fromRGBO(233, 229, 229, 1),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(widget.size / 2),
            ),
          ),
          onPressed: () {
            widget.controller.text += widget.number.toString();
          },
          child: Center(
            child: Text(
              widget.number.toString(),
              style: TextStyle(
                  fontWeight: FontWeight.w600,
                  color: isPressed ? Colors.white : Colors.black,
                  fontSize: 24),
            ),
          ),
        ),
      ),
    );
  }
}
