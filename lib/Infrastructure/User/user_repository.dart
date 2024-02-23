import 'dart:developer';

import 'package:chat_app_demo/Domain/User/i_user.repo.dart';
import 'package:chat_app_demo/Domain/User/user_model/user_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: IUserRepo)
class UserLog implements IUserRepo {
  final auth = FirebaseAuth.instance;
  User? user;
  @override
  Future<void> signInUser(
      {required String email,
      required String password,
      required UserModel model}) async {
    try {
      final userLog = await auth.createUserWithEmailAndPassword(
          email: email, password: password);
      user = userLog.user;
      if (user != null) {
        await FirebaseFirestore.instance
            .collection('users')
            .doc(user!.uid)
            .set({
          'id': user!.uid,
          'email': model.email,
          'password': model.password
        });
        log('Success');
      }
    } catch (e) {
      log('Unsuccess..err in: $e');
    }
  }

  @override
  Future<void> logInUser(
      {required String email, required String password}) async {
    try {
      await auth.signInWithEmailAndPassword(email: email, password: password);
      log('Success');
    } catch (e) {
      log('Unsuccess..err in: $e');
    }
  }

  @override
  Future<void> logOut() async {
    await auth.signOut();
  }
}
