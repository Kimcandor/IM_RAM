import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:peter_testfolder/screens/schedule_screen.dart';

class UpcomingSchedule extends StatelessWidget {
  const UpcomingSchedule({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Selected Technicians:",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(height: 15),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 5),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: const [
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 4,
                  spreadRadius: 2,
                ),
              ],
            ),
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: [
                  const ListTile(
                    title: Text(
                      "Pete Andrei T. Ciruelas",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Software Technician"),
                        SizedBox(height: 5),  
                        Text(
                          "Hardware: Cable Management",
                          style: TextStyle(
                            color: Colors.cyan,
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                    trailing: CircleAvatar(
                      radius: 25,
                      backgroundImage: AssetImage("images/Pete.jpg"),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    child: Divider(
                      thickness: 1,
                      height: 20,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const Row(
                        children: [
                          Icon(
                            Icons.calendar_month,
                            color: Colors.black54,
                          ),
                          SizedBox(width: 5),
                          Text(
                            "10/15/2024",
                            style: TextStyle(
                              color: Colors.black54,
                            ),
                          ),
                        ],
                      ),
                      const Row(
                        children: [
                          Icon(
                            Icons.access_time_filled,
                            color: Colors.black54,
                          ),
                          SizedBox(width: 5),
                          Text(
                            "10:30 AM",
                            style: TextStyle(
                              color: Colors.black54,
                            ),
                          ),
                        ],
                      ),
                    Row(
                    children: [
                  Container(
                  padding: const EdgeInsets.all(5),
                  decoration: const BoxDecoration(
                    color: Colors.green,
                    shape: BoxShape.circle,
                  ),
                  ),
                  const SizedBox(width: 5),
                  const Text(
                    "Confirmed",
                    style: TextStyle(
                      color: Colors.black54,
                    ),
                  ),
                  ],
                  ),
                    ],
                    ),
                    const SizedBox(height: 15),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        InkWell(
                          onTap: (){},
                          child: Container(
                            width: 150,
                            padding: const EdgeInsets.symmetric(vertical: 12),
                            decoration: BoxDecoration(
                              color: const Color(0xFFF4F6FA),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: const Center(
                              child: Text(
                                "Cancel",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black,
                                )
                              ),
                            ),
                          ),
                        ),
                            InkWell(
                          onTap: (){},
                          child: Container(
                            width: 150,
                            padding: const EdgeInsets.symmetric(vertical: 12),
                            decoration: BoxDecoration(
                              color: const Color(0xFF7165D6),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: const Center(
                              child: Text(
                                "Reschedule",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white,
                                )
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
             const SizedBox(height: 20),
                ],
              ),
            ),
          ),
          const SizedBox(height: 20),
             const Text("About Technician",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w500,
          ),
          ),
            const SizedBox(height: 15),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 5),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: const [
                BoxShadow(
                color: Colors.black12,
                blurRadius: 4,
                spreadRadius: 2,
                ),
              ],
            ),
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: [
                  const ListTile(
                    title: Text(
                      "Emmanuel Kim Candor",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                      ),
                      ),
                      subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Hardware Technician"),
                        SizedBox(height: 5),  
                        Text(
                          "Software: Data Management",
                          style: TextStyle(
                            color: Colors.cyan,
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                      trailing: CircleAvatar(
                        radius: 25,
                        backgroundImage: AssetImage("images/Kim.jpg"),
                      ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    child: Divider(
                      thickness: 1,
                      height: 20,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const Row(children: [
                        Icon(
                      Icons.calendar_month,
                      color: Colors.black54,
                    ),
                    SizedBox(width: 5),
                    Text(
                      "11/05/2023",
                      style: TextStyle(
                        color: Colors.black54,
                      ),
                    ),
                      ],
                      ),
                             const Row(
                      children: [
                  Icon(
                    Icons.access_time_filled,
                    color: Colors.black54,
                  ),
                  SizedBox(width: 5),
                  Text(
                    "11:00 AM",
                    style: TextStyle(
                      color: Colors.black54,
                    ),
                  ),
                    ],
                    ),
                    Row(
                    children: [
                  Container(
                  padding: const EdgeInsets.all(5),
                  decoration: const BoxDecoration(
                    color: Colors.green,
                    shape: BoxShape.circle,
                  ),
                  ),
                  const SizedBox(width: 5),
                  const Text(
                    "Confirmed",
                    style: TextStyle(
                      color: Colors.black54,
                    ),
                  ),
                  ],
                  ),
                    ],
                    ),
                    const SizedBox(height: 15),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        InkWell(
                          onTap: (){},
                          child: Container(
                            width: 150,
                            padding: const EdgeInsets.symmetric(vertical: 12),
                            decoration: BoxDecoration(
                              color: const Color(0xFFF4F6FA),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: const Center(
                              child: Text(
                                "Cancel",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black,
                                )
                              ),
                            ),
                          ),
                        ),
                            InkWell(
                          onTap: (){},
                          child: Container(
                            width: 150,
                            padding: const EdgeInsets.symmetric(vertical: 12),
                            decoration: BoxDecoration(
                              color: const Color(0xFF7165D6),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: const Center(
                              child: Text(
                                "Reschedule",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white,
                                )
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                ],
              ),
            ),
          ),
           const SizedBox(height: 10),
             const Text("About Technician",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w500,
          ),
          ),
            const SizedBox(height: 15),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 5),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: const [
                BoxShadow(
                color: Colors.black12,
                blurRadius: 4,
                spreadRadius: 2,
                ),
              ],
            ),
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: [
                  const ListTile(
                    title: Text(
                      "Kris Anne M. Galla",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                      ),
                      ),
                     subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("CyberSecurity Technician"),
                        SizedBox(height: 5),  
                        Text(
                          "Software: Security Updates",
                          style: TextStyle(
                            color: Colors.cyan,
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                      trailing: CircleAvatar(
                        radius: 25,
                        backgroundImage: AssetImage("images/KrissAnne.jpg"),
                      ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    child: Divider(
                      thickness: 1,
                      height: 20,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const Row(children: [
                        Icon(
                      Icons.calendar_month,
                      color: Colors.black54,
                    ),
                    SizedBox(width: 5),
                    Text(
                      "20/10/2023",
                      style: TextStyle(
                        color: Colors.black54,
                      ),
                    ),
                      ],
                      ),
                             const Row(
                      children: [
                  Icon(
                    Icons.access_time_filled,
                    color: Colors.black54,
                  ),
                  SizedBox(width: 5),
                  Text(
                    "10:00 AM",
                    style: TextStyle(
                      color: Colors.black54,
                    ),
                  ),
                    ],
                    ),
                    Row(
                    children: [
                  Container(
                  padding: const EdgeInsets.all(5),
                  decoration: const BoxDecoration(
                    color: Colors.green,
                    shape: BoxShape.circle,
                  ),
                  ),
                  const SizedBox(width: 5),
                  const Text(
                    "Confirmed",
                    style: TextStyle(
                      color: Colors.black54,
                    ),
                  ),
                  ],
                  ),
                    ],
                    ),
                    const SizedBox(height: 15),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        InkWell(
                          onTap: (){},
                          child: Container(
                            width: 150,
                            padding: const EdgeInsets.symmetric(vertical: 12),
                            decoration: BoxDecoration(
                              color: const Color(0xFFF4F6FA),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: const Center(
                              child: Text(
                                "Cancel",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black,
                                )
                              ),
                            ),
                          ),
                        ),
                            InkWell(
                          onTap: (){},
                          child: Container(
                            width: 150,
                            padding: const EdgeInsets.symmetric(vertical: 12),
                            decoration: BoxDecoration(
                              color: const Color(0xFF7165D6),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: const Center(
                              child: Text(
                                "Reschedule",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white,
                                )
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                ],
              ),
            ),
          ),
        ],
          ),
      );
  }
}