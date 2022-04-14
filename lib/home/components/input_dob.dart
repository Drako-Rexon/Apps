import 'package:feather_icons/feather_icons.dart';
import 'package:flutter/material.dart';
import 'package:salon/components/colors_used.dart';
import 'package:salon/home/my_home.dart';

class InputFieldDoB extends StatelessWidget {
  InputFieldDoB({
    Key? key,
    required this.title,
    this.keyBType = TextInputType.datetime,
    this.obs = false,
  }) : super(key: key);
  final String title;
  final bool obs;
  final keyBType;
  bool secureText = true;
  @override
  Widget build(BuildContext context) {
    var devSize = MediaQuery.of(context).size;
    DateTime selectedDate = DateTime.now();

    _selectDate(BuildContext context) async {
      final DateTime? selected = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime(1970),
        lastDate: DateTime(2022),
      );
      if (selected != null && selected != selectedDate) {
        // setState(() {
        //   selectedDate = selected;
        // });
      }
    }

    return Padding(
      padding: const EdgeInsets.only(
        top: 10,
        bottom: 20,
      ),
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
                _selectDate(context);
              },
            ),
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

class AppDropdownInput<T> extends StatelessWidget {
  final String hintText;
  final List<T> options;
  final T value;
  final String Function(T) getLabel;
  final void Function(T) onChanged;

  AppDropdownInput({
    this.hintText = 'Please select an Option',
    this.options = const [],
    required this.getLabel,
    required this.value,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return FormField<T>(
      builder: (FormFieldState<T> state) {
        return InputDecorator(
          decoration: InputDecoration(
            contentPadding:
                EdgeInsets.symmetric(horizontal: 20.0, vertical: 15.0),
            labelText: hintText,
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(5.0)),
          ),
          isEmpty: value == null || value == '',
          child: DropdownButtonHideUnderline(
            child: DropdownButton<T>(
              value: value,
              isDense: true,
              onChanged: null,
              items: options.map((T value) {
                return DropdownMenuItem<T>(
                  value: value,
                  child: Text(getLabel(value)),
                );
              }).toList(),
            ),
          ),
        );
      },
    );
  }
}
