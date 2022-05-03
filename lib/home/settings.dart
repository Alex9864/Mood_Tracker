/* PACKETS */
import 'package:flutter/material.dart';
import 'package:expandable/expandable.dart';

/* OTHER */
import 'package:mood_tracker/fadetransition.dart';

/* PAGES */
import 'package:mood_tracker/home/home_page.dart';
import 'package:mood_tracker/home/add_humor.dart';
import 'package:mood_tracker/home/calendar.dart';

class Settings extends StatefulWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {

  bool n1 = true;
  bool n2 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF262D34),
      resizeToAvoidBottomInset : false,
      extendBody: true,
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: <Color>[Color(0xFF8ffe7c), Color(0xFF71fea0)]
            ),
          ),
        ),
        iconTheme: IconThemeData(color: Color(0xFF7288C8)),
        automaticallyImplyLeading: true,
        actions: [],
        centerTitle: true,
        elevation: 0,
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
                        colors: <Color>[Color(0xFF68b85a), Color(0xFF5bc980)]
                    ),
                  ),
                ),
              )
          ),
          SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.15,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: <Color>[Color(0xFF5ab881), Color(0xFF5bc9c0)]
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Card(
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          color: Color(0xFF30B2A3),
                          elevation: 5,
                          shape: CircleBorder(),
                          child: Image.network(
                            'https://eitrawmaterials.eu/wp-content/uploads/2016/09/person-icon.png',
                            width: 80,
                            height: 80,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(8, 0, 0, 0),
                            child: Text(
                              'Username',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 25,
                                foreground: Paint()..shader = LinearGradient(colors: <Color>[Color(0xFF8ffe7c), Color(0xFF71fea0)]).createShader(Rect.fromLTWH(0.0, 0.0, 200.0, 70.0)),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 15, 0, 0),
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.9,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: <Color>[Color(0xFF5ab881), Color(0xFF5bc9c0)]
                      ),
                      border: Border.all(
                        color: Color(0xFF67c294),
                        width: 3,
                      ),
                    ),
                    child: ExpandableNotifier(
                      initialExpanded: false,
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(16, 7, 4, 7),
                        child: ExpandablePanel(
                          header: Text(
                            'Edit Profile',
                            style: TextStyle(
                              fontSize: 20,
                              foreground: Paint()..shader = LinearGradient(colors: <Color>[Color(0xFF87f274), Color(0xFF6bf297)]).createShader(Rect.fromLTWH(0.0, 0.0, 200.0, 70.0)),
                            ),
                          ),
                          collapsed: Container(
                          ),
                          expanded: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Text(
                                      'Edit profile picture   ',
                                      style: TextStyle(
                                          fontSize: 15,
                                          color: Color(0xFF6eff9d)
                                      ),
                                    ),
                                    Icon(
                                      Icons.mode_edit,
                                      color: Color(0xFF6eff9d),
                                      size: 24,
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Text(
                                      'Edit username   ',
                                      style: TextStyle(
                                          fontSize: 15,
                                          color: Color(0xFF6eff9d)
                                      ),
                                    ),
                                    Icon(
                                      Icons.mode_edit,
                                      color: Color(0xFF6eff9d),
                                      size: 24,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          theme: ExpandableThemeData(
                            tapHeaderToExpand: true,
                            tapBodyToExpand: false,
                            tapBodyToCollapse: false,
                            headerAlignment: ExpandablePanelHeaderAlignment.center,
                            hasIcon: true,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 12, 0, 0),
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.9,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: <Color>[Color(0xFF5ab881), Color(0xFF5bc9c0)]
                      ),
                      border: Border.all(
                        color: Color(0xFF67c294),
                        width: 3,
                      ),
                    ),
                    child: ExpandableNotifier(
                      initialExpanded: false,
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(16, 7, 4, 7),
                        child: ExpandablePanel(
                          header: Text(
                            'Change Password',
                            style: TextStyle(
                              fontSize: 20,
                              foreground: Paint()..shader = LinearGradient(colors: <Color>[Color(0xFF87f274), Color(0xFF6bf297)]).createShader(Rect.fromLTWH(0.0, 0.0, 200.0, 70.0)),
                            ),
                          ),
                          collapsed: Container(
                          ),
                          expanded: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Text(
                                      'Old Password :',
                                      style: TextStyle(
                                          fontSize: 15,
                                          color: Color(0xFF6eff9d)
                                      ),
                                    ),
                                    Expanded(
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                                        child: TextField(
                                          style: TextStyle(
                                              fontSize: 15,
                                              color: Color(0xFF6eff9d)
                                          ),
                                          obscureText: true,
                                          decoration: InputDecoration(
                                            enabledBorder: OutlineInputBorder(
                                              borderSide: const BorderSide(width: 2, color: Color(0xFF71fea0)),
                                              borderRadius: BorderRadius.circular(15),
                                            ),
                                            contentPadding: EdgeInsets.all(8),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Text(
                                      'New Password :',
                                      style: TextStyle(
                                          fontSize: 15,
                                          color: Color(0xFF6eff9d)
                                      ),
                                    ),
                                    Expanded(
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                                        child: TextField(
                                          style: TextStyle(
                                              fontSize: 15,
                                              color: Color(0xFF6eff9d)
                                          ),
                                          obscureText: true,
                                          decoration: InputDecoration(
                                            enabledBorder: OutlineInputBorder(
                                              borderSide: const BorderSide(width: 2, color: Color(0xFF71fea0)),
                                              borderRadius: BorderRadius.circular(15),
                                            ),
                                            contentPadding: EdgeInsets.all(8),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  decoration: const ShapeDecoration(
                                    shape: StadiumBorder(),
                                    gradient: LinearGradient(
                                        begin: Alignment.topLeft,
                                        end: Alignment.bottomRight,
                                        colors: <Color>[Color(0xFF8ffe7c), Color(0xFF71fea0)]
                                    ),
                                  ),
                                  child: MaterialButton(
                                    materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                                    shape: const StadiumBorder(),
                                    child: const Text(
                                      'Change Password',
                                      style: TextStyle(
                                          fontSize: 15,
                                          color: Color(0xFF5bc9c0)
                                      ),
                                    ),
                                    onPressed: () {},
                                  ),
                                ),
                              )
                            ],
                          ),
                          theme: ExpandableThemeData(
                            tapHeaderToExpand: true,
                            tapBodyToExpand: false,
                            tapBodyToCollapse: false,
                            headerAlignment: ExpandablePanelHeaderAlignment.center,
                            hasIcon: true,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 12, 0, 0),
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.9,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: <Color>[Color(0xFF5ab881), Color(0xFF5bc9c0)]
                      ),
                      border: Border.all(
                        color: Color(0xFF67c294),
                        width: 3,
                      ),
                    ),
                    child: ExpandableNotifier(
                      initialExpanded: false,
                      child: ScrollOnExpand(
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(16, 7, 4, 7),
                          child: ExpandablePanel(
                            header: Text(
                              'Notification Settings',
                              style: TextStyle(
                                fontSize: 20,
                                foreground: Paint()..shader = LinearGradient(colors: <Color>[Color(0xFF87f274), Color(0xFF6bf297)]).createShader(Rect.fromLTWH(0.0, 0.0, 200.0, 70.0)),
                              ),
                            ),
                            collapsed: Container(
                            ),
                            expanded: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                SwitchListTile(
                                  value: n1 ??= true,
                                  onChanged: (newValue) => setState(() => n1 = newValue),
                                  activeColor: Color(0xFF6eff9d),
                                  inactiveTrackColor: Color(0xFF5ab881),
                                  title: Text(
                                    'Remind me to record my day every evening',
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: Color(0xFF6eff9d)
                                    ),
                                  ),
                                  dense: false,
                                  controlAffinity: ListTileControlAffinity.trailing,
                                ),
                                SwitchListTile(
                                  value: n2 ??= true,
                                  onChanged: (newValue) => setState(() => n2 = newValue),
                                  activeColor: Color(0xFF6eff9d),
                                  inactiveTrackColor: Color(0xFF5ab881),
                                  title: Text(
                                    'Allow suggestions notifications',
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: Color(0xFF6eff9d)
                                    ),
                                  ),
                                  dense: false,
                                  controlAffinity: ListTileControlAffinity.trailing,
                                ),
                              ],
                            ),
                            theme: ExpandableThemeData(
                              tapHeaderToExpand: true,
                              tapBodyToExpand: false,
                              tapBodyToCollapse: false,
                              headerAlignment: ExpandablePanelHeaderAlignment.center,
                              hasIcon: true,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 12, 0, 70),
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.9,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: <Color>[Color(0xFF5ab881), Color(0xFF5bc9c0)]
                      ),
                      border: Border.all(
                        color: Color(0xFF67c294),
                        width: 3,
                      ),
                    ),
                    child: ExpandableNotifier(
                      initialExpanded: false,
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(16, 7, 4, 7),
                        child: ExpandablePanel(
                          header: Text(
                            'Terms of Services',
                            style: TextStyle(
                              fontSize: 20,
                              foreground: Paint()..shader = LinearGradient(colors: <Color>[Color(0xFF87f274), Color(0xFF6bf297)]).createShader(Rect.fromLTWH(0.0, 0.0, 200.0, 70.0)),
                            ),
                          ),
                          collapsed: Container(
                          ),
                          expanded: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer rhoncus lorem nulla, non semper justo imperdiet ut. Fusce vel ante augue. Maecenas sit amet erat nunc. Etiam finibus elit nec risus interdum tincidunt. In rutrum felis at velit tincidunt tempus. Nunc tristique nec velit sed ullamcorper. Praesent suscipit erat massa, in ornare neque ornare ut.',
                                    style: TextStyle(
                                    fontSize: 15,
                                    color: Color(0xFF6eff9d)
                                ),
                                ),
                              ),
                            ],
                          ),
                          theme: ExpandableThemeData(
                            tapHeaderToExpand: true,
                            tapBodyToExpand: false,
                            tapBodyToCollapse: false,
                            headerAlignment: ExpandablePanelHeaderAlignment.center,
                            hasIcon: true,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: Container(
        height: 60,
        width: double.maxFinite,
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: <Color>[Color(0xFF8ffe7c), Color(0xFF71fea0)]
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
            IconButton(icon: Icon(Icons.calendar_today), onPressed: (){
              Navigator.push(context, FadeTrans(page: Calendar()));
            }),
            IconButton(icon: Icon(Icons.settings_outlined), onPressed: (){},
            ),
          ],
        ),
      ),
    );
  }
}
