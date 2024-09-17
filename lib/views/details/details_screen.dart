// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import 'package:coding_junior_assignment/constants/colors.dart';

import 'utils/custom_video_card.dart';
import 'utils/icons_widget.dart';

class DetailsScreen extends StatefulWidget {
  const DetailsScreen({super.key});

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  final List<String> stringList = [
    'Introduction',
    'Introduction',
    'Introduction',
    'Introduction',
    'Introduction',
    'Introduction',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                children: [
                  IconWidget(icon: Icons.arrow_back_ios_new_rounded),
                  const Spacer(),
                  const Text(
                    'Details',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 20,
                    ),
                  ),
                  const Spacer(),
                  IconWidget(
                    icon: Icons.notifications_none_rounded,
                  )
                ],
              ),
            ),
            20.heightBox,
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Container(
                decoration: BoxDecoration(
                    color: whiteColor, borderRadius: BorderRadius.circular(12)),
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Our Student',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                    ),
                    12.heightBox,
                    Row(
                      children: [
                        const CircleAvatar(
                          backgroundImage:
                              AssetImage('assets/images/person1.png'),
                          radius: 16,
                        ),
                        8.widthBox,
                        const CircleAvatar(
                          backgroundImage:
                              AssetImage('assets/images/person2.png'),
                          radius: 16,
                        ),
                        8.widthBox,
                        const CircleAvatar(
                          backgroundImage:
                              AssetImage('assets/images/person3.png'),
                          radius: 16,
                        ),
                        8.widthBox,
                        const CircleAvatar(
                          backgroundImage:
                              AssetImage('assets/images/person4.png'),
                          radius: 16,
                        ),
                        8.widthBox,
                        const CircleAvatar(
                          backgroundImage:
                              AssetImage('assets/images/person5.png'),
                          radius: 16,
                        ),
                      ],
                    ),
                    16.heightBox,
                    const Text(
                      'Photoshop Editing Course',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                    ),
                    12.heightBox,
                    Text(
                      'A presentation that can convey the three-dimensional aspect of a design through a two-dimensional medium.',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: greyColor),
                    ),
                    12.heightBox,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            const Icon(Icons.play_circle_outline_rounded),
                            4.widthBox,
                            Text(
                              '30 Lessons',
                              style: TextStyle(
                                  color: greyColor,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const Icon(Icons.access_time_sharp),
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
                    )
                  ],
                ),
              ),
            ),
            20.heightBox,
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Video',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                  ),
                  Text(
                    'View All',
                    style: TextStyle(
                        color: greyColor,
                        fontSize: 16,
                        fontWeight: FontWeight.w400),
                  ),
                ],
              ),
            ),
            12.heightBox,
            Expanded(
              child: ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: stringList.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: CustomVideoCard(
                      title: stringList[index],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        color: whiteColor,
        padding:
            const EdgeInsets.only(bottom: 28, top: 12, left: 20, right: 20),
        // margin: const EdgeInsets.only(bottom: 16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.max,
          children: [
            Container(
              padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 12),
              decoration: BoxDecoration(
                  color: primaryColor, borderRadius: BorderRadius.circular(8)),
              child: Icon(
                Icons.save,
                color: whiteColor,
              ),
            ),
            Spacer(),
            Container(
              decoration: BoxDecoration(
                  color: primaryColor, borderRadius: BorderRadius.circular(8)),
              padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 52),
              child: const Text(
                'Enroll Now',
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
            )
          ],
        ),
      ),
    );
  }
}
