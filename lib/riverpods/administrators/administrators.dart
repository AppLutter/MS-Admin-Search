import 'dart:convert';

import 'package:admin_search/const/app_keys.dart';
import 'package:admin_search/models/administrator/administrator.dart';
import 'package:admin_search/static/app_shared_preference.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'administrators.g.dart';

@riverpod
class Administrators extends _$Administrators {
  @override
  List<Administrator> build() {
    return [];
  }

  void loadAdmins() {
    if (AppSharedPreference.sharedPreference == null) {
      return;
    }

    final String? jsonString = AppSharedPreference.sharedPreference!
        .getString(AppKeys.administratorKey);

    if (jsonString != null && jsonString.isNotEmpty) {
      final List<dynamic> jsonList = jsonDecode(jsonString);
      final List<Administrator> administrators =
          jsonList.map((json) => Administrator.fromJson(json)).toList();
      state = administrators;
    }
  }

  void addAdmin({
    required String name,
    required String eamilAddress,
    required String teamsAddress,
  }) {
    Administrator administrator = Administrator(
      name: name,
      teamsAddress: teamsAddress,
      emailAddress: eamilAddress,
    );
    state = [...state, administrator];

    if (AppSharedPreference.sharedPreference != null) {
      final String jsonString = jsonEncode(state);

      AppSharedPreference.sharedPreference!
          .setString(AppKeys.administratorKey, jsonString);
    }
  }
}
