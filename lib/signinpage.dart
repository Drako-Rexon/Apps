import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:yoboresto/create-account.dart';
import 'package:yoboresto/forgotpassword.dart';
import 'package:yoboresto/main.dart';
import 'forgotpassword.dart';

class SignIn extends StatefulWidget {
  SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  String dropdownValue = '+91';
  var items = ['+91', '+1', '+251'];

  @override
  Widget build(BuildContext context) {
    var devWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 30,
          ),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color.fromARGB(255, 255, 224, 234),
                ),
                child: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(
                    Icons.arrow_back_ios_new,
                    color: Colors.black,
                  ),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Text(
                'Sign in',
                style: TextStyle(
                  fontSize: 35,
                  fontFamily: 'Open',
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Using',
                        style: TextStyle(
                          fontSize: 12,
                        ),
                      ),
                      Row(
                        children: [
                          Text(
                            'Mobile number',
                            style: TextStyle(
                              fontSize: 16,
                            ),
                          ),
                          SizedBox(
                            width: 16,
                          ),
                          Text(
                            'Email id',
                            style: TextStyle(
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 40,
              ),
              Column(
                children: [
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Phone number'),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              DropdownButton(
                                  items: items.map((String items) {
                                    return DropdownMenuItem(
                                      value: items,
                                      child: Text(items),
                                    );
                                  }).toList(),
                                  onChanged: (String? newValue) {
                                    setState(() {
                                      dropdownValue = newValue!;
                                    });
                                  }),
                              Container(
                                height: 50,
                                width: devWidth - 120,
                                child: TextField(
                                  onChanged: (value) {},
                                  decoration: const InputDecoration(
                                    hintText: 'Enter your phone number',
                                    contentPadding: EdgeInsets.symmetric(
                                      vertical: 10,
                                      horizontal: 20,
                                    ),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(32),
                                      ),
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color.fromARGB(255, 93, 93, 93),
                                        width: 2,
                                      ),
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(1),
                                      ),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color.fromARGB(255, 93, 93, 93),
                                        width: 2,
                                      ),
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(1),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Password'),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              Container(
                                height: 50,
                                width: devWidth - 60,
                                child: TextField(
                                  onChanged: (value) {},
                                  decoration: const InputDecoration(
                                    hintText: 'Enter your password',
                                    contentPadding: EdgeInsets.symmetric(
                                      vertical: 10,
                                      horizontal: 20,
                                    ),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(32),
                                      ),
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color.fromARGB(255, 93, 93, 93),
                                        width: 2,
                                      ),
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(1),
                                      ),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color.fromARGB(255, 93, 93, 93),
                                        width: 2,
                                      ),
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(1),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            PageTransition(
                              child: ForgotPassword(),
                              type: PageTransitionType.rightToLeft,
                            ),
                          );
                        },
                        child: Text(
                          'Forgot Password?(working)',
                          style: TextStyle(
                            color: deepOrange,
                          ),
                        ),
                        style: ButtonStyle(
                          elevation: MaterialStateProperty.all(0),
                          backgroundColor:
                              MaterialStateProperty.all(customWhite),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        height: 76,
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 40,
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('New user ?'),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          PageTransition(
                              child: CreateAccount(),
                              type: PageTransitionType.leftToRight));
                    },
                    style: ButtonStyle(
                      padding: MaterialStateProperty.all(EdgeInsets.zero),
                      elevation: MaterialStateProperty.all(0),
                      backgroundColor: MaterialStateProperty.all(customWhite),
                    ),
                    child: Text(
                      'Create an account',
                      style: TextStyle(
                        color: deepOrange,
                      ),
                    ),
                  ),
                ],
              ),
              ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                  padding: MaterialStateProperty.all(
                    EdgeInsets.symmetric(
                      horizontal: 30,
                      vertical: 14,
                    ),
                  ),
                  elevation: MaterialStateProperty.all(0),
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                      side: BorderSide(
                        color: deepOrange,
                      ),
                    ),
                  ),
                  backgroundColor: MaterialStateProperty.all(deepOrange),
                ),
                child: Text('Sign in'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


// ! This below is for sign in using email id 
//                  Column(
//                 children: [
//                   Row(
//                     children: [
//                       Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Text('Email id'),
//                           SizedBox(
//                             height: 10,
//                           ),
//                           Row(
//                             children: [
//                               
//                               Container(
//                                 height: 50,
//                                 width: devWidth - 60,
//                                 child: TextField(
//                                   onChanged: (value) {},
//                                   decoration: const InputDecoration(
//                                     hintText: 'Enter your email id',
//                                     contentPadding: EdgeInsets.symmetric(
//                                       vertical: 10,
//                                       horizontal: 20,
//                                     ),
//                                     border: OutlineInputBorder(
//                                       borderRadius: BorderRadius.all(
//                                         Radius.circular(32),
//                                       ),
//                                     ),
//                                     enabledBorder: OutlineInputBorder(
//                                       borderSide: BorderSide(
//                                         color: Color.fromARGB(255, 93, 93, 93),
//                                         width: 2,
//                                       ),
//                                       borderRadius: BorderRadius.all(
//                                         Radius.circular(1),
//                                       ),
//                                     ),
//                                     focusedBorder: OutlineInputBorder(
//                                       borderSide: BorderSide(
//                                         color: Color.fromARGB(255, 93, 93, 93),
//                                         width: 2,
//                                       ),
//                                       borderRadius: BorderRadius.all(
//                                         Radius.circular(1),
//                                       ),
//                                     ),
//                                   ),
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ],
//                       ),
//                     ],
//                   ),
//                   Row(
//                     children: [
//                       Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Text('Password'),
//                           SizedBox(
//                             height: 10,
//                           ),
//                           Row(
//                             children: [
//                               Container(
//                                 height: 50,
//                                 width: devWidth - 60,
//                                 child: TextField(
//                                   onChanged: (value) {},
//                                   decoration: const InputDecoration(
//                                     hintText: 'Enter your password',
//                                     contentPadding: EdgeInsets.symmetric(
//                                       vertical: 10,
//                                       horizontal: 20,
//                                     ),
//                                     border: OutlineInputBorder(
//                                       borderRadius: BorderRadius.all(
//                                         Radius.circular(32),
//                                       ),
//                                     ),
//                                     enabledBorder: OutlineInputBorder(
//                                       borderSide: BorderSide(
//                                         color: Color.fromARGB(255, 93, 93, 93),
//                                         width: 2,
//                                       ),
//                                       borderRadius: BorderRadius.all(
//                                         Radius.circular(1),
//                                       ),
//                                     ),
//                                     focusedBorder: OutlineInputBorder(
//                                       borderSide: BorderSide(
//                                         color: Color.fromARGB(255, 93, 93, 93),
//                                         width: 2,
//                                       ),
//                                       borderRadius: BorderRadius.all(
//                                         Radius.circular(1),
//                                       ),
//                                     ),
//                                   ),
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ],
//                       ),
//                     ],
//                   ),
//                   Column(
//                     children: [
//                       ElevatedButton(
//                         onPressed: null,
//                         child: Text(
//                           'Forgot Password?',
//                           style: TextStyle(
//                             color: deepOrange,
//                           ),
//                         ),
//                         style: ButtonStyle(
//                           elevation: MaterialStateProperty.all(0),
//                           backgroundColor:
//                               MaterialStateProperty.all(customWhite),
//                         ),
//                       ),
//                     ],
//                   )
//                 ],
//               ),