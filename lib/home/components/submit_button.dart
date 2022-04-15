
import 'package:flutter/material.dart';
import 'package:salon/components/colors_used.dart';

class SubmitButton extends StatelessWidget {
  const SubmitButton({
    Key? key,
    required this.devSize,
  }) : super(key: key);

  final Size devSize;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 30, top: 15),
      child: ElevatedButton(
        // minWidth: devSize.width - 60,
        // height: 40,
        // color: AppColors.submitColor,
        // highlightColor: AppColors.submitColor,
        // splashColor: AppColors.submitColor,
        // hoverColor: AppColors.submitColor,
        style: ButtonStyle(
          minimumSize:
              MaterialStateProperty.all(Size(devSize.width - 60, 50)),
          backgroundColor:
              MaterialStateProperty.all(AppColors.submitColor),
        ),
        onPressed: null,
        child: Text(
          'Submit',
          style: TextStyle(
            color: Colors.white,
            fontFamily: 'PoppinsMed',
            fontSize: 15,
          ),
        ),
      ),
    );
  }
}
