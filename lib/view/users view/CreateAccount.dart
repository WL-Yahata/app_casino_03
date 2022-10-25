import 'package:flutter/material.dart';

class CreateAccount extends StatefulWidget {
  const CreateAccount({Key? key}) : super(key: key);

  @override
  State<CreateAccount> createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.black45),
        title: const Text('新規登録',style:TextStyle(color:Colors.black45,)),
        centerTitle: true,
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          children: const [
            SizedBox(height: 30),
            CircleAvatar(
              radius: 40,
              child: Icon(Icons.add),
            )
          ],
        ),
      ),
    );
  }
}
