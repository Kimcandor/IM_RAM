import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: CalendarScreen(),
    );
  }
}

class CalendarScreen extends StatefulWidget {
  const CalendarScreen({super.key});

  @override
  _CalendarScreenState createState() => _CalendarScreenState();
}

class _CalendarScreenState extends State<CalendarScreen> {
  DateTime _selectedDate = DateTime.now();
  TimeOfDay _selectedTime = TimeOfDay.now();

  void _selectDate(DateTime selectedDay, DateTime focusedDay) {
    setState(() {
      _selectedDate = selectedDay;
    });
  }

  void _selectTime() async {
    final TimeOfDay? pickedTime = await showTimePicker(
      context: context,
      initialTime: _selectedTime,
    );

    if (pickedTime != null && pickedTime != _selectedTime) {
      setState(() {
        _selectedTime = pickedTime;
      });
    }
  }

  void _scheduleMaintenance() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Maintenance Scheduled'),
          content: Text(
            'Your maintenance is scheduled for ${_selectedDate.toLocal().toString().split(' ')[0]} at ${_selectedTime.format(context)}.\nGo to the Schedule Page to see.',
          ),
          actions: [
            TextButton(
              child: Text('Close'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Custom header
          Padding(
            padding: const EdgeInsets.only(top: 40, left: 15, right: 15, bottom: 20),
            child: Row(
              children: [
                IconButton(
                  icon: Icon(Icons.arrow_back, color: Color(0xFF7165D6)),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
                SizedBox(width: 10),
                Text(
                  "Sched Appointment",
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF7165D6),
                  ),
                ),
              ],
            ),
          ),
           Padding(
                padding: EdgeInsets.only(left: 15, right: 15, bottom: 20),
                child: Text(
                  "Set the time for you and your technician!",
                  style: TextStyle(
                    fontSize: 25,
                    color: Color(0xFF7165D6),
                  ),
                ),
              ),
          // Table Calendar
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TableCalendar(
                    focusedDay: _selectedDate,
                    firstDay: DateTime.utc(2000, 1, 1),
                    lastDay: DateTime.utc(2100, 12, 31),
                    selectedDayPredicate: (day) => isSameDay(day, _selectedDate),
                    onDaySelected: (selectedDay, focusedDay) {
                      _selectDate(selectedDay, focusedDay);
                    },
                    calendarStyle: CalendarStyle(
                      selectedDecoration: BoxDecoration(
                        color: Color(0xFF7165D6),
                        shape: BoxShape.circle,
                      ),
                      todayDecoration: BoxDecoration(
                        color: Color(0xFFE0E0E0),
                        shape: BoxShape.circle,
                      ),
                      todayTextStyle: TextStyle(
                        color: Color(0xFF7165D6),
                      ),
                      weekendTextStyle: TextStyle(
                        color: Colors.red,
                      ),
                    ),
                    headerStyle: HeaderStyle(
                      titleTextStyle: TextStyle(
                        color: Color(0xFF7165D6),
                        fontWeight: FontWeight.bold,
                      ),
                      formatButtonVisible: false, // Hide the "2 weeks" text
                      formatButtonTextStyle: TextStyle(
                        color: Colors.white,
                      ),
                      formatButtonDecoration: BoxDecoration(
                        color: Color(0xFF7165D6),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      leftChevronIcon: Icon(
                        Icons.chevron_left,
                        color: Color(0xFF7165D6),
                      ),
                      rightChevronIcon: Icon(
                        Icons.chevron_right,
                        color: Color(0xFF7165D6),
                      ),
                    ),
                  ),
                  SizedBox(height: 16),
                  Text(
                    'Selected Date: ${_selectedDate.toLocal().toString().split(' ')[0]}',
                    style: TextStyle(
                      color: Colors.black87,
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(height: 25),
                  ElevatedButton(
                    onPressed: _selectTime,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFF7165D6),
                    ),
                    child: Text(
                      'Select Time',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  SizedBox(height: 25),
                  Text(
                    'Selected Time: ${_selectedTime.format(context)}',
                    style: TextStyle(
                      color: Colors.black87,
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: _scheduleMaintenance,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFF7165D6),
                    ),
                    child: Text(
                      'Schedule Maintenance',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  SizedBox(height: 16),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  bool isSameDay(DateTime day1, DateTime day2) {
    return day1.year == day2.year &&
        day1.month == day2.month &&
        day1.day == day2.day;
  }
}
