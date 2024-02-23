import 'package:chat_app_demo/Core/color.dart';
import 'package:chat_app_demo/Infrastructure/User/user_repository.dart';
import 'package:chat_app_demo/Presentation/ChatPage/chat_page.dart';
import 'package:chat_app_demo/Presentation/Login/login.dart';
import 'package:chat_app_demo/Presentation/Settings/settings.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'USERS',
            style: TextStyle(color: kGrey, letterSpacing: 5),
          ),
          forceMaterialTransparency: true,
          foregroundColor: kDarkGrey,
          centerTitle: true,
        ),
        drawer: Drawer(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              DrawerHeader(
                  child: Container(
                height: 100,
                width: 100,
                color: kLightGrey,
                child: const Center(child: Text('Logo')),
              )),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 15),
                child: GestureDetector(
                  onTap: () => Navigator.pop(context),
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
                        style: TextStyle(
                            fontSize: 20, letterSpacing: 5, color: kGrey),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 15),
                child: GestureDetector(
                  onTap: () => Get.to(() => const SettingsPage()),
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
                        style: TextStyle(
                            fontSize: 20, letterSpacing: 5, color: kGrey),
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
                        style: TextStyle(
                            fontSize: 20, letterSpacing: 5, color: kGrey),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        body: StreamBuilder(
          stream: FirebaseFirestore.instance.collection('users').snapshots(),
          builder: (context, snapshot) {
            if (snapshot.hasError) {
              return const Center(
                child: Text('Error'),
              );
            } else if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            } else if (snapshot.data!.docs.isEmpty) {
              return const Center(
                child: Text('empty'),
              );
            }

            return ListView.separated(
                itemBuilder: (context, index) {
                  final details = snapshot.data!.docs[index];
                  if (details['email'] !=
                      FirebaseAuth.instance.currentUser!.email) {
                    return InkWell(
                      onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ChatPage(
                              title: details['email'],
                              reciverId: details['id'],
                            ),
                          )),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 40),
                        child: Card(
                          shadowColor: Colors.transparent,
                          margin: const EdgeInsets.symmetric(vertical: 9),
                          child: Padding(
                            padding: const EdgeInsets.all(25),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                const Icon(
                                  Icons.person,
                                  color: kGrey,
                                ),
                                const SizedBox(
                                  width: 32,
                                ),
                                Text(
                                  details['email'],
                                  style: const TextStyle(fontSize: 15),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    );
                  } else {
                    return Container();
                  }
                },
                separatorBuilder: (context, index) => const SizedBox(
                      height: 2,
                    ),
                itemCount: snapshot.data!.docs.length);
          },
        ));
  }
}
