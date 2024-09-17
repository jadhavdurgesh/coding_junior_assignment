import 'package:coding_junior_assignment/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class PopularCourseCard extends StatelessWidget {
  const PopularCourseCard({
    super.key,
    required this.mq,
    required this.imagePath, required this.imagePath1,
  });

  final Size mq;
  final List<String> imagePath;
  final String imagePath1;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only( left: 16),
      padding: const EdgeInsets.symmetric(horizontal: 16 , vertical: 20),
      width: mq.width*0.55,
      decoration: BoxDecoration(
          color: whiteColor, borderRadius: BorderRadius.circular(12)),
      // width: 200,
      child: Column(
        children: [
          Image.asset(
            imagePath1,
            height: mq.height*0.08,
          ),
          30.heightBox,
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Photoshop Editing',
                style: TextStyle(
                    fontSize: 16, fontWeight: FontWeight.w500),
              ),
              const Text(
                'Course',
                style: TextStyle(
                    fontSize: 16, fontWeight: FontWeight.w500),
              ),
              Row(
                children: [
                  Container(
                    // color: primaryColor,
                    height: 50,
                    width: mq.width*0.2,
                    child: ListView.builder(
                        itemCount: imagePath.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return Align(
                            widthFactor: 0.7,
                            child: CircleAvatar(
                              radius: 14,
                              backgroundImage:
                                  AssetImage(imagePath[index]),
                            ),
                          );
                        }),
                  ),
                  8.widthBox,
                  const Text('Participant')
                ],
              ),
              Divider(
                color: borderColor,
              ),
              8.heightBox,
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
                      Text('4.8', style: TextStyle(fontSize: 12,color: greyColor),),
                      Text(' (230)',style: TextStyle(fontSize: 10, color: greyColor),)
                    ],
                  ),
                  Row(
                    children: [
                       Icon(Icons.play_circle_outline_rounded,color: greyColor,size: 20,),
                      4.widthBox,
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
          ),
        ],
      ),
    );
  }
}
