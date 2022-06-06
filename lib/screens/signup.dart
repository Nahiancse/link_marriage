import 'package:flutter/material.dart';

import 'login.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  dynamic _value = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // backgroundColor: Color(0xff010133),
        backgroundColor: Colors.red[700],
        body: SingleChildScrollView(
          child: Container(
            //         constraints: BoxConstraints.expand(),
            // decoration: const BoxDecoration(
            //   image: DecorationImage(
            //       image: AssetImage("asset/kk.png"),
            //       fit: BoxFit.cover),
            // ),
            child: Padding(
                padding: const EdgeInsets.all(10),
                child: Center(
                  child: Column(
                    // mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                          margin: EdgeInsets.only(top: 30, bottom: 5),
                          alignment: Alignment.center,
                          // padding: const EdgeInsets.all(10),
                          child: const Text(
                            'LinkUp Marriage Media',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                                fontSize: 28),
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
                        margin: EdgeInsets.only(bottom: 5),
                        padding: EdgeInsets.only(left: 10, right: 10),
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
                        margin: EdgeInsets.only(bottom: 5),
                        padding: EdgeInsets.only(left: 10, right: 10),
                        child: TextField(
                          style: TextStyle(color: Colors.white),
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
                      Container(
                        margin: EdgeInsets.only(bottom: 5),
                        padding: EdgeInsets.only(left: 10, right: 10),
                        child: TextField(
                          style: TextStyle(color: Colors.white),
                          controller: passwordController,
                          decoration: const InputDecoration(
                            prefixIcon: Icon(
                              Icons.phone,
                              color: Colors.white,
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(width: 3, color: Colors.white),
                            ),
                            labelText: 'Phone',
                            labelStyle: TextStyle(
                              color: Colors.white, //<-- SEE HERE
                            ),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 5),
                        padding: EdgeInsets.only(left: 10, right: 10),
                        child: TextField(
                          style: TextStyle(color: Colors.white),
                          controller: passwordController,
                          decoration: const InputDecoration(
                            prefixIcon: Icon(
                              Icons.calendar_view_day,
                              color: Colors.white,
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(width: 3, color: Colors.white),
                            ),
                            labelText: 'Age',
                            labelStyle: TextStyle(
                              color: Colors.white, //<-- SEE HERE
                            ),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 5),
                        padding: EdgeInsets.only(left: 10, right: 10),
                        child: DropdownButton(
                          alignment: Alignment.bottomLeft,
                          dropdownColor: Colors.grey[850],
                          icon: Icon(
                            Icons.arrow_downward,
                            color: Colors.white,
                          ),
                          iconSize: 24,
                          elevation: 16,
                          // iconSize: 1,
                          borderRadius: BorderRadius.circular(28),
                          value: _value,
                          items: [
                            DropdownMenuItem(
                              child: Container(
                                alignment: Alignment.center,
                                width: 200,
                                height: 40,
                                decoration: BoxDecoration(
                                  color: Colors.transparent,
                                  borderRadius: BorderRadius.circular(28),
                                ),
                                child: const Text(
                                  "Select Gender",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 18),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                              value: 1,
                            ),
                            DropdownMenuItem(
                              child: Container(
                                  alignment: Alignment.center,
                                  // width: 200,
                                  // height: 40,
                                  // decoration: BoxDecoration(
                                  //   color: Colors.grey,
                                  //   borderRadius: BorderRadius.circular(28),
                                  // ),
                                  child: const Text(
                                    "Male",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 18),
                                    textAlign: TextAlign.center,
                                  )),
                              value: 2,
                            ),
                            DropdownMenuItem(
                              child: Container(
                                  alignment: Alignment.center,
                                  // width: 200,
                                  // height: 40,
                                  // decoration: BoxDecoration(
                                  //   color: Colors.grey,
                                  //   borderRadius: BorderRadius.circular(28),
                                  // ),
                                  child: const Text(
                                    "Female",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 18),
                                    textAlign: TextAlign.center,
                                  )),
                              value: 3,
                            )
                          ],
                          onChanged: (value) {
                            _value = value;
                            setState(() {});
                            print(value);
                          },
                        ),
                      ),
                      Container(
                        height: 50,
                        width: 250,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                        child: Text(
                          'SignUp',
                          style: TextStyle(
                              color: Colors.red[700],
                              fontSize: 22,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Row(
                        children: <Widget>[
                          const Text(
                            'Already Have an Account?',
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          ),
                          TextButton(
                            child: const Text(
                              'Sign in',
                              style:
                                  TextStyle(fontSize: 20, color: Colors.white),
                            ),
                            onPressed: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                return Login();
                              }));
                            },
                          )
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
                  ),
                )),
          ),
        ));
  }
}
