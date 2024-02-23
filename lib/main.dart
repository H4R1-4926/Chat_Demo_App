import 'package:chat_app_demo/Application/Splash/splash_bloc.dart';
import 'package:chat_app_demo/Core/color.dart';
import 'package:chat_app_demo/Domain/Dependancy_injection/injectable.dart';

import 'package:chat_app_demo/Presentation/Splash/splash.dart';
import 'package:chat_app_demo/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  await configureInjection();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<SplashBloc>(),
      child: GetMaterialApp(
          theme: ThemeData(scaffoldBackgroundColor: kLightGrey),
          darkTheme: ThemeData(scaffoldBackgroundColor: kLightBlack),
          debugShowCheckedModeBanner: false,
          home: const SplashSreen()),
    );
  }
}
