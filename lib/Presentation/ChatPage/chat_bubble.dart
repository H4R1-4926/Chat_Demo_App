import 'package:chat_app_demo/Core/color.dart';
import 'package:flutter/material.dart';

class ChatBubble extends StatelessWidget {
  const ChatBubble(
      {super.key, required this.text, required this.isCurrentUser});

  final String text;
  final bool isCurrentUser;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      child: Container(
        decoration: BoxDecoration(
            color: isCurrentUser ? Colors.greenAccent : kWhite,
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(25),
                bottomLeft: Radius.circular(25),
                topRight: Radius.circular(25))),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            text,
            style: const TextStyle(fontSize: 18, color: kBlack),
          ),
        ),
      ),
    );
  }
}
