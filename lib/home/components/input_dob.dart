import 'package:feather_icons/feather_icons.dart';
import 'package:flutter/material.dart';
import 'package:salon/components/colors_used.dart';
import 'package:salon/home/my_home.dart';

class InputFieldDoB extends StatefulWidget {
  InputFieldDoB({
    Key? key,
    required this.title,
    this.keyBType = TextInputType.datetime,
    this.obs = false,
  }) : super(key: key);
  final String title;
  final bool obs;
  final keyBType;

  @override
  State<InputFieldDoB> createState() => _InputFieldDoBState();
}

class _InputFieldDoBState extends State<InputFieldDoB> {
  bool secureText = true;

  @override
  Widget build(BuildContext context) {
    var devSize = MediaQuery.of(context).size;
    DateTime _dobTime;

    return Padding(
      padding: const EdgeInsets.only(top: 10, bottom: 20),
      child: SizedBox(
        width: devSize.width - 60,
        child: TextField(
          onChanged: ((value) {
            fName = value;
          }),
          decoration: InputDecoration(
            suffixIcon: IconButton(
              icon: Icon(
                FeatherIcons.calendar,
                color: AppColors.textColor,
              ),
              onPressed: () {
                showDatePicker(
                  context: context,
                  initialDate: DateTime.now(),
                  firstDate: DateTime(1970),
                  lastDate: DateTime(2022),
                ).then((value) {
                  setState(() {
                    _dobTime = value!;
                  });
                });
              },
            ),
            hintText: widget.title,
            contentPadding: EdgeInsets.only(
              left: 20,
              right: 20,
              top: 16,
              bottom: 16,
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide(
                color: AppColors.lightergrey,
                width: 2,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: AppColors.enableBorder,
                width: 2,
              ),
            ),
          ),
          maxLines: 1,
          obscureText: widget.obs,
          keyboardType: widget.keyBType,
          style: TextStyle(
            fontFamily: 'PoppinsReg',
            color: AppColors.textColor,
          ),
        ),
      ),
    );
  }
}
