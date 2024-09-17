import 'package:coding_junior_assignment/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class popularcourse2 extends StatelessWidget {
  const popularcourse2({
    super.key,
    required this.mq,
  });

  final Size mq;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        margin: EdgeInsets.only(bottom: 12),
        decoration: BoxDecoration(
          color: whiteColor,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          children: [
            Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: borderColor2.withOpacity(0.4),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Image.asset(
                'assets/images/21.png',
                height: mq.height * 0.05,
              ),
            ),
            20.widthBox,
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Adobe Xd Editing Course',
                ),
                12.heightBox,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.star_rate_rounded,
                          color: Colors.amber,
                          size: 20,
                        ),
                        Text(
                          '4.8',
                          style: TextStyle(fontSize: 12, color: greyColor),
                        ),
                        Text(
                          ' (230)',
                          style: TextStyle(fontSize: 10, color: greyColor),
                        )
                      ],
                    ),
                    20.widthBox,
                    Row(
                      children: [
                        Icon(
                          Icons.play_circle_outline_rounded,
                          color: greyColor,
                          size: 20,
                        ),
                        Text(
                          '30 Lessons',
                          style: TextStyle(
                              color: greyColor,
                              fontSize: 12,
                              fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
