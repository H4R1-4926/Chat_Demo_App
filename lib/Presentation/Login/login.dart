import 'package:chat_app_demo/Core/color.dart';
import 'package:chat_app_demo/Infrastructure/User/user_repository.dart';
import 'package:chat_app_demo/Presentation/SignIn/signin.dart';
import 'package:chat_app_demo/Presentation/Splash/splash.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
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
            'Welcome Back',
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
          const Padding(
            padding: EdgeInsets.only(left: 235, top: 8),
            child: Text(
              'Forget Password?',
              style: TextStyle(fontSize: 15),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          GestureDetector(
            onTap: () {
              logIn();
              Get.to(() => const SplashSreen());
            },
            child: Container(
              height: 60,
              width: 350,
              decoration: BoxDecoration(
                  color: kWhite, borderRadius: BorderRadius.circular(15)),
              child: const Center(
                child: Text(
                  'Login',
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
    UserLog().logInUser(email: email, password: password);
  }
}
