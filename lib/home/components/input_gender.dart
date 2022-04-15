import 'package:dropdownfield2/dropdownfield2.dart';
import 'package:flutter/material.dart';
import 'package:salon/components/colors_used.dart';
import 'package:salon/home/my_home.dart';

class InputGender extends StatelessWidget {
  const InputGender({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size devSize = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(top: 10, bottom: 20),
      width: (devSize.width - 60),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(8)),
        border: Border.all(
          width: 2,
          color: AppColors.lightGrey,
        ),
      ),
      child: DropDownField(
        textStyle: TextStyle(
          fontFamily: 'PoppinsReg',
          fontSize: 15,
        ),
        controller: genderSelected,
        hintText: "Select Gender",
        enabled: true,
        itemsVisibleInDropdown: 2,
        items: selectGender,
        hintStyle: TextStyle(
          fontFamily: 'PoppinsReg',
          color: AppColors.lightGrey,
          fontSize: 15,
        ),
        // onValueChanged: (value) {
        //   setState(() {
        //     defGender = value;
        //   });
        // },
      ),
    );
  }
}
