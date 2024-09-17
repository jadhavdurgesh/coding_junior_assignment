import 'package:coding_junior_assignment/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class StatsContainer extends StatelessWidget {
  const StatsContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
      decoration: BoxDecoration(
          color: primaryColor, borderRadius: BorderRadius.circular(12)),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
                color: secondaryColor, borderRadius: BorderRadius.circular(8)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('Mathematics Course', style: TextStyle()),
                Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                      color: primaryColor,
                      borderRadius: BorderRadius.circular(8)),
                  child: Row(
                    children: [
                      const Icon(Icons.calendar_month_rounded),
                      4.widthBox,
                      const Text('16 Sept, 2023')
                    ],
                  ),
                )
              ],
            ),
          ),
          20.heightBox,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: secondaryColor,
                      shape: BoxShape.circle,
                      // borderRadius: BorderRadius.circular(8)
                    ),
                    child: Icon(
                      Icons.check_circle_rounded,
                      color: primaryColor,
                    ),
                  ),
                  12.widthBox,
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Completed',
                      ),
                      Text(
                        '20',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w600),
                      )
                    ],
                  )
                ],
              ),
              Container(
                width: 2,
                height: 60,
                color: secondaryColor,
              ),
              Row(
                children: [
                  Container(
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: secondaryColor,
                      shape: BoxShape.circle,
                    ),
                    child: Icon(
                      Icons.access_time_filled_rounded,
                      color: primaryColor,
                    ),
                  ),
                  12.widthBox,
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Hours Spent',
                      ),
                      Text(
                        '455',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w600),
                      )
                    ],
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
