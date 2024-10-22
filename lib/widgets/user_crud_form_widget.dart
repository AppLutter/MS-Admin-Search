import 'package:admin_search/functions/functions.dart';
import 'package:admin_search/riverpods/riverpods.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class UserCRUDFormWidget extends ConsumerStatefulWidget {
  const UserCRUDFormWidget({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _UserCRUDFormWidgetState();
}

class _UserCRUDFormWidgetState extends ConsumerState<UserCRUDFormWidget> {
  late TextEditingController name;
  late TextEditingController email;
  late TextEditingController url;

  late FunctionChecks functionChecks;

  bool checkSatisfationToRegist() {
    return !functionChecks.checkIfEmpty(name.text) &&
        !functionChecks.checkIfEmpty(email.text) &&
        !functionChecks.checkIfEmpty(url.text);
  }

  @override
  void initState() {
    functionChecks = FunctionChecks();

    name = TextEditingController();
    email = TextEditingController();
    url = TextEditingController();

    super.initState();
  }

  @override
  void dispose() {
    name.dispose();
    email.dispose();
    url.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        RowTextField(title: "이름", controller: name),
        RowTextField(title: "Email", controller: email),
        RowTextField(title: "Teams 링크", controller: url),
        const SizedBox(height: 30),
        ElevatedButton(
          onPressed: () {
            if (checkSatisfationToRegist()) {
              ref.read(administratorsProvider.notifier).addAdmin(
                    name: name.text,
                    teamsAddress: url.text,
                    eamilAddress: email.text,
                  );

              name.clear();
              email.clear();
              url.clear();
              Navigator.pop(context);
            }
          },
          child: const Text("추가"),
        )
      ],
    );
  }
}

class RowTextField extends StatelessWidget {
  const RowTextField({
    super.key,
    required this.title,
    required this.controller,
  });

  final String title;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ConstrainedBox(
            constraints: const BoxConstraints(minWidth: 100.0),
            child: Text("$title : "),
          ),
          SizedBox(
            width: 350.0,
            child: TextField(
              controller: controller,
            ),
          ),
        ],
      ),
    );
  }
}
