import 'package:flutter/material.dart';
import 'package:peter_testfolder/screens/home_screen.dart';
import 'package:peter_testfolder/screens/maintenance_screen.dart';
import 'package:peter_testfolder/screens/schedule_screen.dart';
import 'package:peter_testfolder/screens/calendar_screen.dart';
import 'package:peter_testfolder/screens/settings_screen.dart';

// Main class for the navigation bar
class NavBarRoots extends StatefulWidget {
  @override
  State<NavBarRoots> createState() => _NavBarRootsState();
}

// State class for managing the navigation bar state
class _NavBarRootsState extends State<NavBarRoots> {

  // Index to track the selected tab
  int _selectedIndex = 0;

  // List of screens corresponding to the navigation bar tabs
  final _screens = [
    HomeScreen(),           // Home Screen
    MaintenanceScreen(),    // Maintenance Screen
    CalendarScreen(),            // Calendar Screen
    ScheduleScreen(),       // Schedule Screen
    SettingsScreen(),       // Settings Screen
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: _screens[_selectedIndex], // Display the selected screen
      bottomNavigationBar: Container(
        height: 80,
        child: BottomNavigationBar(
          backgroundColor: Colors.white,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Color(0xFF7165D6),
          unselectedItemColor: Colors.black26,
          selectedLabelStyle: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 15,
          ),
          currentIndex: _selectedIndex, // Highlight the selected tab
          onTap: (index) {
            setState(() {
              _selectedIndex = index; // Update the selected tab index
            });
          },
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home_filled),   // Home Icon
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.laptop_chromebook_outlined),   // Maintenance Icon
              label: "Service",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.calendar_today_outlined),   //Calendar Icon
              label: "Calendar",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.calendar_month),   // Schedule Icon
              label: "Schedule",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),   // Settings Icon
              label: "Settings",
            ),
          ],
        ),
      ),
    );
  }
}
