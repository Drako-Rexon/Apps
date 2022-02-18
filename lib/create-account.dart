import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:yoboresto/choose_location.dart';
import 'package:yoboresto/homepage.dart';
import 'package:yoboresto/redirectPages.dart';
import 'forgotpassword.dart';
import 'main.dart';

class CreateAccount extends StatefulWidget {
  CreateAccount({Key? key}) : super(key: key);

  @override
  State<CreateAccount> createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
  @override
  Widget build(BuildContext context) {
    String dropdownValue = '+91';
    var items = ['+91', '+1', '+251'];
    var devWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SingleChildScrollView(
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
                'Create an account',
                style: TextStyle(
                  fontSize: 35,
                  fontFamily: 'Open',
                ),
              ),
              SizedBox(
                height: 10,
              ),

              SizedBox(
                height: 30,
              ),
              // SizedBox(
              //   height: 20,
              // ),

              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Mobile number',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    'Keep your phone we will texted you a verification \ncode to your phone',
                    style: TextStyle(color: Colors.grey),
                  )
                ],
              ),
              const SizedBox(
                height: 40,
              ),
              Text('Phone number'),
              const SizedBox(
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
                        labelText: 'Phone number',
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
                        child: VerifyAccountCreating(),
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

// ! This below code for account verification during creating account

class VerifyAccountCreating extends StatefulWidget {
  VerifyAccountCreating({Key? key}) : super(key: key);

  @override
  State<VerifyAccountCreating> createState() => _VerifyAccountCreatingState();
}

class _VerifyAccountCreatingState extends State<VerifyAccountCreating> {
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
                'Account verification',
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
                      child: EnterAccountDetails(),
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

// ! This below code is for Entering account details while creating new account

class EnterAccountDetails extends StatefulWidget {
  EnterAccountDetails({Key? key}) : super(key: key);

  @override
  State<EnterAccountDetails> createState() => _EnterAccountDetailsState();
}

class _EnterAccountDetailsState extends State<EnterAccountDetails> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    var devWidth = MediaQuery.of(context).size.width;
    Color getColor(Set<MaterialState> states) {
      const Set<MaterialState> interactiveStates = <MaterialState>{
        MaterialState.pressed,
        MaterialState.hovered,
        MaterialState.focused,
      };
      if (states.any(interactiveStates.contains)) {
        return Colors.blue;
      }
      return Colors.red;
    }

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 30,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 85,
              ),
              Text(
                'Account details',
                style: TextStyle(
                  fontSize: 35,
                  fontFamily: 'Open',
                ),
              ),
              SizedBox(
                height: 10,
              ),

              // SizedBox(
              //   height: 20,
              // ),

              Text('Full name'),
              Container(
                height: 50,
                width: devWidth - 60,
                child: TextField(
                  onChanged: (value) {},
                  decoration: const InputDecoration(
                    hintText: 'Enter your full name',
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
                height: 6,
              ),
              Row(
                children: [
                  Text(
                    'Email id',
                    style: TextStyle(),
                  ),
                  Text(
                    '(optional)',
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
              Container(
                height: 50,
                width: devWidth - 60,
                child: TextField(
                  onChanged: (value) {},
                  decoration: const InputDecoration(
                    hintText: 'Enter your email',
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
                height: 6,
              ),
              Row(
                children: [
                  Text(
                    'Date of birth',
                    style: TextStyle(),
                  ),
                  Text(
                    '(optional)',
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
              Container(
                height: 50,
                width: devWidth - 60,
                child: TextField(
                  keyboardType: TextInputType.number,
                  onChanged: (value) {},
                  decoration: const InputDecoration(
                    hintText: 'Enter Date of birth',
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
                height: 6,
              ),
              Text('Password'),
              Container(
                height: 50,
                width: devWidth - 60,
                child: TextField(
                  obscureText: true,

                  // keyboardType: TextInputType.pas,
                  onChanged: (value) {},
                  decoration: const InputDecoration(
                    hintText: 'Enter new password',
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
                height: 6,
              ),
              Text('Confirm password'),
              Container(
                height: 50,
                width: devWidth - 60,
                child: TextField(
                  obscureText: true,
                  onChanged: (value) {},
                  decoration: const InputDecoration(
                    hintText: 'Enter confirm password',
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
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Checkbox(
                    checkColor: Colors.white,
                    fillColor: MaterialStateProperty.resolveWith(getColor),
                    value: isChecked,
                    onChanged: (bool? value) {
                      setState(() {
                        isChecked = value!;
                      });
                    },
                  ),
                  Text('I accept all the'),
                  ElevatedButton(
                    onPressed: null,
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(customWhite),
                      padding: null,
                    ),
                    child: Text(
                      'terms and conditions',
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
      ), //Safearea
      bottomNavigationBar: Container(
        height: 76,
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 40,
          ),
          child: Row(
            // crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    PageTransition(
                      child: ChooseLocation(),
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
                child: Text('Create Account (working)'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
