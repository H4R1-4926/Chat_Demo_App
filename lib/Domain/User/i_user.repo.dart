import 'package:chat_app_demo/Domain/User/user_model/user_model.dart';

abstract class IUserRepo {
  Future<void> logInUser({required String email, required String password});
  Future<void> signInUser(
      {required String email,
      required String password,
      required UserModel model});
  Future<void> logOut();
}
