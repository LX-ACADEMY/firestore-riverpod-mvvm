import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:riverpod_firebase/features/users/model/user_model.dart';

class FirestoreService {
  static final FirebaseFirestore _db = FirebaseFirestore.instance;

  static Future<void> saveUser(UserModel user) async {
    try {
      await _db.collection('users').doc(user.id).set(user.toJson());
    } catch (_) {
      rethrow;
    }
  }

  static Stream<List<UserModel>> getUsers() {
    try {
      return _db.collection('users').snapshots().map((snapshot) {
        return snapshot.docs.map((doc) {
          return UserModel.fromJson(doc.data());
        }).toList();
      });
    } catch (_) {
      rethrow;
    }
  }
}
