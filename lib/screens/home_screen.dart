import 'package:flutter/material.dart';
import 'package:peter_testfolder/screens/appointment_screen.dart';
import 'package:peter_testfolder/screens/maintenance_screen.dart';

class CustomIcon {
  final String name;
  final String icon;

  CustomIcon({required this.name, required this.icon});
}

class HomeScreen extends StatelessWidget {
  final List<CustomIcon> customIcons = [
    CustomIcon(name: "Computer Virus", icon: 'images/icons/virusicon.png'),
    CustomIcon(name: "Computer Defects", icon: 'images/icons/brokencomputericon.png'),
    CustomIcon(name: "Software Issues", icon: 'images/icons/softwareicon.png'),
    CustomIcon(name: "Hardware Crashes", icon: 'images/icons/computercrashicon.png'),
    CustomIcon(name: "More", icon: 'images/icons/moreicon.png'),
  ];

  final List<String> imgs = [
    "Pete.jpg",
    "KrissAnne.jpg",
    "Kim.jpg",
    "Jeconiah.jpg"
  ];

  final List<String> technicians = [
    "Pete Andrei Ciruelas",
    "Kris Anne Galla",
    "Emmanuel Kim",
    "Jeconiah Canatuan",
  ];

  final List<String> professions = [
    "Software Technician",
    "CyberSecurity Technician",
    "Hardware Technician",
    "Help Desk Technician"
  ];

  final List<String> recommended = [
    "For Software Issues",
    "For Software Issues",
    "For Hardware Issues",
    "For Hardware Issues"
  ];

  final List<String> descriptions = [
    "Pete is a software technician specializing in software development and integration. He has extensive experience in designing,"
    "developing, and integrating software solutions tailored to meet business needs. Pete excels in programming languages and frameworks,"
    "ensuring seamless integration across different platforms. His expertise spans from custom software development to optimizing existing"
    "applications for enhanced performance and scalability.\n"
    "\n5 MAJOR SKILLS:"
    "\n1. Software development (programming languages like Java, Python, CSS, HTML etc.)\n"
    "2. Application integration and deployment\n"
    "3. Version control and software testing\n"
    "4. Agile software development methodologies\n"
    "5. Performance optimization and debugging",

    "Kris Anne is a skilled cyber security technician with a strong focus on protecting digital systems and data from cyber threats. She has"
    "a deep understanding of cyber security principles, methodologies, and best practices, enabling her to implement robust security measures"
    "across various IT environments. Kris Anne excels in conducting vulnerability assessments, penetration testing, and incident response to"
    "mitigate risks and strengthen cyber defenses. Her proactive approach ensures compliance with security policies and regulations while"
    "maintaining the confidentiality, integrity, and availability of critical information assets.\n"
    "\n5 MAJOR SKILLS:\n"
    "1. Threat detection and analysis\n"
    "2. Security risk assessment and management\n"
    "3. Network and system security\n"
    "4. Incident response and forensic analysis\n"
    "5. Security awareness training and policy enforcement",

    "Kim is a skilled hardware technician with expertise in maintaining and repairing computer hardware components. He excels in diagnosing"
    "hardware issues, replacing faulty parts, and optimizing computer systems for performance. Kim is adept at handling a variety of hardware"
    "peripherals and ensuring compatibility with existing systems. His meticulous approach ensures minimal downtime and efficient hardware"
    "operations.\n"
    "\n5 MAJOR SKILLS:"
    "1. Hardware diagnostics and troubleshooting\n"
    "2. Component-level repair and replacement\n"
    "3. System assembly and configuration\n"
    "4. Hardware upgrades and optimization\n"
    "5. Peripheral device management and integration",

    "Jeconiah is a dedicated help desk technician with a passion for providing exceptional user support and assistance. He possesses strong"
    "communication skills and a patient demeanor, making him adept at resolving technical issues promptly and efficiently. Jeconiah excels in"
    "troubleshooting software and hardware problems, guiding users through solutions, and documenting support processes for future reference."
    "His customer-focused approach ensures high satisfaction and smooth operation of IT systems.\n"
    "\n5 MAJOR SKILLS:"
    "1. Technical issue resolution and troubleshooting\n"
    "2. Customer service and communication\n"
    "3. Incident management and ticketing systems\n"
    "4. User training and support documentation\n"
    "5. Remote desktop support and administration",
  ];

  final List<String> ratings = [
    "5.0",
    "4.9",
    "5.0",
    "4.8",
  ];

  final List<String> locations = [
    "Bauan As Is Batangas",
    "Muzon San Luis Batangas",
    "Talumpok West Batangas",
    "Balibago Lubo Batangas",
  ];

  final List<String> contact = [
    "0927-293-2960",
    "0976-543-2560",
    "0956-042-3736",
    "0920-457-1084",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.only(top: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Hello, Peter",
                          style: TextStyle(
                            fontSize: 45,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(height: 5),
                        Text(
                          "How are you feeling today?",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
                  CircleAvatar(
                    radius: 40,
                    backgroundImage: AssetImage("images/MyPic5.jpg"),
                  ),
                ],
              ),
            ),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                  onTap: () {},
                  child: Container(
                    padding: EdgeInsets.all(20),
                    constraints: BoxConstraints(maxWidth: 150),
                    decoration: BoxDecoration(
                      color: Color(0xFF7165D6),
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12,
                          blurRadius: 6,
                          spreadRadius: 4,
                        ),
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          padding: EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                          ),
                          child: CircleAvatar(
                            radius: 35,
                            backgroundImage: AssetImage("images/oursecondlogo.png"),
                            backgroundColor: Colors.transparent,
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          "With RAM,\n your assets are preserved!",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: Container(
                    padding: EdgeInsets.all(20),
                    constraints: BoxConstraints(maxWidth: 150),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12,
                          blurRadius: 6,
                          spreadRadius: 4,
                        ),
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          padding: EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            color: Color(0xFFF0EEFA),
                            shape: BoxShape.circle,
                          ),
                          child: Icon(
                            Icons.home_filled,
                            color: Color(0xFF7165D6),
                            size: 40,
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          "Home Assist",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(height: 5),
                        Text(
                          "Contact the Technicians\n at your home!",
                          style: TextStyle(
                            color: Colors.black54,
                            fontSize: 14,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 25),
            Padding(
              padding: EdgeInsets.only(left: 15),
              child: Text(
                "What are your problems?",
                style: TextStyle(
                  fontSize: 23,
                  fontWeight: FontWeight.w500,
                  color: Color(0xFF7165D6),
                ),
              ),
            ),
            SizedBox(
              height: 150,
              child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: customIcons.length,
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
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
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => MaintenanceScreen(),
                          ),
                        );
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            customIcons[index].icon,
                            width: 35,
                            height: 35,
                            fit: BoxFit.cover,
                          ),
                          SizedBox(height: 5),
                          Text(
                            customIcons[index].name,
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.black,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: 15),
            Padding(
              padding: EdgeInsets.only(left: 15),
              child: Text(
                "Our Available Technicians:",
                style: TextStyle(
                  fontSize: 23,
                  fontWeight: FontWeight.w500,
                  color: Color(0xFF7165D6),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                ),
                itemCount: technicians.length,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => AppointmentScreen(
                            technicianName: technicians[index],
                            technicianImage: imgs[index],
                            technicianProfession: professions[index],
                            technicianRecommended: recommended[index],
                            technicianDescription: descriptions[index],
                            technicianRating: ratings[index],
                            technicianLocation: locations[index],
                            technicianContact: contact[index],
                            technicianImg: '',
                          ),
                        ),
                      );
                    },
                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: 15),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black12,
                            blurRadius: 4,
                            spreadRadius: 2,
                          ),
                        ],
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          CircleAvatar(
                            radius: 35,
                            backgroundImage: AssetImage("images/${imgs[index]}"),
                          ),
                          Text(
                            technicians[index],
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              color: Colors.black54,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          Text(
                            professions[index],
                            style: TextStyle(
                              color: Colors.black45,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          Text(
                            recommended[index],
                            style: TextStyle(
                              color: Colors.cyan,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.star, color: Colors.amber),
                              Text(
                                ratings[index],
                                style: TextStyle(
                                  color: Colors.black45,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: 15),
            Padding(
              padding: EdgeInsets.only(left: 15),
              child: Text(
                "About Us",
                style: TextStyle(
                  fontSize: 23,
                  fontWeight: FontWeight.w500,
                  color: Color(0xFF7165D6),
                ),
              ),
            ),
              SizedBox(height: 15),
            Padding(
              padding: EdgeInsets.only(left: 15),
              child: Text(
                "Im_Ram's purpose is to help clients as well as users to have efficiency when it comes to reservations of maintenance that is needed to be addressed. It will give functions to determine what information the users need to input as well as the problems that they are currently experiencing with their devices in order for the application to assess the user's predicament and give the needed functions for reservations as well as information regarding the current status of their reservation.",
                style: TextStyle(
                  fontSize: 19,
                  fontWeight: FontWeight.w300,
                  color: Colors.black,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
