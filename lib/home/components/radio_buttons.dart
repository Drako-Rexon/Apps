import 'package:flutter/material.dart';

class RodioButtons extends StatefulWidget {
  RodioButtons({
    Key? key,
  }) : super(key: key);

  @override
  State<RodioButtons> createState() => _RodioButtonsState();
}

class _RodioButtonsState extends State<RodioButtons> {
  Object? _value = 1;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 60),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Radio(
                value: 1,
                groupValue: _value,
                onChanged: (value) {
                  setState(() {
                    _value = value;
                  });
                },
              ),
              Text('Active'),
            ],
          ),
          Row(
            children: [
              Radio(
                value: 2,
                groupValue: _value,
                onChanged: (value) {
                  setState(() {
                    _value = value;
                  });
                },
              ),
              Text('Suspended'),
            ],
          ),
        ],
      ),
    );
  }
}
