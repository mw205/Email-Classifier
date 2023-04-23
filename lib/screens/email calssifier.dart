// ignore_for_file: file_names

import 'package:flutter/material.dart';

import '../services/SpamEmail.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Spam Check',
          style: TextStyle(fontFamily: ("NunitoSans"), fontSize: 26),
        ),
      ),
      body: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Image(
              image: AssetImage("assets/images/SPAM.png"),
            ),
            TextField(
              decoration: const InputDecoration(
                  border: OutlineInputBorder(), hintText: "enter email"),
              controller: _controller,
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: ElevatedButton(
                onPressed: () async {
                  String email = _controller.text;
                  classifyEmail(email,context);
                  setState(
                    () {
                      //spamEmail1 = spamEmail;
                    },
                  );
                },
                child: const Text(
                  "check",
                  style: TextStyle(fontFamily: ("NunitoSans"), fontSize: 18),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

