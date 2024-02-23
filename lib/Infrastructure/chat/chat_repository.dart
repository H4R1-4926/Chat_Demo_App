import 'package:chat_app_demo/Domain/Chat/i_chat_repo.dart';
import 'package:chat_app_demo/Domain/Chat/message/message.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: IChatRepo)
class ChatMessage implements IChatRepo {
  final _auth = FirebaseAuth.instance;
  @override
  Future<void> sendMessage(String? reciverId, String? message) async {
    final currentUserId = _auth.currentUser!.uid;
    final currentUserEmail = _auth.currentUser!.email;
    final timeStamp = Timestamp.now();

    Message newMsg = Message(
        senderId: currentUserId,
        senderEmail: currentUserEmail,
        message: message,
        recieverId: reciverId,
        timestamp: timeStamp.toString());

    final ids = [currentUserId, reciverId];
    ids.sort();
    final chatRoomID = ids.join('_');
    await FirebaseFirestore.instance
        .collection('chat_rooms')
        .doc(chatRoomID)
        .collection('messages')
        .add(newMsg.toJson());
  }

  @override
  Stream<QuerySnapshot> getMessages(String? userId, String? otherUserId) {
    final ids = [userId, otherUserId];
    ids.sort();
    final chatRoomID = ids.join('_');
    return FirebaseFirestore.instance
        .collection('chat_rooms')
        .doc(chatRoomID)
        .collection('messages')
        .orderBy('timestamp', descending: false)
        .snapshots();
  }
}
