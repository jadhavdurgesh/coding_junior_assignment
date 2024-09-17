import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../../constants/colors.dart';

class CustomVideoCard extends StatelessWidget {
  String title;
  CustomVideoCard({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      margin: EdgeInsets.only(bottom: 12),
      decoration: BoxDecoration(
          color: whiteColor, borderRadius: BorderRadius.circular(8)),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
                border: Border.all(color: borderColor2, width: 1.4)),
            child: Icon(
              Icons.lock,
              color: iconColor,
            ),
          ),
          const Spacer(
            flex: 1,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(
                    Icons.access_time_sharp,
                    color: greyColor,
                  ),
                  4.widthBox,
                  Text(
                    '13h 30min',
                    style: TextStyle(
                        color: greyColor,
                        fontSize: 14,
                        fontWeight: FontWeight.w400),
                  ),
                ],
              )
            ],
          ),
          const Spacer(
            flex: 3,
          ),
          Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
                border: Border.all(color: borderColor)),
            child: Row(
              children: [
                Icon(
                  Icons.play_circle_fill_rounded,
                  color: primaryColor,
                ),
                4.widthBox,
                const Text(
                  'Play Video',
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
