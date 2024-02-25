import 'package:chat_app_demo/Core/color.dart';
import 'package:chat_app_demo/Infrastructure/User/user_repository.dart';
import 'package:chat_app_demo/Presentation/Login/login.dart';
import 'package:flutter/material.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({
    super.key,
    required this.homeOnTap,
    required this.settingsOnTap,
  });

  final void Function() homeOnTap;
  final void Function() settingsOnTap;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const DrawerHeader(
              child: SizedBox(
            height: 100,
            width: 100,
            child: Center(
                child: Icon(
              Icons.message,
              size: 85,
              color: kGrey,
            )),
          )),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 15),
            child: GestureDetector(
              onTap: homeOnTap,
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 50,
                  ),
                  Icon(
                    Icons.home,
                    color: kGrey,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    'HOME',
                    style:
                        TextStyle(fontSize: 20, letterSpacing: 5, color: kGrey),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 15),
            child: GestureDetector(
              onTap: settingsOnTap,
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 50,
                  ),
                  Icon(
                    Icons.settings,
                    color: kGrey,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    'SETTINGS',
                    style:
                        TextStyle(fontSize: 20, letterSpacing: 5, color: kGrey),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 480),
            child: GestureDetector(
              onTap: () {
                UserLog().logOut();
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(
                      builder: (context) => LoginPage(),
                    ),
                    (route) => false);
              },
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 50,
                  ),
                  Icon(
                    Icons.logout_outlined,
                    color: kGrey,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    'LOG OUT',
                    style:
                        TextStyle(fontSize: 20, letterSpacing: 5, color: kGrey),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
