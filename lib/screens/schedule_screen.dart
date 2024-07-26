import 'package:flutter/material.dart';
import 'package:peter_testfolder/widgets/cancelled_schedule.dart';
import 'package:peter_testfolder/widgets/completed_schedule.dart';
import 'package:peter_testfolder/widgets/upcoming_schedule.dart';

class ScheduleScreen extends StatefulWidget {
  const ScheduleScreen({super.key});

  @override
  State<ScheduleScreen> createState() => _ScheduleScreentState();
}

class _ScheduleScreentState extends State<ScheduleScreen> {
  
  int _buttonIndex = 0;

  final _scheduleWidgets = [
    //Upcoming Widgets
    UpcomingSchedule(),
    //Completed Widgets
    CompletedSchedule(),
    //Canceled Widgets
    CancelledSchedule(),
   
  
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.only(top: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Text(
                "Schedules",
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.w500,
                  color: Color(0xFF7165D6),
                ),
              ),
              ),

              SizedBox(height: 20),
              Container(
              padding: EdgeInsets.all(5),
              margin: EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                color: Color(0xFF4F6FA),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: (){
                      setState(() {
                        _buttonIndex = 0;
                      });
                    },
                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: 12, horizontal: 25),
                      decoration: BoxDecoration(
                        color: _buttonIndex == 0 
                        ? Color(0xFF7165D6) 
                        : Colors.transparent,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Text("Upcoming", style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                          color: _buttonIndex == 0
                        ? Colors.white 
                        : Colors.black38,
                      ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: (){
                      setState(() {
                        _buttonIndex = 1;
                      });
                    },
                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: 12, horizontal: 25),
                      decoration: BoxDecoration(
                    color: _buttonIndex == 1 
                    ? Color(0xFF7165D6) 
                    : Colors.transparent,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Text("Completed",
                       style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                          color: _buttonIndex == 1
                        ? Colors.white 
                        : Colors.black38,
                      ),
                      ),
                    ),
                  ),
                  InkWell(
                   onTap: (){
                      setState(() {
                        _buttonIndex = 2;
                      });
                    },
                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: 12, horizontal: 25),
                      decoration: BoxDecoration(
                        color: _buttonIndex == 2
                         ? Color(0xFF7165D6) 
                         : Colors.transparent,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Text("Canceled",
                       style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: _buttonIndex == 2
                        ? Colors.white 
                        : Colors.black38,
                      ),
                      ),
                    ),
                  ),
                ],
              ),
              ),
              SizedBox(height: 30),
              _scheduleWidgets[_buttonIndex],
          ],
        ),
      ),
    );
  }
}