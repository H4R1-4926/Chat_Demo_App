import 'package:chat_app_demo/Application/Splash/splash_bloc.dart';
import 'package:chat_app_demo/Presentation/HomePage/homepage.dart';
import 'package:chat_app_demo/Presentation/Login/login.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

class SplashSreen extends StatelessWidget {
  const SplashSreen({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      context.read<SplashBloc>().add(const SplashEvent.check());
    });
    return BlocListener<SplashBloc, SplashState>(
      listener: (context, state) {
        if (state.currentUser != null) {
          Get.to(() => const HomePage());
        } else if (state.currentUser == null) {
          Get.to(() => LoginPage());
        }
      },
      child: const Scaffold(
        body: Center(
          child: CircularProgressIndicator(),
        ),
      ),
    );
  }
}
