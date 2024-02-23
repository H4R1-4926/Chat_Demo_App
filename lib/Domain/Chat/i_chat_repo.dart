import 'package:cloud_firestore/cloud_firestore.dart';

abstract class IChatRepo {
  Future<void> sendMessage(String? reciverId, String? message);
  Stream<QuerySnapshot> getMessages(String? userId, String? otherUserId);
}
