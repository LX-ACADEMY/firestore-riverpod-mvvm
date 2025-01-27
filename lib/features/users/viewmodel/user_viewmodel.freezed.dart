// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_viewmodel.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$UserViewModelState {
  bool get isLoading => throw _privateConstructorUsedError;
  UserModel get user => throw _privateConstructorUsedError;
  List<UserModel> get users => throw _privateConstructorUsedError;
  bool get isError => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;

  /// Create a copy of UserViewModelState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserViewModelStateCopyWith<UserViewModelState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserViewModelStateCopyWith<$Res> {
  factory $UserViewModelStateCopyWith(
          UserViewModelState value, $Res Function(UserViewModelState) then) =
      _$UserViewModelStateCopyWithImpl<$Res, UserViewModelState>;
  @useResult
  $Res call(
      {bool isLoading,
      UserModel user,
      List<UserModel> users,
      bool isError,
      String? errorMessage});

  $UserModelCopyWith<$Res> get user;
}

/// @nodoc
class _$UserViewModelStateCopyWithImpl<$Res, $Val extends UserViewModelState>
    implements $UserViewModelStateCopyWith<$Res> {
  _$UserViewModelStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserViewModelState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? user = null,
    Object? users = null,
    Object? isError = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserModel,
      users: null == users
          ? _value.users
          : users // ignore: cast_nullable_to_non_nullable
              as List<UserModel>,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  /// Create a copy of UserViewModelState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserModelCopyWith<$Res> get user {
    return $UserModelCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UserViewModelStateImplCopyWith<$Res>
    implements $UserViewModelStateCopyWith<$Res> {
  factory _$$UserViewModelStateImplCopyWith(_$UserViewModelStateImpl value,
          $Res Function(_$UserViewModelStateImpl) then) =
      __$$UserViewModelStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      UserModel user,
      List<UserModel> users,
      bool isError,
      String? errorMessage});

  @override
  $UserModelCopyWith<$Res> get user;
}

/// @nodoc
class __$$UserViewModelStateImplCopyWithImpl<$Res>
    extends _$UserViewModelStateCopyWithImpl<$Res, _$UserViewModelStateImpl>
    implements _$$UserViewModelStateImplCopyWith<$Res> {
  __$$UserViewModelStateImplCopyWithImpl(_$UserViewModelStateImpl _value,
      $Res Function(_$UserViewModelStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserViewModelState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? user = null,
    Object? users = null,
    Object? isError = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_$UserViewModelStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserModel,
      users: null == users
          ? _value._users
          : users // ignore: cast_nullable_to_non_nullable
              as List<UserModel>,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$UserViewModelStateImpl implements _UserViewModelState {
  const _$UserViewModelStateImpl(
      {required this.isLoading,
      required this.user,
      required final List<UserModel> users,
      required this.isError,
      required this.errorMessage})
      : _users = users;

  @override
  final bool isLoading;
  @override
  final UserModel user;
  final List<UserModel> _users;
  @override
  List<UserModel> get users {
    if (_users is EqualUnmodifiableListView) return _users;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_users);
  }

  @override
  final bool isError;
  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'UserViewModelState(isLoading: $isLoading, user: $user, users: $users, isError: $isError, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserViewModelStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.user, user) || other.user == user) &&
            const DeepCollectionEquality().equals(other._users, _users) &&
            (identical(other.isError, isError) || other.isError == isError) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading, user,
      const DeepCollectionEquality().hash(_users), isError, errorMessage);

  /// Create a copy of UserViewModelState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserViewModelStateImplCopyWith<_$UserViewModelStateImpl> get copyWith =>
      __$$UserViewModelStateImplCopyWithImpl<_$UserViewModelStateImpl>(
          this, _$identity);
}

abstract class _UserViewModelState implements UserViewModelState {
  const factory _UserViewModelState(
      {required final bool isLoading,
      required final UserModel user,
      required final List<UserModel> users,
      required final bool isError,
      required final String? errorMessage}) = _$UserViewModelStateImpl;

  @override
  bool get isLoading;
  @override
  UserModel get user;
  @override
  List<UserModel> get users;
  @override
  bool get isError;
  @override
  String? get errorMessage;

  /// Create a copy of UserViewModelState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserViewModelStateImplCopyWith<_$UserViewModelStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
