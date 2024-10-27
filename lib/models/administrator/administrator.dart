import 'package:freezed_annotation/freezed_annotation.dart';

part 'administrator.freezed.dart';
part 'administrator.g.dart';

@freezed
class Administrator with _$Administrator {
  factory Administrator({
    required String name,
    required String emailAddress,
    required String teamsAddress,
  }) = _Administrator;

  factory Administrator.fromJson(Map<String, dynamic> json) =>
      _$AdministratorFromJson(json);
}
