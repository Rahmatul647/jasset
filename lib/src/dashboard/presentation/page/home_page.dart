import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jasset/gen/assets.gen.dart';
import 'package:jasset/src/qr_scanner/presentation/page/scanner.dart';

class HomePage extends StatelessWidget {
  static const routeName = "/Home";
  const HomePage({super.key});
  final String barcodeFormat = '';
  final String barcodeValue = '';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(top: 16),
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  "assets/images/logoTelkom.png",
                  height: 50,
                  width: 100,
                ),
                const SizedBox(
                  height: 24,
                ),
                const Text(
                  "Hi, Aulia Putri",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Nunito',
                      fontSize: 24),
                ),
                const SizedBox(
                  height: 4,
                ),
                const Text(
                  "Selamat pagi, semangat bekerja!",
                  style: TextStyle(
                      color: Color(0xff667085),
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      fontFamily: 'Inter'),
                ),
                const SizedBox(
                  height: 16,
                ),
                Image.asset('assets/images/Image.png'),
                const SizedBox(
                  height: 4,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SvgPicture.asset(
                      Assets.icons.icon_laptop,
                      height: 50,
                    ),
                    const SizedBox(
                      width: 6,
                    ),
                    Container(
                      child: const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "07.51 WIB",
                            style: TextStyle(
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w600,
                                fontSize: 16),
                          ),
                          SizedBox(
                            height: 1,
                          ),
                          Text(
                            'Ayo checkin sekarang!',
                            style: TextStyle(
                                fontFamily: 'Inter',
                                fontSize: 12,
                                fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),
                    ),
                    const Spacer(),
                    IconButton(
                        onPressed: () {
                          Navigator.of(context)
                              .pushNamed(ScannerPage.routeName);
                        },
                        icon: Image.asset(
                          'assets/icons/scan.png',
                          height: 40,
                          width: 40,
                        ))
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
