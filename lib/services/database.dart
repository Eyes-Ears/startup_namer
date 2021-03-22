import 'package:cloud_firestore/cloud_firestore.dart';

class DatabaseService {

  final String uid;
  DatabaseService({ this.uid });

  // collection reference
  final CollectionReference pointCollection = Firestore.instance.collection('points');

  Future<void> updateUserData(String sugars, String name, int strength) async {
    return await pointCollection.document(uid).setData({
      'sugars': sugars,
      'name': name,
      'strength': strength,
    });
  }

  // get brews stream
  Stream<QuerySnapshot> get points {
    return pointCollection.snapshots();
  }
}