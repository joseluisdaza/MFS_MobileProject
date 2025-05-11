import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:proyecto_final/domain/models/user.dart';

class UserNotifier extends StateNotifier<UserModel> {
  UserNotifier() : super(UserModel('', '', ''));

  void updateUser(String name, String lastname, String email) {
    state = UserModel(name, lastname, email);
  }
}

final userProvider = StateNotifierProvider<UserNotifier, UserModel>((ref) {
  return UserNotifier();
});
