import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qr_flutter/qr_flutter.dart';

class QrScan extends StatelessWidget {
  final String link;

  const QrScan({super.key, required this.link});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: 14.h,
        left: 17.w,
        right: 17.w,
        bottom: 14.w,
      ),
      child: QrImageView(
        data: link,
        version: QrVersions.auto,
         //size: 216.w,
        gapless: false,
        embeddedImage: const AssetImage(
            'assets/logo.jpg'), 
        embeddedImageStyle: const QrEmbeddedImageStyle(
          size:Size(40, 40),
        ),
        backgroundColor: Colors.transparent, 
      ),
    );
  }
}
