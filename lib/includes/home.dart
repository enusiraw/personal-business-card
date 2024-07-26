import 'package:business_card/includes/avatar.dart';
import 'package:business_card/includes/qr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import 'info.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    const avatarImage = "assets/logo.jpg";
    Color myColor = const Color(0xFF747272);
    Color backColor =  Color.fromRGBO(246, 246, 246, 0.894);

    return Scaffold(
      backgroundColor: backColor,
        body: Column(
      children: [
        const Avatar(image: avatarImage),
       // SizedBox(height: 8.h),
        Padding(
          padding: EdgeInsets.only(left: 67.w,right: 67.w),
          child: Text(
            "Edlawit Siraw Abate",
            style: GoogleFonts.moulpali(
              fontSize: 30.sp,
              color: Colors.black,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 106.w,
            right:104.w,
          ),
          child: Text(
            "Software Engineer",
            style: GoogleFonts.moulpali(
              fontSize: 15.sp,
              color: myColor,
            ),
          ),
        ),
        SizedBox(
          height: 36.h,
        ),
        Padding(
          padding: EdgeInsets.only(left: 70.w, right: 70.w),
          child: Container(
            color: Colors.white,
            width: 250.w,
            height: 250.h,
            child: const Center(
                child: QrScan(link: "https://www.instagram.com/lunareuki/")),
          ),
        ),
        
        Padding(
          padding: EdgeInsets.only( left: 33.w,right:34.w),
          child: const Info(
            phone: "+25190....",
            email: "edlsiraw@gmail.com",
            website: "www.edl.netlify.com",
          ),
        ),
        SizedBox(height:23.h)
      ],
    ));
  }
}
