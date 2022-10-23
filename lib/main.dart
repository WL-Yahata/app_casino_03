import 'package:app_casino_03/view/users%20view/ScreenPage.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
   MyApp({super.key});
  static final FirebaseFirestore firestore = FirebaseFirestore.instance;
 static final CollectionReference _users = firestore.collection('users');

 Future<void> addUser() async{
   await _users.add({
     'PokerName':
      'BirthDay'
   });
   print('Userの追加完了');
 }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const ScreenPage(),
    );
  }
}
