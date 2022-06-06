import 'package:flutter/material.dart';
import 'package:linkup_marriage/screens/bhome.dart';
import 'package:linkup_marriage/screens/home.dart';
import 'package:linkup_marriage/screens/signup.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // backgroundColor: Color(0xff010133),
        backgroundColor: Colors.red[700],
        body: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.only(top: 50),
            //         constraints: BoxConstraints.expand(),
            // decoration: const BoxDecoration(
            //   image: DecorationImage(
            //       image: AssetImage("asset/kk.png"),
            //       fit: BoxFit.cover),
            // ),
            child: Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                        alignment: Alignment.center,
                        padding: const EdgeInsets.all(10),
                        child: const Text(
                          'LinkUp Marriage Media',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                              fontSize: 30),
                        )),
                    Container(
                        alignment: Alignment.center,
                        padding: const EdgeInsets.all(10),
                        child: const Text(
                          'Sign in',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        )),
                    Container(
                      padding: const EdgeInsets.all(10),
                      child: TextField(
                        style: TextStyle(color: Colors.white),
                        controller: nameController,
                        decoration: const InputDecoration(
                          prefixIcon: Icon(
                            Icons.person,
                            color: Colors.white,
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(width: 3, color: Colors.white),
                          ),
                          labelText: 'User Name',
                          labelStyle: TextStyle(
                            color: Colors.white, //<-- SEE HERE
                          ),
                        ),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                      child: TextField(
                        obscureText: true,
                        controller: passwordController,
                        decoration: const InputDecoration(
                          prefixIcon: Icon(
                            Icons.lock,
                            color: Colors.white,
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(width: 3, color: Colors.white),
                          ),
                          labelText: 'Password',
                          labelStyle: TextStyle(
                            color: Colors.white, //<-- SEE HERE
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        if (nameController.text == 'male@gmail.com') {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return Home();
                          }));
                        } else {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return Bhome();
                          }));
                        }
                      },
                      child: Container(
                        margin: EdgeInsets.only(top: 15),
                        height: 50,
                        width: 250,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                        child: Text(
                          'Login',
                          style: TextStyle(
                              color: Colors.red[700],
                              fontSize: 22,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    Row(
                      children: <Widget>[
                        const Text(
                          'Does not have account?',
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                        TextButton(
                          child: const Text(
                            'Sign up',
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          ),
                          onPressed: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return SignUp();
                            }));
                          },
                        ),
                      ],
                      mainAxisAlignment: MainAxisAlignment.center,
                    ),
                    TextButton(
                      onPressed: () {
                        //forgot password screen
                      },
                      child: const Text(
                        'Forgot Password',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                )),
          ),
        ));
  }
}
