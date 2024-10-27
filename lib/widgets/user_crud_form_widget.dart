import 'package:admin_search/functions/functions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../models/models.dart';
import '../riverpods/riverpods.dart';

void showRegistration({
  required BuildContext context,
  required WidgetRef ref,
}) async {
  final Administrator? result = await showDialog(
    context: context,
    builder: (BuildContext context) {
      return const AlertDialog(
        content: UserCRUDFormWidget(),
      );
    },
  );

  if (result == null) {
    return;
  }

  ref.read(administratorsProvider.notifier).addAdmin(
        name: result.name,
        teamsAddress: result.teamsAddress,
        eamilAddress: result.emailAddress,
      );
}

void showUpdate({
  required BuildContext context,
  required String name,
  required String emailAddress,
  required String teamsAddress,
}) async {
  final Administrator? result = await showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        content: UserCRUDFormWidget(
          name: name,
          emailAddress: emailAddress,
          teamsAddress: teamsAddress,
        ),
      );
    },
  );
}

class UserCRUDFormWidget extends ConsumerStatefulWidget {
  const UserCRUDFormWidget({
    super.key,
    this.name,
    this.emailAddress,
    this.teamsAddress,
  });

  final String? name;
  final String? emailAddress;
  final String? teamsAddress;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _UserCRUDFormWidgetState();
}

class _UserCRUDFormWidgetState extends ConsumerState<UserCRUDFormWidget> {
  late TextEditingController name;
  late TextEditingController emailAddress;
  late TextEditingController teamsAddress;

  late FunctionChecks functionChecks;

  bool checkSatisfactionForRegistration() {
    return !functionChecks.checkIfEmpty(name.text) &&
        !functionChecks.checkIfEmpty(emailAddress.text) &&
        !functionChecks.checkIfEmpty(teamsAddress.text);
  }

  @override
  void initState() {
    functionChecks = FunctionChecks();

    name = TextEditingController(text: widget.name);
    emailAddress = TextEditingController(text: widget.emailAddress);
    teamsAddress = TextEditingController(text: widget.teamsAddress);

    super.initState();
  }

  @override
  void dispose() {
    name.dispose();
    emailAddress.dispose();
    teamsAddress.dispose();
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
        RowTextField(title: "Email", controller: emailAddress),
        RowTextField(title: "Teams 링크", controller: teamsAddress),
        const SizedBox(height: 30),
        ElevatedButton(
          onPressed: () {
            if (!checkSatisfactionForRegistration()) {
              return;
            }

            final Administrator administrator = Administrator(
              name: name.text,
              teamsAddress: teamsAddress.text,
              emailAddress: emailAddress.text,
            );

            name.clear();
            emailAddress.clear();
            teamsAddress.clear();

            Navigator.pop(context, administrator);
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
