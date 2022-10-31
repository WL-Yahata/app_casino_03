class TournamentInformation {
  int theNumberOfEntryPeople;
  int theNumberOfAlive;
  int theNumberOfEntry;
  int theNumberOfReEntry;
  int theNumberOfAddOn;
  DateTime? updatedTime;

  TournamentInformation({
    required this.theNumberOfEntryPeople,
    required this.theNumberOfAlive,
    required this.theNumberOfEntry,
    required this.theNumberOfReEntry,
    required this.theNumberOfAddOn,
    this.updatedTime,
  });
}

class TournamentDetail {
  String tournamentName;

  String entryFee;
  String reEntryFee;
  String addOnFee;
  String whichReEntry;
  String whichAddOn;
  String startStack;
  String addOnStack;
  String timeOfBlind;

  TournamentDetail({
    required this.tournamentName,
    required this.entryFee,
    required this.reEntryFee,
    required this.addOnFee,
    required this.whichReEntry,
    required this.whichAddOn,
    required this.startStack,
    required this.addOnStack,
    required this.timeOfBlind,
  });
}
