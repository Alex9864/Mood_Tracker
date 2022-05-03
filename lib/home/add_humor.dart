/* PACKETS */
import 'package:flutter/material.dart';

/* OTHER */
import 'package:mood_tracker/fadetransition.dart';

/* PAGES */
import 'package:mood_tracker/home/home_page.dart';
import 'package:mood_tracker/home/settings.dart';
import 'package:mood_tracker/home/calendar.dart';

class AddHumor extends StatefulWidget {
  const AddHumor({Key? key}) : super(key: key);

  @override
  State<AddHumor> createState() => _AddHumorState();
}

class Tech
{
  String label;
  Color color;
  Tech(this.label, this.color);
}

class _AddHumorState extends State<AddHumor> {

  int selectedIndex = 0;

  List<Tech> _chipsList = [
    Tech("Angry", Colors.red),
    Tech("Sad", Colors.blue),
    Tech("Tired", Colors.purpleAccent),
    Tech("Neutral", Colors.grey),
    Tech("Happy", Colors.green),
  ];

  Color colora = Color(0xFFa09eff);
  Color colorb = Color(0xFFa3ffac);
  Color colorc = Color(0xFFffa8a8);

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
              colors: [
                Color(0xFFa09eff),
                Color(0xFFa3ffac),
                Color(0xFFffa8a8),
              ],
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
                      colors: [
                        Color(0xFF8280ff),
                        Color(0xFF80ff8e),
                        Color(0xFFfe7c7c),
                      ],
                    ),
                  ),
                ),
              )
          ),
          Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(vertical: 20),
                child: Center(
                  child: Wrap(
                    spacing: 5,
                    direction: Axis.horizontal,
                    children: techChips(),
                  ),
                ),
              ),
              Text(
                'How was your day ?',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 30,
                    color: Color(0xFF6eff9d)
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 30),
                child: Container(
                  width: 350.0,
                  child: TextField(
                    style: TextStyle(
                        fontSize: 15,
                        color: Color(0xFFffffff)
                    ),
                    minLines: 15,
                    maxLines: 15,
                    keyboardType: TextInputType.multiline,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(width: 2, color: Color(0xFF71fea0)),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(width: 3, color: Color(0xFF71fea0)),
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                  ),
                ),
              ),
              Container(
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
                    'Finished !',
                    style: TextStyle(
                        fontSize: 20,
                        color: Color(0xFF5bc9c0)
                    ),
                  ),
                    onPressed: (){ Navigator.push(context, FadeTrans(page: Calendar())); }
                ),
              ),
            ],
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
            colors: [
              Color(0xFFa09eff),
              Color(0xFFa3ffac),
              Color(0xFFffa8a8),
            ],
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
                color: Color(0xFFbdffd3),
                shape: BoxShape.circle,
                border: Border.all(
                  color: Color(0xFFe0ffeb),
                  width: 3,
                ),
              ),
              child: Stack(
                children: [
                  Align(
                    alignment: AlignmentDirectional(0, 100),
                    child: IconButton(icon: Icon(Icons.add), onPressed: (){
                      Navigator.push(context, FadeTrans(page: AddHumor()));
                    }),
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
  List<Widget> techChips () {
    List<Widget> chips = [];
    for (int i=0; i< _chipsList.length; i++) {
      Widget item = ChoiceChip(
        label: Text(_chipsList[i].label),
        labelStyle: TextStyle(color: Colors.white),
        backgroundColor: _chipsList[i].color,
        selected: selectedIndex == i,
        onSelected: (bool value)
        {
          setState(() {
            selectedIndex = i;
          });
        },
      );
      chips.add(item);
    }
    return chips;
  }
}
