import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class RegisteredUserWidget extends StatelessWidget {
  const RegisteredUserWidget({
    super.key,
    required this.name,
    required this.emailAddress,
    required this.teamsAddress,
  });

  final String name;
  final String emailAddress;
  final String teamsAddress;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 15.0,
          vertical: 10.0,
        ),
        width: 450,
        height: 250,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5.0),
          color: Colors.amber,
        ),
        child: Column(
          children: [
            SelectableRowWidget(text: name),
            SelectableRowWidget(text: emailAddress),
            SelectableRowWidget(text: teamsAddress),
          ],
        ),
      ),
    );
  }
}

class SelectableRowWidget extends StatelessWidget {
  const SelectableRowWidget({
    super.key,
    required this.text,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10.0),
      child: Row(
        children: [
          Text(text),
          const SizedBox(width: 15.0),
          ElevatedButton(
            onPressed: () {
              Clipboard.setData(
                ClipboardData(text: text),
              );
            },
            child: const Text("복사"),
          )
        ],
      ),
    );
  }
}
