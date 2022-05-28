
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'chat_input_field.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(0),

          ),
        ),
        ChatInputField(),
      ],
    );
  }
}
