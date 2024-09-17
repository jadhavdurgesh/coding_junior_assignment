
import 'package:flutter/material.dart';

import '../../../constants/colors.dart';

class IconWidget extends StatelessWidget {
  IconData icon;
  IconWidget({
    super.key,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: whiteColor,
      ),
      child: Icon(
        icon,
        color: Colors.black,
      ),
    );
  }
}
