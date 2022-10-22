import 'package:ecom/pages/home/components/icon_and_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'big_text.dart';
import 'colors.dart';
import 'dimensions.dart';
import 'small_text.dart';

class FoodMainData extends StatelessWidget {
  const FoodMainData({
    Key? key,
    required this.text,
  }) : super(key: key);

  final String text;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        BigTextwidget(
          text: 'Chinese Slide',
          size: Dimensions.font26,
        ),
        SizedBox(
          height: Dimensions.height20,
        ), //! We can use this for the padding between the objects
        Row(
          children: [
            Wrap(
              children: List.generate(5, (index) {
                return const Icon(
                  Icons.star,
                  color: AppColors.mainColor,
                  size: 18,
                );
              }),
            ),
            const SizedBox(width: 5),
            const SmallTextWidget(text: 'rating'),
            const SizedBox(width: 5),
            const SmallTextWidget(text: '123 comments'),
          ],
        ),
        SizedBox(
          height: Dimensions.height20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            IconAndTextWidget(
              color: AppColors.textColor,
              title: 'Normal',
              iconColor: AppColors.iconColor1,
              icon: Icons.circle,
            ),
            IconAndTextWidget(
              color: AppColors.textColor,
              title: '1.7 km',
              iconColor: AppColors.mainColor,
              icon: Icons.location_on,
            ),
            IconAndTextWidget(
              color: AppColors.textColor,
              title: '32 min',
              iconColor: AppColors.iconColor2,
              icon: FeatherIcons.clock,
            ),
          ],
        ),
      ],
    );
  }
}
