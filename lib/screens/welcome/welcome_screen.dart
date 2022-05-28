import 'dart:async';

import 'package:flutter/material.dart';
import 'package:we_chat/screens/chats/chats_screen.dart';

import '../../constants.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Timer(
        const Duration(seconds: 1),
        () => Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (BuildContext context) => ChatsScreen())));
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(width: 150,
                    height: 150,child: Image.asset("assets/images/logo.png")),
              ),
              const SizedBox(width: 100,
                  height: 100),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Welcome to \nWeChat",
                  textAlign: TextAlign.center,
                  style: Theme.of(context)
                      .textTheme
                      .headline5!
                      .copyWith(fontWeight: FontWeight.bold),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
