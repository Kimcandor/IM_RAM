import 'package:flutter/material.dart';
import 'package:peter_testfolder/widgets/navbar_roots.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Color(0xFF7165D6),
        scaffoldBackgroundColor: Colors.white,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => MaintenanceScreen()),
            );
          },
          child: Text('Go to Maintenance Screen'),
        ),
      ),
    );
  }
}

class MaintenanceScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Color(0xFF7165D6)),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: Text(
            "Maintenance",
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.w500,
              color: Color(0xFF7165D6),
            ),
          ),
        ),
        automaticallyImplyLeading: false,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 15, right: 15, bottom: 20),
              child: Text(
                "What are your System's concerns?",
                style: TextStyle(
                  fontSize: 25,
                  color: Color(0xFF7165D6),
                ),
              ),
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 260, // Adjust the width as needed
                    height: 280,  // Adjust the height as needed
                    child: OptionBox(
                      label: 'Hardware',
                      imagePath: '/images/icons/hardwareicon.png',
                      onSelect: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => HardwareOptionsScreen()),
                        );
                      },
                    ),
                  ),
                  SizedBox(height: 20),
                  SizedBox(
                    width: 260, // Adjust the width as needed
                    height: 280,  // Adjust the height as needed
                    child: OptionBox(
                      label: 'Software',
                      imagePath: '/images/icons/virusicon.png',
                      onSelect: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => SoftwareOptionsScreen()),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class OptionBox extends StatelessWidget {
  final String label;
  final String imagePath;
  final VoidCallback onSelect;

  const OptionBox({
    required this.label,
    required this.imagePath,
    required this.onSelect,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onSelect,
      child: Container(
        padding: EdgeInsets.all(10),
        margin: EdgeInsets.symmetric(vertical: 10),
        decoration: BoxDecoration(
          color: Color(0xFFF4F6FA),
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 4,
              spreadRadius: 2,
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(imagePath, width: 100, height: 100),
            SizedBox(height: 2),
            Text(
              label,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class HardwareOptionsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Hardware Options',
        style: TextStyle(
          fontSize: 32,
          fontWeight: FontWeight.w500,
          color: Color(0xFF7165D6),
        ),
      ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          children: [
            OptionBox(
              label: 'Routine Checks',
              imagePath: '/images/icons/routinecheck.png',
              onSelect: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => RoutineChecksScreen()),
                );
              },
            ),
            OptionBox(
              label: 'Upgrades and Replacements',
              imagePath: '/images/icons/upgradesandreplacement.png',
              onSelect: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => UpgradesAndReplacementsScreen()),
                );
              },
            ),
            OptionBox(
              label: 'Repairs',
              imagePath: '/images/icons/repairs.png',
              onSelect: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => RepairsScreen()),
                );
              },
            ),
            OptionBox(
              label: 'Security',
              imagePath: '/images/icons/security.png',
              onSelect: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => SecurityOptionsScreen()),
                );
              },
            ),
            OptionBox(
              label: 'Performance Tuning',
              imagePath: '/images/icons/performancetuning.png',
              onSelect: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => PerformanceTuningScreen()),
                );
              },
            ),
            OptionBox(
              label: 'Compliance & Documentation',
              imagePath: '/images/icons/complianceanddocumentation.png',
              onSelect: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          ComplianceAndDocumentationScreen()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class RoutineChecksScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Routine Checks',
        style: TextStyle(
          fontSize: 32,
          fontWeight: FontWeight.w500,
          color: Color(0xFF7165D6),
        ),
      ),),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          children: [
            OptionBox(
              label: 'Regular System Diagnostics',
              imagePath: '/images/icons/regularsystemdiagnostics.png',
              onSelect: () {
                showNotificationDialog(context);
              },
            ),
            OptionBox(
              label: 'Hardware Health Monitoring',
              imagePath: '/images/icons/hardwarehealthmonitoring.png',
              onSelect: () {
                showNotificationDialog(context);
              },
            ),
            OptionBox(
              label: 'Dust Cleaning Schedules',
              imagePath: '/images/icons/dustcleaningschedules.png',
              onSelect: () {
                showNotificationDialog(context);
              },
            ),
            OptionBox(
              label: 'Cable Management',
              imagePath: '/images/icons/cablemanagement.png',
              onSelect: () {
                showNotificationDialog(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}

class SoftwareOptionsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Software Options',
      style: TextStyle(
        fontSize: 32,
        fontWeight: FontWeight.w500,
        color: Color(0xFF7165D6),
      ),
      ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          children: [
            OptionBox(
              label: 'Update and Patches',
              imagePath: '/images/icons/windowsupdate.png',
              onSelect: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => UpdateAndPatchesScreen()),
                );
              },
            ),
            OptionBox(
              label: 'Performance Optimization',
              imagePath: '/images/icons/performanceoptimization.png',
              onSelect: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          ConfigurationManagementScreen()),
                );
              },
            ),
            OptionBox(
              label: 'Data Management',
              imagePath: '/images/icons/datamanagement.png',
              onSelect: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => DataManagementScreen()),
                );
              },
            ),
            OptionBox(
              label: 'Security Updates',
              imagePath: '/images/icons/securitypatches.png',
              onSelect: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => SecurityUpdatesScreen()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

void showNotificationDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text('Action Required'),
        content: Text('Are you sure you want to proceed with this action?'),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.of(context).pop(); // Close the dialog
            },
            child: Text(
              'No',
              style: TextStyle(color: Color(0xFF7165D6)),
            ),
          ),
          TextButton(
            onPressed: () {
              Navigator.push(
                          context, MaterialPageRoute(
                          builder: (context) => NavBarRoots(),
                        ));
            },
            child: Text(
              'Yes',
              style: TextStyle(color: Color(0xFF7165D6)),
            ),
          ),
        ],
      );
    },
  );
}

// Define other screens similarly
class UpgradesAndReplacementsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Upgrades and Replacements',
      style: TextStyle(
        fontSize: 32,
        fontWeight: FontWeight.w500,
        color: Color(0xFF7165D6),
      ),
      ),),
      body: Center(child: Text('Upgrades and Replacements Screen')),
    );
  }
}

class RepairsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Repairs',
      style: TextStyle(
        fontSize: 32,
        fontWeight: FontWeight.w500,
        color: Color(0xFF7165D6),
      ),
      ),),
      body: Center(child: Text('Repairs Screen')),
    );
  }
}

class SecurityOptionsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Security Options',
      style: TextStyle(
        fontSize: 32,
        fontWeight: FontWeight.w500,
        color: Color(0xFF7165D6),
      ),
      ),),
      body: Center(child: Text('Security Options Screen')),
    );
  }
}

class PerformanceTuningScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Performance Tuning',
      style: TextStyle(
        fontSize: 32,
        fontWeight: FontWeight.w500,
        color: Color(0xFF7165D6),
      ),
      ),),
      body: Center(child: Text('Performance Tuning Screen')),
    );
  }
}

class ComplianceAndDocumentationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Compliance & Documentation',
      style: TextStyle(
        fontSize: 32,
        fontWeight: FontWeight.w500,
        color: Color(0xFF7165D6),
      ),
      ),),
      body: Center(child: Text('Compliance & Documentation Screen')),
    );
  }
}

class UpdateAndPatchesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Update and Patches',
      style: TextStyle(
        fontSize: 32,
        fontWeight: FontWeight.w500,
        color: Color(0xFF7165D6),
      ),
      ),),
      body: Center(child: Text('Update and Patches Screen')),
    );
  }
}

class ConfigurationManagementScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Configuration Management',
      style: TextStyle(
        fontSize: 32,
        fontWeight: FontWeight.w500,
        color: Color(0xFF7165D6),
      ),
      ),),
      body: Center(child: Text('Configuration Management Screen')),
    );
  }
}

class DataManagementScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Data Management',
      style: TextStyle(
        fontSize: 32,
        fontWeight: FontWeight.w500,
        color: Color(0xFF7165D6),
      ),
      ),),
      body: Center(child: Text('Data Management Screen')),
    );
  }
}

class SecurityUpdatesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Security Updates',
      style: TextStyle(
        fontSize: 32,
        fontWeight: FontWeight.w500,
        color: Color(0xFF7165D6),
      ),
      ),),
      body: Center(child: Text('Security Updates Screen')),
    );
  }
}
