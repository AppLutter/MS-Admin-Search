import 'package:admin_search/riverpods/riverpods.dart';
import 'package:admin_search/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class UserListOutlinePage extends ConsumerStatefulWidget {
  const UserListOutlinePage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _UserListOutlinePageState();
}

class _UserListOutlinePageState extends ConsumerState<UserListOutlinePage> {
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      ref.read(administratorsProvider.notifier).loadAdmins();
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final adminProvider = ref.watch(administratorsProvider);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        actions: [
          Builder(
            builder: (BuildContext context) {
              if (adminProvider.isNotEmpty) {
                return const Center(
                  child: UserAddButtonWidget(),
                );
              }
              return const SizedBox.shrink();
            },
          ),
        ],
      ),
      body: Builder(
        builder: (BuildContext context) {
          if (adminProvider.isEmpty) {
            return const Center(
              child: UserAddButtonWidget(),
            );
          } else {
            return SingleChildScrollView(
              child: Wrap(
                children: List.generate(
                  adminProvider.length,
                  (index) => RegisteredUserWidget(
                    name: adminProvider[index].name,
                    emailAddress: adminProvider[index].eamilAddress,
                    teamsAddress: adminProvider[index].teamsAddress,
                  ),
                ),
              ),
            );
          }
        },
      ),
    );
  }
}
