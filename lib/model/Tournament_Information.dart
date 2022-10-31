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
