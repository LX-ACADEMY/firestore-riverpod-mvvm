import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
class UserModel with _$UserModel {
  const factory UserModel({
    required String id,
    required String name,
    required String email,
    required DateTime createdAt,
  }) = _UserModel;

  factory UserModel.initial() {
    return UserModel(
      id: DateTime.now().microsecondsSinceEpoch.toString(),
      name: '',
      email: '',
      createdAt: DateTime.now(),
    );
  }

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);
}
