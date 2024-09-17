import 'package:coding_junior_assignment/constants/colors.dart';
import 'package:coding_junior_assignment/views/details/utils/icons_widget.dart';
import 'package:coding_junior_assignment/views/home/utils/popular_course_card.dart';
import 'package:coding_junior_assignment/views/home/utils/popularcourse2.dart';
import 'package:coding_junior_assignment/views/home/utils/stats_container.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size mq = MediaQuery.of(context).size;
    List<String> imagePath = [
      'assets/images/person1.png',
      'assets/images/person2.png',
      'assets/images/person3.png',
      'assets/images/person4.png',
    ];

    List<String> imagePath1 = [
      'assets/images/21.png',
      'assets/images/22.png',
      'assets/images/23.png',
      'assets/images/24.png',
    ];

    return Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            physics: ClampingScrollPhysics(),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Row(
                        children: [
                          const CircleAvatar(
                            radius: 24,
                            backgroundImage:
                                AssetImage('assets/images/person1.png'),
                          ),
                          12.widthBox,
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'Durgesh Jadhav',
                                style: TextStyle(
                                    fontWeight: FontWeight.w500, fontSize: 18),
                              ),
                              Text(
                                'Lets learning to smart',
                                style: TextStyle(
                                  // fontWeight: FontWeight.w500,
                                  fontSize: 12,
                                  color: greyColor,
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                    // Spacer(),
                    // Spacer(flex: 3,),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: IconWidget(icon: Icons.search_rounded),
                    )
                  ],
                ),
                20.heightBox,
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: const StatsContainer(),
                ),
                20.heightBox,
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Popular Course',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w600),
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
                20.heightBox,
                SizedBox(
                  height: mq.height * 0.31,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: imagePath1.length,
                    itemBuilder: (BuildContext context, int index) {
                      return PopularCourseCard(
                        mq: mq,
                        imagePath1: imagePath1[index],
                        imagePath: imagePath,
                      );
                    },
                  ),
                ),
                20.heightBox,
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Popular Course',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w600),
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
                20.heightBox,
                Container(
                  height: mq.height * 0.5,
                  child: ListView.builder(
                    itemCount: 5,
                    itemBuilder: (BuildContext context, int index) {
                      return popularcourse2(mq: mq);
                    },
                  ),
                )
              ],
            ),
          ),
        ),
        bottomNavigationBar: Container(
          color: whiteColor,
          padding: EdgeInsets.only(bottom: 20, top: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.home_rounded,
                    color: primaryColor,
                    size: 32,
                  )),
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.favorite_border_rounded,
                    size: 30,
                  )),
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.notifications_none_rounded,
                    size: 32,
                  )),
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.person,
                    size: 32,
                  )),
            ],
          ),
        ));
  }
}
