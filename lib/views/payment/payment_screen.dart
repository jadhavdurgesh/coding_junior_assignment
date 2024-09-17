import 'package:barcode_widget/barcode_widget.dart';
import 'package:coding_junior_assignment/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class PaymentScreen extends StatelessWidget {
  const PaymentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size mq = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              children: [
                Center(
                  child: Container(
                      padding: EdgeInsets.only(top: 80, right: 10),
                      // color: primaryColor,
                      height: mq.height * 0.7,
                      width: mq.width * 0.9,
                      child: Image.asset(
                        'assets/images/card1.png',
                        fit: BoxFit.fitHeight,
                      )),
                ),
                Positioned(
                    left: mq.width * 0.35,
                    bottom: mq.height * 0.55,
                    child: Icon(
                      Icons.check_circle,
                      color: Colors.teal.withOpacity(0.6),
                      size: mq.width * 0.3,
                    )),
                Positioned(
                  left: mq.width * 0.15,
                  bottom: mq.height * 0.06,
                  child: Column(
                    children: [
                      const Text(
                        'Payment Success',
                        style: TextStyle(
                            fontWeight: FontWeight.w700, fontSize: 24),
                      ),
                      12.heightBox,
                      Text(
                        '\$35',
                        style: TextStyle(
                            fontWeight: FontWeight.w700,
                            color: Colors.teal.withOpacity(0.6),
                            fontSize: 28),
                      ),
                      28.heightBox,
                      Container(
                        padding:
                            EdgeInsets.symmetric(vertical: 12, horizontal: 12),
                        decoration: BoxDecoration(
                            color: backgroundColor,
                            borderRadius: BorderRadius.circular(4)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                CircleAvatar(
                                  radius: 12,
                                  backgroundImage:
                                      AssetImage('assets/images/person1.png'),
                                ),
                                12.widthBox,
                                Text('Durgesh Jadhav')
                              ],
                            ),
                            12.heightBox,
                            Text(
                              'Adobe Xd Editing Course',
                              style: TextStyle(
                                  fontWeight: FontWeight.w600, fontSize: 18),
                            ),
                            50.heightBox,
                            Row(
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'ID Transcription',
                                      style: TextStyle(
                                          fontSize: 12, color: greyColor),
                                    ),
                                    8.heightBox,
                                    Text(
                                      'TA32433KNM',
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w700),
                                    )
                                  ],
                                ),
                                80.widthBox,
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Invoice Date',
                                      style: TextStyle(
                                          fontSize: 12, color: greyColor),
                                    ),
                                    8.heightBox,
                                    Text(
                                      'Sept17, 2024',
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w700),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                      40.heightBox,
                      BarcodeScreen()
                      //  Image.asset('assets/images/barcode.png', height: mq.height*0.4, width: mq.width*0.4,)
                    ],
                  ),
                )
              ],
            ),
            // Spacer()
            50.heightBox,
            Container(
              padding: EdgeInsets.symmetric(vertical: 16),
              margin: EdgeInsets.symmetric(horizontal: 30),
              decoration: BoxDecoration(
                color: primaryColor,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Center(
                child: Text(
                  'Done',
                  style: TextStyle(fontWeight: FontWeight.w600),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class BarcodeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: BarcodeWidget(
        barcode: Barcode.code128(), // Choose the type of barcode
        data: '1234567890', // Data to encode
        width: 300, // Width of the barcode
        height: 50, // Height of the barcode
        drawText: false, // Optionally display the text below the barcode
      ),
    );
  }
}
