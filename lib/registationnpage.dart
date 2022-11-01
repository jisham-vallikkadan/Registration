import 'package:flutter/material.dart';
import 'package:registrationform2/loginpage.dart';

class Registrationpage extends StatefulWidget {
  const Registrationpage({Key? key}) : super(key: key);

  @override
  State<Registrationpage> createState() => _RegistrationpageState();
}

class _RegistrationpageState extends State<Registrationpage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Center(
            child: Text(
              'Registrationpage',
              style: TextStyle(color: Colors.white),
            ),
          ),
          backgroundColor: Colors.black),
      body: Form(
        key: _formKey,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 15, right: 15),
            child: Center(
              child: Column(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  CircleAvatar(
                    backgroundImage: AssetImage('images/Logo.png'),
                    radius: 50,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Enter name";
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide:
                                BorderSide(color: Colors.blue, width: 2)),
                        hintText: "eg:Jisham",
                        labelText: "Name"),
                  ),
                  SizedBox(height: 15),
                  TextFormField(
                    validator: (abc) {
                      if (abc == null || abc.isEmpty) {
                        return 'Enter Email';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide:
                                BorderSide(color: Colors.blue, width: 2)),
                        hintText: "eg:abc@gmail.com",
                        labelText: "Email"),
                  ),
                  SizedBox(height: 15),
                  TextFormField(
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "enter phone number";
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide:
                                BorderSide(color: Colors.blue, width: 2)),
                        hintText: "+91 99552***21",
                        labelText: "Phone Number"),
                  ),
                  SizedBox(height: 15),
                  TextFormField(
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'enter password';
                      }
                      return null;
                    },
                    obscureText: true,
                    decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide:
                                BorderSide(color: Colors.blue, width: 2)),
                        labelText: "Password"),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: TextFormField(
                      obscureText: true,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "enter comform password";
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide:
                                  BorderSide(color: Colors.blue, width: 2)),
                          labelText: "Conform Password"),
                    ),
                  ),
                  SizedBox(
                    height: 60,
                  ),
                  Container(
                    width: 150,
                    height: 50,
                    child: TextButton(
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Loginpage()));
                        }else{
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar (content:Text("Place enter all requred forms")));
                        }

                      },
                      child: Text("Sign Up"),
                      style: TextButton.styleFrom(
                        backgroundColor: Colors.black,
                        primary: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(

                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Is Registerd ?",
                        style: TextStyle(color: Colors.black54),
                      ),
                      TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Loginpage()));
                          },
                          child: Text(
                            'Login',
                            style: TextStyle(color: Colors.black),
                          )),
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
