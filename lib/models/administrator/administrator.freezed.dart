// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'administrator.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Administrator _$AdministratorFromJson(Map<String, dynamic> json) {
  return _Administrator.fromJson(json);
}

/// @nodoc
mixin _$Administrator {
  String get name => throw _privateConstructorUsedError;
  String get eamilAddress => throw _privateConstructorUsedError;
  String get teamsAddress => throw _privateConstructorUsedError;

  /// Serializes this Administrator to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Administrator
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AdministratorCopyWith<Administrator> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdministratorCopyWith<$Res> {
  factory $AdministratorCopyWith(
          Administrator value, $Res Function(Administrator) then) =
      _$AdministratorCopyWithImpl<$Res, Administrator>;
  @useResult
  $Res call({String name, String eamilAddress, String teamsAddress});
}

/// @nodoc
class _$AdministratorCopyWithImpl<$Res, $Val extends Administrator>
    implements $AdministratorCopyWith<$Res> {
  _$AdministratorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Administrator
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? eamilAddress = null,
    Object? teamsAddress = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      eamilAddress: null == eamilAddress
          ? _value.eamilAddress
          : eamilAddress // ignore: cast_nullable_to_non_nullable
              as String,
      teamsAddress: null == teamsAddress
          ? _value.teamsAddress
          : teamsAddress // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AdministratorImplCopyWith<$Res>
    implements $AdministratorCopyWith<$Res> {
  factory _$$AdministratorImplCopyWith(
          _$AdministratorImpl value, $Res Function(_$AdministratorImpl) then) =
      __$$AdministratorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String eamilAddress, String teamsAddress});
}

/// @nodoc
class __$$AdministratorImplCopyWithImpl<$Res>
    extends _$AdministratorCopyWithImpl<$Res, _$AdministratorImpl>
    implements _$$AdministratorImplCopyWith<$Res> {
  __$$AdministratorImplCopyWithImpl(
      _$AdministratorImpl _value, $Res Function(_$AdministratorImpl) _then)
      : super(_value, _then);

  /// Create a copy of Administrator
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? eamilAddress = null,
    Object? teamsAddress = null,
  }) {
    return _then(_$AdministratorImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      eamilAddress: null == eamilAddress
          ? _value.eamilAddress
          : eamilAddress // ignore: cast_nullable_to_non_nullable
              as String,
      teamsAddress: null == teamsAddress
          ? _value.teamsAddress
          : teamsAddress // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AdministratorImpl implements _Administrator {
  _$AdministratorImpl(
      {required this.name,
      required this.eamilAddress,
      required this.teamsAddress});

  factory _$AdministratorImpl.fromJson(Map<String, dynamic> json) =>
      _$$AdministratorImplFromJson(json);

  @override
  final String name;
  @override
  final String eamilAddress;
  @override
  final String teamsAddress;

  @override
  String toString() {
    return 'Administrator(name: $name, eamilAddress: $eamilAddress, teamsAddress: $teamsAddress)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AdministratorImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.eamilAddress, eamilAddress) ||
                other.eamilAddress == eamilAddress) &&
            (identical(other.teamsAddress, teamsAddress) ||
                other.teamsAddress == teamsAddress));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, name, eamilAddress, teamsAddress);

  /// Create a copy of Administrator
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AdministratorImplCopyWith<_$AdministratorImpl> get copyWith =>
      __$$AdministratorImplCopyWithImpl<_$AdministratorImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AdministratorImplToJson(
      this,
    );
  }
}

abstract class _Administrator implements Administrator {
  factory _Administrator(
      {required final String name,
      required final String eamilAddress,
      required final String teamsAddress}) = _$AdministratorImpl;

  factory _Administrator.fromJson(Map<String, dynamic> json) =
      _$AdministratorImpl.fromJson;

  @override
  String get name;
  @override
  String get eamilAddress;
  @override
  String get teamsAddress;

  /// Create a copy of Administrator
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AdministratorImplCopyWith<_$AdministratorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
