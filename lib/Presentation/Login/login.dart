import 'package:chat_app_demo/Core/color.dart';
import 'package:chat_app_demo/Infrastructure/User/user_repository.dart';
import 'package:chat_app_demo/Presentation/SignIn/signin.dart';
import 'package:chat_app_demo/Presentation/Splash/splash.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Center(
            child: SizedBox(
              height: 100,
              width: 100,
              child: Icon(
                Icons.message,
                size: 85,
                color: kGrey,
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            'Welcome',
            style: TextStyle(color: kGrey, fontSize: 18),
          ),
          const SizedBox(
            height: 20,
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
            height: 30,
          ),
          GestureDetector(
            onTap: () {
              logIn();
            },
            child: Container(
              height: 60,
              width: 350,
              decoration: BoxDecoration(
                  color: kWhite, borderRadius: BorderRadius.circular(15)),
              child: const Center(
                child: Text(
                  'Login',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: kDarkGrey),
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
                'Not a member?.  ',
                style: TextStyle(color: kGrey),
              ),
              InkWell(
                onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SignInPage(),
                    )),
                child: const Text(
                  'Register Here.',
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

  void logIn() {
    final email = emailController.text.trim();
    final password = passController.text.trim();
    if (email.isNotEmpty || password.isNotEmpty) {
      UserLog().logInUser(email: email, password: password);
      Get.to(() => const SplashSreen());
    } else {
      Get.snackbar('Failed', 'Check the details');
    }
  }
}
