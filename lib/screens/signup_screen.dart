import 'package:flutter/material.dart';
import 'package:peter_testfolder/screens/login_screen.dart';

class SignupScreen extends StatefulWidget {
  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  bool passToggle = true;
  String password = '';

  bool _hasMinLength = false;
  bool _hasUppercase = false;
  bool _hasSpecialChar = false;
  bool _hasNumber = false;

  final _emailController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  void _validatePassword(String password) {
    setState(() {
      _hasMinLength = password.length >= 8;
      _hasUppercase = RegExp(r'[A-Z]').hasMatch(password);
      _hasSpecialChar = RegExp(r'[!@#$%^&*(),.?":{}|<>]').hasMatch(password);
      _hasNumber = RegExp(r'[0-9]').hasMatch(password);
    });
  }

  String? _validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter an email';
    }
    final emailRegex = RegExp(r'^[^@]+@[^@]+\.[^@]+');
    if (!emailRegex.hasMatch(value)) {
      return 'Enter a valid email';
    }
    return null;
  }

  @override
  void dispose() {
    _emailController.dispose();
    super.dispose();
  }

  void _signup() {
    if (_formKey.currentState!.validate()) {
      // Perform signup action
      // For now, we'll just print a message
      print('Email: ${_emailController.text}, Password: $password');
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => LoginScreen(),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sign Up"),
      ),
      body: Container(
        color: Colors.white,
        child: SingleChildScrollView(
          child: SafeArea(
            child: Form(
              key: _formKey,
              child: Column(
                children: [
                  SizedBox(height: 10),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 8, horizontal: 15),
                    child: Image.asset(
                      'images/ourownlogo.png',
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 8, horizontal: 15),
                    child: TextField(
                      decoration: InputDecoration(
                        labelText: "Full Name",
                        border: OutlineInputBorder(),
                        prefixIcon: Icon(Icons.person),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 8, horizontal: 15),
                    child: TextFormField(
                      controller: _emailController,
                      decoration: InputDecoration(
                        labelText: "Email Address",
                        border: OutlineInputBorder(),
                        prefixIcon: Icon(Icons.email),
                      ),
                      validator: _validateEmail,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 8, horizontal: 15),
                    child: TextField(
                      decoration: InputDecoration(
                        labelText: "Phone Number",
                        border: OutlineInputBorder(),
                        prefixIcon: Icon(Icons.phone),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 8, horizontal: 15),
                    child: TextFormField(
                      obscureText: passToggle ? true : false,
                      onChanged: (value) {
                        setState(() {
                          password = value;
                          _validatePassword(value);
                        });
                      },
                      decoration: InputDecoration(
                        labelText: "Password",
                        border: OutlineInputBorder(),
                        prefixIcon: Icon(Icons.lock),
                        suffixIcon: InkWell(
                          onTap: () {
                            setState(() {
                              passToggle = !passToggle;
                            });
                          },
                          child: Icon(
                            passToggle ? Icons.remove_red_eye : Icons.remove_red_eye_outlined,
                          ),
                        ),
                      ),
                    ),
                  ),
                  if (password.isNotEmpty) ...[
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 8, horizontal: 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Icon(
                                _hasMinLength
                                    ? Icons.check_circle
                                    : Icons.cancel,
                                color: _hasMinLength ? Colors.green : Colors.red,
                              ),
                              SizedBox(width: 8),
                              Text("Have more than 8 characters"),
                            ],
                          ),
                          Row(
                            children: [
                              Icon(
                                _hasUppercase
                                    ? Icons.check_circle
                                    : Icons.cancel,
                                color: _hasUppercase ? Colors.green : Colors.red,
                              ),
                              SizedBox(width: 8),
                              Text("Contains a capital letter"),
                            ],
                          ),
                          Row(
                            children: [
                              Icon(
                                _hasSpecialChar
                                    ? Icons.check_circle
                                    : Icons.cancel,
                                color: _hasSpecialChar ? Colors.green : Colors.red,
                              ),
                              SizedBox(width: 8),
                              Text("Contains a special character"),
                            ],
                          ),
                          Row(
                            children: [
                              Icon(
                                _hasNumber
                                    ? Icons.check_circle
                                    : Icons.cancel,
                                color: _hasNumber ? Colors.green : Colors.red,
                              ),
                              SizedBox(width: 8),
                              Text("Contains a number"),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                  SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: SizedBox(
                      width: double.infinity,
                      child: Material(
                        color: Color(0xFF7165D6),
                        borderRadius: BorderRadius.circular(10),
                        child: InkWell(
                          onTap: _signup,
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                                vertical: 15, horizontal: 40),
                            child: Center(
                              child: Text(
                                "Create Account",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Already have an account?",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Colors.black54,
                          )),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => LoginScreen(),
                            ),
                          );
                        },
                        child: Text(
                          "Log In",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF7165D6),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
