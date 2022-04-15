import 'dart:convert';
import 'dart:core';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';

// ! The below are the packages of app for widgets
import 'package:salon/components/colors_used.dart';
import 'package:salon/home/components/big_card.dart';
import 'package:salon/home/components/bottom_nav_bar.dart';
import 'package:salon/home/components/card_heading.dart';
import 'package:salon/home/components/input_conf_pass.dart';
import 'package:salon/home/components/input_dob.dart';
import 'package:salon/home/components/input_email.dart';
import 'package:salon/home/components/input_fname.dart';
import 'package:salon/home/components/input_gender.dart';
import 'package:salon/home/components/input_pass.dart';
import 'package:salon/home/components/nav_container.dart';
import 'package:salon/home/components/radio_buttons.dart';
import 'package:salon/home/components/small_card.dart';
import 'package:salon/home/components/submit_button.dart';
import 'package:salon/home/components/upload_image.dart';

String? fName, eMail, pass, confPass, gender;

String defGender = "";
List<String> selectGender = ["Male", "Female"];
final genderSelected = TextEditingController();

class MyHome extends StatefulWidget {
  const MyHome({Key? key}) : super(key: key);

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  Map? responseMap;

  // ! This is for fething the data from API
  Future apiCallHttp() async {
    http.Response httpResponse =
        await http.get(Uri.parse('https://anaajapp.com/api/categories'));
    if (httpResponse.statusCode == 200) {
      setState(() {
        responseMap = json.decode(httpResponse.body);
      });
    } else {
      print(httpResponse.statusCode);
    }
    if (responseMap == null) {
      return;
    }
  }

  @override
  void initState() {
    apiCallHttp();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    List navIcons = [
      Icons.home,
      Icons.calendar_month,
      Icons.location_on,
      Icons.message,
      Icons.account_circle
    ];
    List navIconName = [
      "Home",
      "Bookings",
      "Nearby",
      "Message",
      "Account",
    ];
    var devSize = MediaQuery.of(context).size;
    int show = 0;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              NavConatiner(),
              CardHeading(title: 'Highest Rated'),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: BigCardWidget(),
              ),
              CardHeading(title: 'Services (API used)'),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: SmallCard(),
              ),
              Padding(
                  padding: const EdgeInsets.only(
                      top: 30, bottom: 30, left: 24, right: 24),
                  child: Divider(
                      thickness: 2, height: 2, color: AppColors.lightergrey)),
                      
              // From Here the form has started
              UploadImage(),
              InputFieldFName(
                title: "Full Name",
              ),
              InputFieldEMail(
                title: "Email ID",
              ),
              InputFieldCPass(
                title: "Create Password",
              ),
              InputFieldConfPass(
                title: "Confirm Password",
              ),
              InputGender(),
              InputFieldDoB(title: 'Date of Birth'),
              RodioButtons(),
              SubmitButton(devSize: devSize),
              // Text(),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavBar(
          navIcons: navIcons,
          navIconName: navIconName,
        ),
      ),
    );
  }
}
