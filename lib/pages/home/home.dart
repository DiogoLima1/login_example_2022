import 'package:flutter/material.dart';
import 'package:login_example/utilities/widgets/drawer.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF591FF8),
        title:
            const Align(alignment: Alignment.centerRight, child: Text('Home')),
        centerTitle: false,
      ),
      drawer: const DrawerWidget(),
      body: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFF591FF8),
              Colors.white,
            ],
          )),
          child: SingleChildScrollView(
            child: SfCalendar(
              showCurrentTimeIndicator: true,
              showDatePickerButton: true,
              view: CalendarView.schedule,
              dataSource: MeetingDataSource(_getDataSource()),
              // by default the month appointment display mode set as Indicator, we can
              // change the display mode as appointment using the appointment display
              // mode property
              //  monthViewSettings: const MonthViewSettings(
              //     appointmentDisplayMode:
              //          MonthAppointmentDisplayMode.appointment),
              scheduleViewSettings: const ScheduleViewSettings(
                hideEmptyScheduleWeek: true,
                monthHeaderSettings: MonthHeaderSettings(
                    textAlign: TextAlign.start,
                    height: 50,
                    backgroundColor: Colors.transparent,
                    // backgroundColor:
                    //     AppColors.unisuamLaranjaPrincipal.withOpacity(0.45),
                    monthTextStyle:
                        TextStyle(color: Colors.black, fontSize: 18)),
                weekHeaderSettings: WeekHeaderSettings(
                    // height: 70,
                    backgroundColor: Colors.transparent,
                    weekTextStyle:
                        TextStyle(color: Colors.black, fontSize: 14)),
              ),
            ),
          )),
    );
  }
}

List<Meeting> _getDataSource() {
  final List<Meeting> meetings = <Meeting>[];
  final DateTime today = DateTime.now();
  final DateTime startTime =
      DateTime(today.year, today.month, today.day, 9, 0, 0);
  final DateTime startTime2 = DateTime(today.year, 4, 5, 12, 0, 0);
  final DateTime startTime3 = DateTime(today.year, 3, 9, 15, 0, 0);
  final DateTime startTime4 = DateTime(today.year, 5, 3, 17, 0, 0);

  final DateTime endTime = startTime.add(const Duration(hours: 2));
  final DateTime endTime2 = startTime.add(const Duration(hours: 3));
  final DateTime endTime3 = startTime3.add(const Duration(hours: 3));
  final DateTime endTime4 = startTime3.add(const Duration(hours: 2));

  meetings.add(Meeting(
      'Conference', startTime, endTime, const Color(0xFF0F8644), false));
  meetings.add(Meeting(
      'Conference2', startTime3, endTime2, const Color(0xFF86520F), false));
  meetings.add(Meeting(
      'Conference3', startTime2, endTime3, const Color(0xFF185EF5), false));
  meetings.add(Meeting(
      'Conference4', startTime4, endTime4, const Color(0xFF185EF5), false));
  return meetings;
}

/// An object to set the appointment collection data source to calendar, which
/// used to map the custom appointment data to the calendar appointment, and
/// allows to add, remove or reset the appointment collection.
class MeetingDataSource extends CalendarDataSource {
  /// Creates a meeting data source, which used to set the appointment
  /// collection to the calendar
  MeetingDataSource(List<Meeting> source) {
    appointments = source;
  }

  @override
  DateTime getStartTime(int index) {
    return _getMeetingData(index).from;
  }

  @override
  DateTime getEndTime(int index) {
    return _getMeetingData(index).to;
  }

  @override
  String getSubject(int index) {
    return _getMeetingData(index).eventName;
  }

  @override
  Color getColor(int index) {
    return _getMeetingData(index).background;
  }

  @override
  bool isAllDay(int index) {
    return _getMeetingData(index).isAllDay;
  }

  Meeting _getMeetingData(int index) {
    final dynamic meeting = appointments![index];
    late final Meeting meetingData;
    if (meeting is Meeting) {
      meetingData = meeting;
    }

    return meetingData;
  }
}

/// Custom business object class which contains properties to hold the detailed
/// information about the event data which will be rendered in calendar.
class Meeting {
  /// Creates a meeting class with required details.
  Meeting(this.eventName, this.from, this.to, this.background, this.isAllDay);

  /// Event name which is equivalent to subject property of [Appointment].
  String eventName;

  /// From which is equivalent to start time property of [Appointment].
  DateTime from;

  /// To which is equivalent to end time property of [Appointment].
  DateTime to;

  /// Background which is equivalent to color property of [Appointment].
  Color background;

  /// IsAllDay which is equivalent to isAllDay property of [Appointment].
  bool isAllDay;
}
