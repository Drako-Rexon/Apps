import 'package:feather_icons/feather_icons.dart';
import 'package:flutter/material.dart';
import 'package:salon/components/colors_used.dart';
import 'package:salon/home/my_home.dart';

class InputFieldCPass extends StatefulWidget {
  InputFieldCPass({
    Key? key,
    required this.title,
    this.keyBType = TextInputType.name,
  }) : super(key: key);
  final String title;
  final keyBType;

  @override
  State<InputFieldCPass> createState() => _InputFieldCPassState();
}

class _InputFieldCPassState extends State<InputFieldCPass> {
  bool _secureText = true;
  bool _obs = true;

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
            pass = value;
          }),
          decoration: InputDecoration(
            suffixIcon: IconButton(
              icon: Icon(_secureText ? FeatherIcons.eyeOff : FeatherIcons.eye),
              onPressed: () {
                setState(() {
                  _secureText = !_secureText;
                  if (!_secureText) {
                    _obs = true;
                  } else {
                    _obs = false;
                  }
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
          obscureText: _obs,
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
