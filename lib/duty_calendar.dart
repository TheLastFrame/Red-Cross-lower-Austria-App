import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:http/http.dart' as http;

CalendarController _calendarController;

class MyDuties extends StatefulWidget {
  MyDuties({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyDutiesState createState() => _MyDutiesState();
}

class _MyDutiesState extends State<MyDuties> {
  @override
  void initState() {
    super.initState();
    _calendarController = CalendarController();
  }

  @override
  void dispose() {
    _calendarController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      body: Column(
        children: <Widget>[
          TableCalendar(
            //locale: 'de_DE',
            //initialCalendarFormat: CalendarFormat.month,
            //formatAnimation: FormatAnimation.slide,
            //startingDayOfWeek: StartingDayOfWeek.monday,
            calendarController: _calendarController,
          ),
        ],
      ),
    );
  }
}
