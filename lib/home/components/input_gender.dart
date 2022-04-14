import 'package:flutter/material.dart';
import 'package:salon/components/colors_used.dart';
import 'package:salon/home/my_home.dart';

class InputFieldGender extends StatelessWidget {
  InputFieldGender({
    Key? key,
    required this.title,
    this.keyBType = TextInputType.name,
    this.obs = false,
  }) : super(key: key);
  final String title;
  final bool obs;
  final keyBType;
  bool _secureText = true;
  @override
  Widget build(BuildContext context) {
    var devSize = MediaQuery.of(context).size;

    return Padding(
      padding: const EdgeInsets.only(
        top: 10,
        bottom: 20,
      ),
      child: SizedBox(
        width: devSize.width - 60,
        child: TextField(
          onChanged: ((value) {
            gender = value;
          }),
          decoration: InputDecoration(
            // suffixIcon: ,
            hintText: title,
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
          obscureText: obs,
          keyboardType: keyBType,
          style: TextStyle(
            fontFamily: 'PoppinsReg',
            color: AppColors.textColor,
          ),
        ),
      ),
    );
  }
}
