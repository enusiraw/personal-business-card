import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class Info extends StatelessWidget {
  final String phone;
  final String email;
  final String website;

  const Info({
    super.key,
    required this.phone,
    required this.email,
    required this.website,
  });

  @override
  Widget build(BuildContext context) {
    Color myColor = Color.fromARGB(255, 214, 205, 205);
    return SafeArea(
      child: SizedBox(
        width: 323.w,
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListTile(
              leading: const Icon(Icons.phone),
              title: Text("phone", style: GoogleFonts.moulpali(fontSize: 14.sp)),
              subtitle: Text(phone,
                  style: GoogleFonts.moulpali(fontSize: 14.sp, color: Colors.blueAccent)),
            ),
            Divider(
              color: myColor,
            ),
            ListTile(
              leading: const Icon(Icons.web),
              title: Text("Email", style: GoogleFonts.moulpali(fontSize: 14.sp)),
              subtitle: Text(email,
                  style: GoogleFonts.moulpali(fontSize: 14.sp, color: Colors.blueAccent)),
            ),
            Divider(
              color: myColor,
            ),
            ListTile(
              leading: const Icon(Icons.web),
              title: Text("Website", style: GoogleFonts.moulpali(fontSize: 14.sp)),
              subtitle: Text(website,
                  style: GoogleFonts.moulpali(fontSize: 14.sp, color: Colors.blueAccent)),
            ),
          ],
        ),
      ),
    );
  }
}
