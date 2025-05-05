import 'package:cloud_firestore/cloud_firestore.dart';

class Firestore {
  final CollectionReference events = FirebaseFirestore.instance.collection('events');

  /* Future<Future<DocumentReference<Object?>>> addEvent(String event, String userid, String eventdate) async {
    return events.add(
      'eventtitle': event,
      'userid': userid,
      'eventdate': eventdate,
      'timestamp': Timestamp.now(),
    );
  } */
}