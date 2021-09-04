import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:grocery_app/screens/dashboard/dashboard_screen.dart';


class Login extends StatefulWidget {

  @override
  State<StatefulWidget> createState() => new _State();
}

class _State extends State<Login> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(

        body: Container(
          height:MediaQuery.of(context).size.height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 400,
                child: ListView(
                  children: <Widget>[
                    Container(
                        alignment: Alignment.center,
                        padding: EdgeInsets.all(10),
                        child: Text(
                          'Codeplayon',
                          style: TextStyle(
                              color: Colors.blue,
                              fontWeight: FontWeight.w500,
                              fontSize: 30),
                        )),
                    Container(
                      padding: EdgeInsets.all(10),
                      child: TextField(
                        controller: nameController,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'User Name',
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                      child: TextField(
                        obscureText: true,
                        controller: passwordController,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Password',
                        ),
                      ),
                    ),
                    FlatButton(
                      onPressed: (){
                        //forgot password screen
                      },
                      textColor: Colors.blue,
                      child: Text('Forgot Password'),
                    ),
                    Container(
                        height: 50,
                        padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                        child: RaisedButton(
                          textColor: Colors.white,
                          color: Colors.blue,
                          child: Text('Login'),
                          onPressed: () {
                            Navigator.of(context).pushReplacement(new MaterialPageRoute(
                              builder: (BuildContext context) {
                                return DashboardScreen();
                              },
                            ));
                          },
                        )),
                    Container(
                        child: Row(
                          children: <Widget>[
                            Text('Does not have account?'),
                            FlatButton(
                              textColor: Colors.blue,
                              child: Text(
                                'Register',
                                style: TextStyle(fontSize: 20),
                              ),
                              onPressed: () {

                              },
                            )
                          ],
                          mainAxisAlignment: MainAxisAlignment.center,
                        ))
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}