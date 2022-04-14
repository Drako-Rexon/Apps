
import 'package:flutter/material.dart';
import 'package:salon/components/colors_used.dart';
import 'package:salon/components/json_used.dart';

class BigCardWidget extends StatelessWidget {
  const BigCardWidget({
    Key? key,
    required this.devSize,
  }) : super(key: key);

  final Size devSize;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10),
      child: Row(
        children: List.generate(bigCardData.length, (index) {
          return Container(
            margin: EdgeInsets.only(
              left: 15,
            ),
            padding: EdgeInsets.symmetric(
              horizontal: 10,
              vertical: 10,
            ),
            height: 200,
            width: (devSize.width * 0.6),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(8)),
              border: Border.all(
                color: AppColors.lightergrey,
              ),
              // color: Colors.white,
            ),
            child: Column(
              children: [
                Container(
                  height: 100,
                  margin: EdgeInsets.only(bottom: 5),
                  width: (devSize.width * 0.6) - 20,
                  decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.all(Radius.circular(8)),
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(
                          'assets/images/pic${index}.png'),
                    ),
                  ),
                ), // ! This is for image in the card
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'Salon Name',
                      maxLines: 1,
                      style: TextStyle(
                        fontFamily: 'poppinsReg',
                        color: AppColors.textColor,
                      ),
                    ),
                    Text(
                      'Location',
                      maxLines: 1,
                      style: TextStyle(
                        fontSize: 12,
                        fontFamily: 'poppinsReg',
                        color: AppColors.lightGrey,
                      ),
                    ),
                    Row(
                      mainAxisAlignment:
                          MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 5),
                          child: Row(
                            children: List.generate(
                                bigCardData[index]['rating'],
                                (index1) {
                              return Icon(
                                Icons.star,
                                color: Colors.yellow.shade500,
                                size: 15,
                              );
                            }), // ! this will use for the stars
                          ),
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.location_on_outlined,
                              size: 20,
                              color: AppColors.lightGrey,
                            ),
                            Text(
                              '2 Mile',
                              style: TextStyle(
                                  fontFamily: 'poppinsReg',
                                  fontSize: 12,
                                  color: AppColors.lightGrey),
                            ),
                          ], // ! This is for the distance
                        ),
                      ],
                    )
                  ],
                ),
              ],
            ),
          );
        }),
      ),
    );
  }
}
