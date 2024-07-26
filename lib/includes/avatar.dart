import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Avatar extends StatelessWidget {
  final String image;
  const Avatar({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return Padding(
    padding: EdgeInsets.only(
        top: 63.h,
        left: 135.w,
        right: 135.w,
      ),
      child: CircleAvatar(
        radius: 80.r,
        backgroundImage: AssetImage(image),
      ),
    );
  }
}
