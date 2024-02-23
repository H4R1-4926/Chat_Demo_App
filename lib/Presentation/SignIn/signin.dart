import 'package:chat_app_demo/Core/color.dart';
import 'package:chat_app_demo/Domain/User/user_model/user_model.dart';
import 'package:chat_app_demo/Infrastructure/User/user_repository.dart';
import 'package:chat_app_demo/Presentation/Login/login.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../Splash/splash.dart';

class SignInPage extends StatelessWidget {
  SignInPage({super.key});

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Container(
              height: 100,
              width: 100,
              color: kGrey,
              child: const Center(
                child: Text('Logo'),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            'Let\'s create an account for you',
            style: TextStyle(color: kGrey, fontSize: 18),
          ),
          const SizedBox(
            height: 25,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: TextFormField(
              controller: emailController,
              decoration: InputDecoration(
                  fillColor: kWhite,
                  hintText: 'Email',
                  hintStyle: const TextStyle(color: kGrey),
                  filled: true,
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: kBlack.withOpacity(0.3)),
                      borderRadius: BorderRadius.circular(15)),
                  border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(15))),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: TextFormField(
              controller: passController,
              decoration: InputDecoration(
                  suffixIcon: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.visibility_outlined,
                      color: kGrey,
                    ),
                  ),
                  fillColor: kWhite,
                  hintText: 'Password',
                  hintStyle: const TextStyle(color: kGrey),
                  filled: true,
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: kBlack.withOpacity(0.3)),
                      borderRadius: BorderRadius.circular(15)),
                  border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(15))),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: TextFormField(
              decoration: InputDecoration(
                  suffixIcon: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.visibility_outlined,
                      color: kGrey,
                    ),
                  ),
                  fillColor: kWhite,
                  hintText: 'Confirm Password',
                  hintStyle: const TextStyle(color: kGrey),
                  filled: true,
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: kBlack.withOpacity(0.3)),
                      borderRadius: BorderRadius.circular(15)),
                  border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(15))),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          GestureDetector(
            onTap: () {
              signIn();
              Get.to(() => const SplashSreen());
            },
            child: Container(
              height: 60,
              width: 350,
              decoration: BoxDecoration(
                  color: kWhite, borderRadius: BorderRadius.circular(15)),
              child: const Center(
                child: Text(
                  'SignIn',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 45,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Already a member.  ',
                style: TextStyle(color: kGrey),
              ),
              InkWell(
                onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => LoginPage(),
                    )),
                child: const Text(
                  'Login Here.',
                  style:
                      TextStyle(color: kDarkGrey, fontWeight: FontWeight.bold),
                ),
              )
            ],
          )
        ],
      ),
    );
  }

  void signIn() {
    final email = emailController.text.trim();
    final password = passController.text.trim();
    final model = UserModel(email: email, password: password);
    if (email.isNotEmpty || password.isNotEmpty) {
      UserLog().signInUser(email: email, password: password, model: model);
    }
  }
}
