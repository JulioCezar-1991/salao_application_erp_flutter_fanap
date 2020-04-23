import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

class SchedunlingPage extends StatefulWidget {
  @override
  _SchedunlingPageState createState() => _SchedunlingPageState();
}

class _SchedunlingPageState extends State<SchedunlingPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SfCalendar(
        view: CalendarView.week,
        initialSelectedDate: DateTime(2019, 12, 20, 12),
        appointmentTextStyle: TextStyle(
          color: Colors.red,
        ),
        timeZone: 'E. South America Standard Time',
        cellBorderColor: Theme.of(context).accentColor,
        backgroundColor: Colors.white,
        firstDayOfWeek: 1,
        headerHeight: 40,
        todayHighlightColor: Colors.pinkAccent,

        monthViewSettings: MonthViewSettings(
          showAgenda: true,
        ),
        //Configuração Header
        headerStyle: CalendarHeaderStyle(
          textAlign: TextAlign.left,
          textStyle: TextStyle(
            fontWeight: FontWeight.w500,
            fontStyle: FontStyle.normal,
            fontSize: 22,
            color: Theme.of(context).accentColor,
          ),
        ),

        //Configuração Style data
        viewHeaderStyle: ViewHeaderStyle(
          dayTextStyle: TextStyle(
            fontWeight: FontWeight.w500,
            fontStyle: FontStyle.normal,
            fontSize: 15,
            color: Theme.of(context).accentColor,
          ),
          dateTextStyle: TextStyle(
            fontWeight: FontWeight.w500,
            fontStyle: FontStyle.normal,
            fontSize: 15,
            color: Theme.of(context).accentColor,
          ),
        ),

        //Configuração Style hora
        timeSlotViewSettings: TimeSlotViewSettings(
          timeInterval: Duration(minutes: 30),
          timeFormat: "h:mm",
          timeRulerSize: 50,
          dateFormat: "d",
          dayFormat: "EEE",
          endHour: 18,
          startHour: 7,
          nonWorkingDays: <int>[DateTime.friday, DateTime.saturday],
          timeTextStyle: TextStyle(
            fontWeight: FontWeight.w500,
            fontStyle: FontStyle.normal,
            fontSize: 15,
            color: Theme.of(context).accentColor,
          ),
        ),
      ),
    );
  }
}
