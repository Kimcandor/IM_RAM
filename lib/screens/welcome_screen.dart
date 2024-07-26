import 'package:flutter/material.dart';
import 'package:peter_testfolder/screens/login_screen.dart';
import 'package:peter_testfolder/widgets/navbar_roots.dart';
import 'package:peter_testfolder/screens/signup_screen.dart';

class WelcomeScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Material(
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        padding:EdgeInsets.all(10),
        child:Column(
          children: [
             
            SizedBox(height: 30),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Image.asset("images/ourownlogo.png"),
            ),
            SizedBox(height: 20),
            Text(
              "IM_RAM",
            style: TextStyle(
            color: Color(0xFF7165D6),
            fontSize: 35,
            fontWeight: FontWeight.bold,
            letterSpacing: 1,
            wordSpacing: 2,
            ),
            ),
            
            SizedBox(height: 10),
             Text(
              "IT Maintenance and Reservation Monitoring",
            style: TextStyle(
            color: Color(0xFF7165D6),
            fontSize: 18,
            fontWeight: FontWeight.w500,
            ),
            ),
            SizedBox(height: 10),
             Text(
              "Providing support for your IT needs!",
            style: TextStyle(
            color: Colors.black54,
            fontSize: 18,
            fontWeight: FontWeight.w500,
            ),
            ),
            SizedBox(height: 60),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
              Material(
               color: Color(0xFF7165D6),
               borderRadius: BorderRadius.circular(10),
               child: InkWell(
                onTap: (){
                     Navigator.push(context, MaterialPageRoute(
                      builder: (context) =>   LoginScreen(),
                    ));
                },
                child: Padding(padding: EdgeInsets.symmetric(vertical: 15, horizontal:40),
                 child: Text(
                  "Log In",
                   style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                 
                 ),
                 ),
                 ),
               ),
              ),
                    Material(
               color: Color(0xFF7165D6),
               borderRadius: BorderRadius.circular(10),
               child: InkWell(
                onTap: (){
                  Navigator.push(
                          context, MaterialPageRoute(
                          builder: (context) => SignupScreen(),
                        ));
                    },
                
                child: Padding(padding: EdgeInsets.symmetric(vertical: 15, horizontal:40),
                 child: Text(
                  "Sign Up",
                   style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                 
                 ),
                 ),
                 ),
               ),
              ),
              ],
            ),
          ],
        ),
        ),
      );
  }
}