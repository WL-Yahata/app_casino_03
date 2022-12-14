import 'package:app_casino_03/view/ownersView/ownersSchedule/scheTournamentList.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

class OwnersSchedulePage extends StatefulWidget {
  const OwnersSchedulePage({Key? key}) : super(key: key);

  @override
  State<OwnersSchedulePage> createState() => _OwnersSchedulePageState();
}

class _OwnersSchedulePageState extends State<OwnersSchedulePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            'schedule',
            style: TextStyle(color: Colors.black54),
          ),
          backgroundColor: Colors.white,
          elevation: 1,
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const ScheTournamentList()));
          },
          backgroundColor: Colors.black45,
          child: const Icon(Icons.list),
        ),
        body: SfCalendar(
          view: CalendarView.month,
          monthViewSettings: const MonthViewSettings(
            appointmentDisplayMode: MonthAppointmentDisplayMode.appointment,
            showAgenda: true,
            showTrailingAndLeadingDates: false,
          ),
        ),
      ),
    );
  }
}
