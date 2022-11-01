import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:registrationform2/registationnpage.dart';

class Loginpage extends StatefulWidget {
  const Loginpage({Key? key}) : super(key: key);

  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  TextEditingController _EmailControler= TextEditingController();
  TextEditingController _PasswordControler= TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Login page'), backgroundColor: Colors.black),
      body: Form(
        key: _formKey,

        child: SingleChildScrollView(
          child: Container(
            child: Center(
              child: Column(
                children: [
                  SizedBox(
                    height: 120,
                  ),

                  CircleAvatar(
                    backgroundImage: AssetImage('images/Logo.png'),
                    radius: 80,
                  ),

                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: TextFormField(
                      controller: _EmailControler,
                      validator: (value){
                        if(value==null||value.isEmpty){
                          return "Enter Email";
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide:
                              BorderSide(color: Colors.lightBlue, width: 2),
                        ),
                        suffixIcon: Icon(
                          Icons.email,
                          color: Colors.black,
                        ),
                        contentPadding: EdgeInsets.all(20),
                        hintText: "eg:abc@gmail.com",
                        labelText: 'Email',
                        labelStyle: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                        errorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide(color:Colors.red ),

                        )
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
                    child: TextFormField(
                      obscureText: true,
                      controller: _PasswordControler,
                      validator: (value){
                      if(value==null||value.isEmpty){
                        return "Enter password";
                      }
                      return null;
                    },
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide:
                              BorderSide(color: Colors.lightBlue, width: 2),
                        ),
                        suffixIcon: Icon(
                          Icons.remove_red_eye,
                          color: Colors.black,
                        ),
                        contentPadding: EdgeInsets.all(20),
                        hintText: "*******",
                        labelText: 'Password',
                        labelStyle: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                        errorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide(color: Colors.red)
                        )
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.black,
                        ),
                        onPressed: () {

                          if(_formKey.currentState!.validate()){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>Registrationpage()));
                          }

                        },
                        child: Text(
                          "Log in",
                        ),
                      ),
                    ],
                  ),

                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Forgot Password?",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Not a member? ",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextButton(onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Registrationpage()));
                      }, child: Text('Sign up now')),
                    ],
                  ),
                  SizedBox(
                    height: 10,
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
