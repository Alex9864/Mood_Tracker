/* PACKETS */
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

/* OTHER */
import 'package:mood_tracker/fadetransition.dart';

/* PAGES */
import 'package:mood_tracker/home/add_humor.dart';
import 'package:mood_tracker/home/settings.dart';
import 'package:mood_tracker/home/calendar.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
                colors: <Color>[Color(0xFF01044b), Color(0xFF1b2b69)]
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
                        colors: <Color>[Color(0xFF000124), Color(0xFF131e49)]
                    ),
                  ),
                ),
              )
          ),
          SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(16, 8, 16, 0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Card(
                            clipBehavior: Clip.antiAliasWithSaveLayer,
                            color: Color(0xFF30B2A3),
                            elevation: 5,
                            shape: CircleBorder(),
                            child: Image.network(
                              'https://eitrawmaterials.eu/wp-content/uploads/2016/09/person-icon.png',
                              width: 60,
                              height: 60,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(12, 0, 0, 0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Text(
                                  'Welcome back user !',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                    foreground: Paint()..shader = LinearGradient(colors: <Color>[Color(0xFF7d86fc),Color(0xFF444aee),]).createShader(Rect.fromLTWH(0.0, 0.0, 200.0, 70.0)),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * 0.90,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [Color(0xFF91fe7c), Color(0xFF7cfedd),],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                          ),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(top: 20),
                              child: Text(
                                'You are averall happy !',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 25,
                                  foreground: Paint()..shader = LinearGradient(colors: <Color>[Color(0xFF7d86fc),Color(0xFF444aee),]).createShader(Rect.fromLTWH(0.0, 0.0, 200.0, 70.0)),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(vertical: 10),
                              child: Image.network(
                                'https://cdn-icons-png.flaticon.com/512/1023/1023656.png',
                                width: 60,
                                height: 60,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(bottom: 20),
                              child: Text(
                                'Keep up the great work !',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                  foreground: Paint()..shader = LinearGradient(colors: <Color>[Color(0xFF7d86fc),Color(0xFF444aee),]).createShader(Rect.fromLTWH(0.0, 0.0, 200.0, 70.0)),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(0),
                        bottomRight: Radius.circular(0),
                        topLeft: Radius.circular(16),
                        topRight: Radius.circular(16),
                      ),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(20, 16, 20, 0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Text(
                                'Activities of the day',
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(16, 12, 16, 0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                width: 110,
                                height: 100,
                                decoration: BoxDecoration(
                                  color: Color(0xFFF1F4F8),
                                  boxShadow: [
                                    BoxShadow(
                                      blurRadius: 5,
                                      color: Color(0x3B000000),
                                      offset: Offset(0, 2),
                                    )
                                  ],
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.all(4),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.directions_run,
                                        color: Color(0xFF4400ff),
                                        size: 50,
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 8, 0, 0),
                                        child: Text(
                                          'Run',
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                width: 110,
                                height: 100,
                                decoration: BoxDecoration(
                                  color: Color(0xFFF1F4F8),
                                  boxShadow: [
                                    BoxShadow(
                                      blurRadius: 5,
                                      color: Color(0x3A000000),
                                      offset: Offset(0, 2),
                                    )
                                  ],
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: Padding(
                                  padding:
                                  EdgeInsetsDirectional.fromSTEB(4, 4, 4, 4),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.book,
                                        color: Color(0xFF4400ff),
                                        size: 50,
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(0, 8, 0, 0),
                                        child: Text(
                                          'Read',
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                width: 110,
                                height: 100,
                                decoration: BoxDecoration(
                                  color: Color(0xFFF1F4F8),
                                  boxShadow: [
                                    BoxShadow(
                                      blurRadius: 5,
                                      color: Color(0x39000000),
                                      offset: Offset(0, 2),
                                    )
                                  ],
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(4, 4, 4, 4),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.movie,
                                        color: Color(0xFF4400ff),
                                        size: 50,
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 8, 0, 0),
                                        child: Text(
                                          'Watch a film',
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(20, 12, 20, 12),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Text(
                                'Your stats',
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(bottom: 120),
                          child: Container(
                            width: MediaQuery.of(context).size.width * 0.92,
                            height: 120,
                            decoration: BoxDecoration(
                              color: Color(0xFFF1F4F8),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Expanded(
                                  child: Padding(
                                    padding:
                                    EdgeInsetsDirectional.fromSTEB(12, 0, 0, 0),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Text(
                                          'During the last month\nyou were :',
                                          textAlign: TextAlign.center,
                                        ),
                                        Column(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          children: [
                                            Padding(
                                              padding: EdgeInsets.symmetric(vertical: 10),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                children: [
                                                  Text(
                                                    '26% in a bad mood',
                                                  ),
                                                  Text(
                                                    '74% in a good mood',
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                              crossAxisAlignment: CrossAxisAlignment.center,
                                              children: [
                                                Icon(
                                                  Icons.mood,
                                                  color: Colors.green,
                                                  size: 30,
                                                ),
                                                Icon(
                                                  Icons.mood_bad,
                                                  color: Colors.red,
                                                  size: 30,
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
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
            colors: <Color>[Color(0xFF1b20bb), Color(0xFF536ac6)]
          ),
          borderRadius: BorderRadius.vertical(top: Radius.circular(40.0)),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            IconButton(icon: Icon(Icons.arrow_forward), onPressed: (){},
            ),
            IconButton(icon: Icon(Icons.home_outlined), onPressed: (){},
            ),
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
            IconButton(icon: Icon(Icons.calendar_today), onPressed: (){
              Navigator.push(context, FadeTrans(page: Calendar()));
            }),
            IconButton(icon: Icon(Icons.settings_outlined), onPressed: (){
              Navigator.push(context, FadeTrans(page: Settings()));
            }),
          ],
        ),
      ),
    );
  }
}
