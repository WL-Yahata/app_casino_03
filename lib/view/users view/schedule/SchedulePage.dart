import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

class SchedulePage extends StatefulWidget {
  const SchedulePage({Key? key}) : super(key: key);

  @override
  State<SchedulePage> createState() => _SchedulePageState();
}

class _SchedulePageState extends State<SchedulePage> {
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
        body: Container(
          child: SfCalendar(
            view: CalendarView.month,
            monthViewSettings: const MonthViewSettings(
              appointmentDisplayMode: MonthAppointmentDisplayMode.appointment,
              showAgenda: true,
              showTrailingAndLeadingDates: false,
            ),
            dataSource: _getCalendarDataSource(),
          ),
        ),
      ),
    );
  }
}

_AppointmentDataSource _getCalendarDataSource() {
  List<Appointment> appointments = <Appointment>[];

  appointments.add(Appointment(
      startTime: DateTime(2022, 7, 4, 16),
      endTime: DateTime(2022, 7, 4, 18),
      subject: 'Monday 16:00~',
      color: Colors.blue.shade200,
      recurrenceRule: 'FREQ=DAILY;INTERVAL=7;COUNT=70'));
  appointments.add(Appointment(
      startTime: DateTime(2022, 7, 4, 18),
      endTime: DateTime(2022, 7, 4, 20),
      subject: 'Monday 18:00~',
      color: Colors.blue,
      recurrenceRule: 'FREQ=DAILY;INTERVAL=7;COUNT=70'));
  appointments.add(Appointment(
      startTime: DateTime(2022, 7, 4, 20),
      endTime: DateTime(2022, 7, 4, 22),
      subject: 'Monday 20:00~',
      color: Colors.blue.shade300,
      recurrenceRule: 'FREQ=DAILY;INTERVAL=7;COUNT=70'));

  return _AppointmentDataSource(appointments);
}

class _AppointmentDataSource extends CalendarDataSource {
  _AppointmentDataSource(List<Appointment> source) {
    appointments = source;
  }
}
