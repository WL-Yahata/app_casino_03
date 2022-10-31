import 'package:flutter/material.dart';

class ScheAddTournament extends StatefulWidget {
  const ScheAddTournament({Key? key}) : super(key: key);

  @override
  State<ScheAddTournament> createState() => _ScheAddTournamentState();
}

class _ScheAddTournamentState extends State<ScheAddTournament> {
  TextEditingController tournamentNameController = TextEditingController();
  TextEditingController entryFeeController = TextEditingController();
  TextEditingController reEntryFeeController = TextEditingController();
  TextEditingController addOnFeeController = TextEditingController();
  TextEditingController whichReEntryController = TextEditingController();
  TextEditingController whichAddOnController = TextEditingController();
  TextEditingController entryStackController = TextEditingController();
  TextEditingController addOnStackController = TextEditingController();
  TextEditingController timeOfBlindController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
