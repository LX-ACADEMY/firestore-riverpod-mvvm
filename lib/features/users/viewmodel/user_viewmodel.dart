import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:riverpod_firebase/features/users/model/user_model.dart';
import 'package:riverpod_firebase/services/firestore_service.dart';

part 'user_viewmodel.g.dart';
part 'user_viewmodel.freezed.dart';

@freezed
class UserViewModelState with _$UserViewModelState {
  const factory UserViewModelState({
    required bool isLoading,
    required UserModel user,
    required List<UserModel> users,
    required bool isError,
    required String? errorMessage,
  }) = _UserViewModelState;

  factory UserViewModelState.initial() {
    return UserViewModelState(
      isLoading: false,
      user: UserModel.initial(),
      users: [],
      isError: false,
      errorMessage: null,
    );
  }
}

@riverpod
class UserViewmodel extends _$UserViewmodel {
  @override
  UserViewModelState build() {
    return UserViewModelState.initial();
  }

  void onEmailChanged(String email) {
    state = state.copyWith(
      user: state.user.copyWith(
        email: email,
      ),
    );
  }

  void onNameChanged(String name) {
    state = state.copyWith(
      user: state.user.copyWith(
        name: name,
      ),
    );
  }

  Future<void> saveUser() async {
    try {
      state = state.copyWith(isLoading: true);
      await FirestoreService.saveUser(state.user.copyWith(
        id: DateTime.now().microsecondsSinceEpoch.toString(),
      ));
      state = state.copyWith(isLoading: false);
    } catch (e) {
      state = state.copyWith(
        isLoading: false,
        isError: true,
        errorMessage: e.toString(),
      );
    }
  }

  void listenToUsers() {
    final usersStream = FirestoreService.getUsers();
    usersStream.listen(
      (users) {
        state = state.copyWith(
          users: users,
          isError: false,
          errorMessage: null,
        );
      },
      onError: (e) {
        state = state.copyWith(
          isError: true,
          errorMessage: e.toString(),
        );
      },
    );
  }
}
