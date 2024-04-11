import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MessageNotifier extends AutoDisposeAsyncNotifier<
    Stream<List<QueryDocumentSnapshot<Map<String, dynamic>>>>> {
  var db = FirebaseFirestore.instance;

  @override
  Stream<List<QueryDocumentSnapshot<Map<String, dynamic>>>> build() async* {
    db.settings = const Settings(persistenceEnabled: true);
    Stream<QuerySnapshot<Map<String, dynamic>>> messageStream =
        db.collection("Messages").snapshots();
    await for (var message in messageStream) {
      yield message.docs;
    }
  }
}

final messageProvider = AutoDisposeAsyncNotifierProvider<MessageNotifier,
        Stream<List<QueryDocumentSnapshot<Map<String, dynamic>>>>>(
    () => MessageNotifier());

final messageStreamProvider =
    StreamProvider<List<QueryDocumentSnapshot<Map<String, dynamic>>>>(
        (ref) async* {
  var messages = FirebaseFirestore.instance.collection("Messages").snapshots();
  await for (var i in messages) {
    yield i.docs;
  }
});
