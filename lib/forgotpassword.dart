import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:yoboresto/signinpage.dart';
import 'account_check.dart';
import 'main.dart';

class ForgotPassword extends StatefulWidget {
  ForgotPassword({Key? key}) : super(key: key);

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  @override
  Widget build(BuildContext context) {
    var devWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 30,
          ),
          child: Column(
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
                    color: Color.fromARGB(255, 195, 90, 90),
                  ),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Text(
                'Forgot password',
                style: TextStyle(
                  fontSize: 35,
                  fontFamily: 'Open',
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'We will send a verification code',
                style: TextStyle(
                  fontSize: 15,
                  fontFamily: 'Open',
                  color: Colors.grey,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              // SizedBox(
              //   height: 20,
              // ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Send code to',
                        style: TextStyle(
                          fontSize: 12,
                        ),
                      ),
                      SizedBox(
                        height: 8,
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
              const SizedBox(
                height: 40,
              ),
              Text('Phone number'),
              const SizedBox(
                height: 10,
              ),
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
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    PageTransition(
                        child: EnterOTP(),
                        type: PageTransitionType.leftToRight),
                  );
                },
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
                child: Text('Send OTP (working)'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// ! The below content is for the page which is receiving OTP by the user

class EnterOTP extends StatefulWidget {
  EnterOTP({Key? key}) : super(key: key);

  @override
  State<EnterOTP> createState() => _EnterOTPState();
}

class _EnterOTPState extends State<EnterOTP> {
  @override
  Widget build(BuildContext context) {
    var devWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 30,
          ),
          child: Column(
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
                    color: Color.fromARGB(255, 195, 90, 90),
                  ),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Text(
                'Forgot password',
                style: TextStyle(
                  fontSize: 35,
                  fontFamily: 'Open',
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Enter your verification code',
                style: TextStyle(
                  fontSize: 15,
                  fontFamily: 'Open Sans',
                  color: Colors.black,
                ),
              ),
              SizedBox(
                height: 40,
              ),
              // SizedBox(
              //   height: 20,
              // ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'We have texted you a verification code to your\nphone number +91 99xxxx123',
                        style: TextStyle(fontSize: 15, color: Colors.grey),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 40,
              ),

              Container(
                height: 50,
                width: devWidth - 120,
                child: TextField(
                  onChanged: (value) {},
                  decoration: const InputDecoration(
                    hintText: 'Enter OTP',
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
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Didn\'t receive OTP'),
                  ElevatedButton(
                    onPressed: null,
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(customWhite),
                      padding: null,
                    ),
                    child: Text(
                      'Resend OTP',
                      style: TextStyle(
                        color: deepOrange,
                      ),
                    ),
                  ),
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
            // crossAxisAlignment: CrossAxisAlignment,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    PageTransition(
                      child: ResetPassword(),
                      type: PageTransitionType.rightToLeft,
                    ),
                  );
                },
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
                child: Text('Verify (working)'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// ! This page is for resetting the password

class ResetPassword extends StatefulWidget {
  ResetPassword({Key? key}) : super(key: key);

  @override
  State<ResetPassword> createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
  @override
  Widget build(BuildContext context) {
    var devWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 30,
          ),
          child: Column(
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
                    color: Color.fromARGB(255, 195, 90, 90),
                  ),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Text(
                'Reset new password',
                style: TextStyle(
                  fontSize: 35,
                  fontFamily: 'Open Sans',
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Set a new password',
                style: TextStyle(
                  fontSize: 15,
                  fontFamily: 'Open Sans',
                  color: Colors.grey,
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Text('Password'),
              const SizedBox(
                height: 10,
              ),
              Container(
                height: 50,
                width: devWidth - 120,
                child: TextField(
                  onChanged: (value) {},
                  decoration: const InputDecoration(
                    hintText: 'Enter new password here',
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
              SizedBox(
                height: 20,
              ),
              Text('Confirm password'),
              const SizedBox(
                height: 10,
              ),
              Container(
                height: 50,
                width: devWidth - 120,
                child: TextField(
                  onChanged: (value) {},
                  decoration: const InputDecoration(
                    hintText: 'Enter confirm password here',
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
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    PageTransition(
                        child: SignIn(),
                        type: PageTransitionType.leftToRight),
                  );
                },
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
                child: Text('Done (working)'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
