import 'package:app_casino_03/view/ownersView/ownersHome/ownersHomePage.dart';
import 'package:app_casino_03/view/ownersView/ownersOrder/ownersOrderPage.dart';
import 'package:app_casino_03/view/ownersView/ownersSchedule/ownersSchedulePage.dart';
import 'package:app_casino_03/view/ownersView/ownersTournament/ownersTouramentPage.dart';
import 'package:flutter/material.dart';

class OwnersScreenPage extends StatefulWidget {
  const OwnersScreenPage({Key? key}) : super(key: key);

  @override
  State<OwnersScreenPage> createState() => _OwnersScreenPageState();
}

class _OwnersScreenPageState extends State<OwnersScreenPage> {
  int selectedIndex = 0;
  List<Widget> pageList = [
    const OwnersHomePage(),
    const OwnersTournamentPage(),
    const OwnersOrderPage(),
    const OwnersSchedulePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pageList[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: Colors.black45,
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.balance,
                color: Colors.black45,
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.bakery_dining,
                color: Colors.black45,
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.calendar_month,
                color: Colors.black45,
              ),
              label: ''),
        ],
        currentIndex: selectedIndex,
        onTap: (index) {
          setState(() {
            selectedIndex = index;
          });
        },
      ),
    );
  }
}
