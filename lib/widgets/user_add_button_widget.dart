import 'package:admin_search/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class UserAddButtonWidget extends ConsumerWidget {
  const UserAddButtonWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return TextButton(
      onPressed: () => showRegistration(
        context: context,
        ref: ref,
      ),
      child: const Text('추가하기'),
    );
  }
}
