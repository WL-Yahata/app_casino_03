import 'package:flutter/material.dart';

class TournamentUIDetail extends StatefulWidget {
  const TournamentUIDetail({Key? key}) : super(key: key);

  @override
  State<TournamentUIDetail> createState() => _TournamentUIDetailState();
}

class _TournamentUIDetailState extends State<TournamentUIDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          '個別のトーナメント名',
          style: TextStyle(color: Colors.black54),
        ),
        backgroundColor: Colors.white,
        elevation: 1,
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 10,
          ),
          const Text(
            'tournamentName',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.normal),
          ),

          Container(
            alignment: Alignment.topCenter,
            padding: const EdgeInsets.all(2.0),
            margin: const EdgeInsets.all(10.0),
            width: MediaQuery.of(context).size.width * 0.6,
            height: MediaQuery.of(context).size.height * 0.2,
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: Colors.black12),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: FittedBox(
                    fit: BoxFit.fitWidth,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text(
                          '生き残っとる人の数',
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.normal),
                        ),
                        Text(
                          '/',
                          style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.normal,
                              color: Colors.black),
                        ),
                        Text(
                          'entry数',
                          style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.normal,
                              color: Colors.black),
                        ),
                      ],
                    ),
                  ),
                ),
                FittedBox(
                  fit: BoxFit.fitWidth,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        'average  : ',
                        style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.normal,
                            color: Colors.black),
                      ),
                      Text(
                        'averageを出す',
                        style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.normal,
                            color: Colors.black),
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      'add on   : ',
                      style: TextStyle(
                          fontWeight: FontWeight.normal, color: Colors.black),
                    ),
                    Text('addOn数'),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      'Rebuy   : ',
                      style: TextStyle(
                          fontWeight: FontWeight.normal, color: Colors.black),
                    ),
                    Text('reEntry数'),
                  ],
                ),
              ],
            ),
          ), //entryなど
          Container(
            alignment: Alignment.topCenter,
            padding: const EdgeInsets.all(2.0),
            margin: const EdgeInsets.all(0.0),
            width: MediaQuery.of(context).size.width * 0.8,
            height: MediaQuery.of(context).size.height * 0.2,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                FittedBox(
                  fit: BoxFit.fitWidth,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        'Re Entry  : ',
                        style: TextStyle(
                            fontWeight: FontWeight.normal,
                            color: Colors.black54),
                      ),
                      Text(
                        'reEntryがありか、なしか',
                        style: TextStyle(
                            fontWeight: FontWeight.normal,
                            color: Colors.black54),
                      ),
                      Text(
                        '   AddOn  : ',
                        style: TextStyle(
                            fontWeight: FontWeight.normal,
                            color: Colors.black54),
                      ),
                      Text(
                        'addOnがありか、なしか',
                        style: TextStyle(
                            fontWeight: FontWeight.normal,
                            color: Colors.black54),
                      ),
                    ],
                  ),
                ),
                FittedBox(
                  fit: BoxFit.fitWidth,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        'Start Stack  : ',
                        style: TextStyle(
                            fontWeight: FontWeight.normal,
                            color: Colors.black54),
                      ),
                      Text(
                        'startstackの量',
                        style: TextStyle(
                            fontWeight: FontWeight.normal,
                            color: Colors.black54),
                      ),
                      Text(
                        '   AddOn stack  : ',
                        style: TextStyle(
                            fontWeight: FontWeight.normal,
                            color: Colors.black54),
                      ),
                      Text(
                        'addOnstackの量',
                        style: TextStyle(
                            fontWeight: FontWeight.normal,
                            color: Colors.black54),
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      '  Blind Time  : ',
                      style: TextStyle(
                          fontWeight: FontWeight.normal, color: Colors.black54),
                    ),
                    Text(
                      'blindの時間',
                      style: TextStyle(
                          fontWeight: FontWeight.normal, color: Colors.black54),
                    ),
                  ],
                )
              ],
            ),
          ), //細かいルール
          Container(), //table
        ],
      ),
    );
  }
}
