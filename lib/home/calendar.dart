/* PACKETS */
import 'package:flutter/material.dart';

/* OTHER */
import 'package:mood_tracker/fadetransition.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

/* PAGES */
import 'package:mood_tracker/home/add_humor.dart';
import 'package:mood_tracker/home/home_page.dart';
import 'package:mood_tracker/home/settings.dart';

class Calendar extends StatefulWidget {
  const Calendar({Key? key}) : super(key: key);

  @override
  State<Calendar> createState() => _CalendarState();
}

class _CalendarState extends State<Calendar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      resizeToAvoidBottomInset : false,
      extendBody: true,
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: <Color>[Color(0xFF7f87a1), Color(0xFFb1b6c7)]
            ),
          ),
        ),
        iconTheme: IconThemeData(color: Color(0xFF7288C8)),
        automaticallyImplyLeading: true,
        actions: [],
        centerTitle: true,
        elevation: 50,
      ),
      body: Stack(
        children: [
          SafeArea(
              bottom: false,
              child: GestureDetector(
                onTap: () => FocusScope.of(context).unfocus(),
                child: Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: <Color>[Color(0xFF595e70), Color(0xFF8f93a1)]
                    ),
                  ),
                ),
              ),
          ),
          SfCalendar(
            view: CalendarView.month,
            firstDayOfWeek: 1,
            dataSource: MeetingDataSource(getAppointments()),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        height: 60,
        width: double.maxFinite,
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: <Color>[Color(0xFF7f87a1), Color(0xFFb1b6c7)]
          ),
          borderRadius: BorderRadius.vertical(top: Radius.circular(40.0)),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            IconButton(icon: Icon(Icons.arrow_forward), onPressed: (){},
            ),
            IconButton(icon: Icon(Icons.home_outlined), onPressed: (){
              Navigator.push(context, FadeTrans(page: HomePage()));
            }),
            Container(
              width: 53,
              height: 53,
              decoration: BoxDecoration(
                color: Color(0xFFced1db),
                shape: BoxShape.circle,
                border: Border.all(
                  color: Color(0xFFdfe3f0),
                  width: 3,
                ),
              ),
              child: Stack(
                children: [
                  Align(
                    alignment: AlignmentDirectional(0, 100),
                    child: IconButton(icon: Icon(Icons.add), onPressed: (){
                      showDialog(
                        context: context, builder: (context) => AlertDialog(
                        shape: RoundedRectangleBorder(
                            borderRadius:
                            BorderRadius.circular(20.0)
                        ),
                        content: Container(
                          height: 200,
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Icon(
                                Icons.edit,
                                color: Colors.green,
                                size: 50,
                              ),
                              Text(
                                'Record your current day ?',
                                textAlign: TextAlign.center,
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  IconButton(
                                      icon: Icon(
                                        Icons.check,
                                        color: Colors.greenAccent,
                                        size: 35,
                                      ),
                                      onPressed: (){ Navigator.push(context, FadeTrans(page: AddHumor())); }
                                  ),
                                  IconButton(
                                      icon: Icon(
                                        Icons.close,
                                        color: Colors.redAccent,
                                        size: 35,
                                      ),
                                      onPressed: () => Navigator.pop(context)
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      );
                    },
                    ),
                  ),
                ],
              ),
            ),
            IconButton(icon: Icon(Icons.calendar_today), onPressed: (){},
            ),
            IconButton(icon: Icon(Icons.settings_outlined), onPressed: (){
              Navigator.push(context, FadeTrans(page: Settings()));
            }),
          ],
        ),
      ),
    );
  }
}

List<Appointment> getAppointments(){
  List<Appointment> meetings = <Appointment>[];
  final DateTime today = DateTime.now();
  final DateTime startTime = DateTime(today.year, today.month, today.day, 0, 0, 1);
  final DateTime endTime = DateTime(today.year, today.month, today.day, 23, 59, 59);

  meetings.add(Appointment(startTime: startTime, endTime: endTime, color: Colors.blue, isAllDay: true));
  return meetings;
}

class MeetingDataSource extends CalendarDataSource {
  MeetingDataSource(List<Appointment> source) {
    appointments = source;
  }
}