import 'package:chat_app_demo/Core/color.dart';
import 'package:chat_app_demo/Infrastructure/chat/chat_repository.dart';
import 'package:chat_app_demo/Presentation/ChatPage/chat_bubble.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ChatPage extends StatelessWidget {
  ChatPage({super.key, required this.title, required this.reciverId});

  final String title;
  final String reciverId;
  final TextEditingController msgController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          title,
          style: const TextStyle(fontSize: 20, color: kGrey),
        ),
        centerTitle: true,
        forceMaterialTransparency: true,
      ),
      body: Column(
        children: [Expanded(child: getMsg()), msgInputMethod()],
      ),
    );
  }

  Widget getMsg() {
    final String senderId = FirebaseAuth.instance.currentUser!.uid;
    return StreamBuilder(
      stream: ChatMessage().getMessages(reciverId, senderId),
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          return const Center(
            child: Text('Err..Err..'),
          );
        } else if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        } else if (snapshot.data!.docs.isEmpty) {
          return const Center(
            child: Text('Empty..'),
          );
        }
        return ListView(
          children: snapshot.data!.docs.map((e) => msgBuild(e)).toList(),
        );
      },
    );
  }

  void sendMsg() async {
    if (msgController.text.isNotEmpty) {
      await ChatMessage().sendMessage(reciverId, msgController.text);

      msgController.clear();
    }
  }

  Widget msgBuild(DocumentSnapshot e) {
    Map<String, dynamic> data = e.data() as Map<String, dynamic>;

    bool isCurrentUser =
        data['senderId'] == FirebaseAuth.instance.currentUser!.uid;
    final alignment =
        isCurrentUser ? Alignment.centerRight : Alignment.centerLeft;
    return Container(
        alignment: alignment,
        child: ChatBubble(text: data['message'], isCurrentUser: isCurrentUser));
  }

  Widget msgInputMethod() {
    return Row(
      children: [
        Expanded(
            child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 14),
          child: TextFormField(
            controller: msgController,
            decoration: InputDecoration(
                hintText: 'Type Message',
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20))),
          ),
        )),
        GestureDetector(
          onTap: () => sendMsg(),
          child: Padding(
            padding: const EdgeInsets.only(right: 5),
            child: Container(
              height: 50,
              width: 50,
              decoration: const BoxDecoration(
                  shape: BoxShape.circle, color: Colors.greenAccent),
              child: const Center(
                child: Icon(
                  Icons.arrow_upward,
                  color: kWhite,
                  size: 30,
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
