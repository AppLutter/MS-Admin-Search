import 'package:admin_search/pages/user_list_outline_page.dart';
import 'package:admin_search/static/app_shared_preference.dart';
import 'package:admin_search/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  AppSharedPreference.sharedPreference ??=
      await SharedPreferences.getInstance();

  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: AppTheme.lightThemeData,
      home: const UserListOutlinePage(),
    );
  }
}
