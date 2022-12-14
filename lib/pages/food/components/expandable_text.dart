import 'package:ecom/components/colors.dart';
import 'package:ecom/components/dimensions.dart';
import 'package:ecom/components/small_text.dart';
import 'package:flutter/material.dart';

class ExpandableTextWidget extends StatefulWidget {
  const ExpandableTextWidget({
    Key? key,
    required this.text,
  }) : super(key: key);

  final String text;

  @override
  State<ExpandableTextWidget> createState() => _ExpandableTextWidgetState();
}

class _ExpandableTextWidgetState extends State<ExpandableTextWidget> {
  late String firstHalf;
  late String secondHalf;

  bool hiddenText = true;

  double textHeight = Dimensions.screenHeight / 5.6;

  @override
  void initState() {
    super.initState();
    if (widget.text.length > textHeight) {
      firstHalf = widget.text.substring(0, textHeight.toInt());
      secondHalf =
          widget.text.substring(textHeight.toInt() + 1, widget.text.length);
    } else {
      firstHalf = widget.text;
      secondHalf = "";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: secondHalf.isEmpty
          ? SmallTextWidget(
              height: 1.8,
              text: firstHalf,
              color: AppColors.paraColor,
              size: Dimensions.font16,
            )
          : Column(
              children: [
                SmallTextWidget(
                  height: 1.8,
                  color: AppColors.paraColor,
                  text: hiddenText
                      ? (firstHalf + "...")
                      : (firstHalf + secondHalf),
                  size: Dimensions.font16,
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      hiddenText = !hiddenText;
                    });
                  },
                  child: Row(
                    children: [
                      SmallTextWidget(
                        text: hiddenText ? "Show more" : "Show less",
                        color: AppColors.mainColor,
                      ),
                      Icon(
                        hiddenText
                            ? Icons.arrow_drop_down
                            : Icons.arrow_drop_up,
                        color: AppColors.mainColor,
                      )
                    ],
                  ),
                ),
              ],
            ),
    );
  }
}
