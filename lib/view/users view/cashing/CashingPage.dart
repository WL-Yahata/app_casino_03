import 'package:app_casino_03/view/users%20view/CreateAccount.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../../model/Account.dart';
import '../../../model/PlayMoney.dart';
import '../../../model/Post.dart';

class CashingPage extends StatefulWidget {
  const CashingPage({Key? key}) : super(key: key);

  @override
  State<CashingPage> createState() => _CashingPageState();
}

class _CashingPageState extends State<CashingPage> {
  Account myAccount = Account(
    id: '0123',
    name: 'Yahatata',
  );

  PlayMoney myPlayMoney = PlayMoney(
    playmoney1: '2000',
    playmoney2: '30000',
    playmoney3: '400000',
  );

  List<Post> postList = [
    Post(content: 'ヤッホ', createdTime: DateTime.now()),
    Post(content: 'は〜い', createdTime: DateTime.now()),
    Post(content: 'ヤッホー', createdTime: DateTime.now()),
    Post(content: 'は〜い', createdTime: DateTime.now()),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: TextButton(onPressed: () {
          // ここにボタンを押した時に呼ばれるコードを書く
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const CreateAccount()),
          );
        }, child: const Text('owners')),
      ),
      backgroundColor: Colors.grey.withOpacity(0.2),
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black45),
        centerTitle: true,
        title: const Text('home', style: TextStyle(color: Colors.black54),),
        backgroundColor: Colors.white,
        elevation: 1,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
                alignment: Alignment.topCenter,
                padding: const EdgeInsets.all(2.0),
                margin: const EdgeInsets.only(
                  top: 80.0,
                  bottom: 40.0,
                  right: 20.0,
                  left: 20.0,
                ),
                width: MediaQuery.of(context).size.width * 0.95,
                height: 220,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.black12),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  children: [
                    Container(
                      //QRコード
                        alignment: Alignment.centerLeft,
                        padding: const EdgeInsets.all(10.0),
                        margin: const EdgeInsets.only(
                          top: 0.0,
                          bottom: 0.0,
                          right: 0.0,
                          left: 20.0,
                        ),
                        width: 100,
                        height: 100,
                        decoration: const BoxDecoration(
                          color: Colors.black45,
                        )),
                    //QRコード
                    Container(
                      //店のアイコン画像とpt表示とID・名前
                      padding: const EdgeInsets.all(0.0),
                      margin: const EdgeInsets.all(0.0),
                      width: 215,
                      height: 210,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(), //店のアイコン画像
                          Container(
                            //ptの表示

                            padding: const EdgeInsets.all(0.0),
                            margin: const EdgeInsets.all(0.0),
                            width: MediaQuery.of(context).size.width * 0.95,
                            height: 80,
                            decoration: const BoxDecoration(
                              color: Colors.white,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Row(
                                  children: [
                                    const Text('    play money 1       '),
                                    Text(myPlayMoney.playmoney1),
                                    const Text('pt.'),
                                  ],
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Row(
                                  children: [
                                    const Text('    play money 2       '),
                                    Text(myPlayMoney.playmoney2),
                                    const Text('pt.'),
                                  ],
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Row(
                                  children: [
                                    const Text('    play money 3       '),
                                    Text(myPlayMoney.playmoney3),
                                    const Text('pt.'),
                                  ],
                                ),
                              ],
                            ),
                          ), //ptの表示の
                          Container(
                            alignment: Alignment.bottomRight,
                            padding: const EdgeInsets.all(0.0),
                            margin: const EdgeInsets.all(0.0),
                            width: MediaQuery.of(context).size.width * 0.95,
                            height: 38,
                            decoration: const BoxDecoration(
                              color: Colors.white,
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                const Text('ID:'),
                                Text(myAccount.id),
                                const Text(' PokerName: '),
                                Text(myAccount.name),
                              ],
                            ),
                          ), //名前・IDの
                        ],
                      ),
                    ),
                  ],
                )),
            Container(
              //投稿ページ
                alignment: Alignment.topCenter,
                padding: const EdgeInsets.all(10.0),
                margin: const EdgeInsets.only(
                  top: 10.0,
                  bottom: 10.0,
                  right: 0.0,
                  left: 0.0,
                ),
                width: MediaQuery.of(context).size.width,
                height: 150,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.black12),
                ),
                child: ListView.builder(
                  itemCount: postList.length,
                  itemBuilder: (context, index) {
                    return Container(
                      decoration: BoxDecoration(
                          border: index == 0
                              ? const Border(
                            top: BorderSide(
                                color: Colors.black45, width: 0),
                            bottom: BorderSide(
                                color: Colors.black45, width: 0),
                          )
                              : const Border(
                            bottom: BorderSide(
                                color: Colors.black45, width: 0),
                          )),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 10),
                      child: Row(
                        children: [
                          const CircleAvatar(
                            radius: 22,
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                                  children: [
                                    const Text(
                                      'Leje',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(DateFormat('M/d/yy')
                                        .format(postList[index].createdTime!))
                                  ],
                                ),
                                Text(postList[index].content)
                              ],
                            ),
                          )
                        ],
                      ),
                    );
                  },
                )),
          ], //追記：Columnの中のchildren
        ),
      ),
    );
  }
}

