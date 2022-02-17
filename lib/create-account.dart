import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
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
    return Container();
  }
}
