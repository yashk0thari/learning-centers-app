import 'package:flutter/material.dart';

// Database:
final USER_UID = "005756489";
// final db = FirebaseFirestore.instance;

// Future<User?> getUser(String uid) async {
//   DocumentSnapshot docSnapshot = await db.collection('users').doc(uid).get();
//
//   if (docSnapshot.exists) {
//     Map<String, dynamic> data = docSnapshot.data() as Map<String, dynamic>;
//     return User(
//       uid: data['uid'],
//       name: data['name'],
//       checkType: data['check_type'],
//       lcTokens: data['lc_tokens'],
//     );
//   } else {
//     return null;
//   }
// }

// Colors:
const Color mainBackgroundColor = Color(0xFF1001FC);
const Color altColor = Color(0xFFA9FF00);

// TextStyles:
TextStyle mainTextStyle(double fontSize, FontWeight fontWeight, Color color) {
  return TextStyle(
    fontFamily: "Mono45Headline",
    fontSize: fontSize,
    fontWeight: fontWeight,
    color: color,
  );
}
