import 'package:chat_app_demo/Core/color.dart';

import 'package:chat_app_demo/Presentation/ChatPage/chat_page.dart';

import 'package:chat_app_demo/Presentation/Widget/widgets.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../Settings/settings.dart';

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
        drawer: DrawerWidget(
          homeOnTap: () => Navigator.pop(context),
          settingsOnTap: () => Get.to(() => const SettingsPage()),
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
