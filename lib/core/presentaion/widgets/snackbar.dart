// coverage:ignore-file

import 'package:flutter/material.dart';
import 'package:jasset/gen/assets.gen.dart';
import 'package:lottie/lottie.dart';

SnackBar successSnackbar(
        {required String message, required BuildContext context}) =>
    SnackBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      content: Padding(
        padding: const EdgeInsets.all(8),
        child: Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
              color: Colors.green,
              border: Border.all(color: Colors.green),
              borderRadius: BorderRadius.circular(4)),
          child: Row(
            children: [
              Lottie.asset(Assets.lottie.check, width: 30, height: 30),
              const SizedBox(width: 12),
              SizedBox(
                width: MediaQuery.of(context).size.width * .6,
                child: Text(
                  message,
                  maxLines: 3,
                  style: TextStyle(color: Colors.green),
                ),
              )
            ],
          ),
        ),
      ),
    );
SnackBar errorSnackbar(
        {required String message, required BuildContext context}) =>
    SnackBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      content: Padding(
        padding: const EdgeInsets.all(8),
        child: Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
              color: Colors.red,
              border: Border.all(color: Colors.red),
              borderRadius: BorderRadius.circular(4)),
          child: Row(
            children: [
              Lottie.asset(Assets.lottie.warningRed, width: 30, height: 30),
              const SizedBox(width: 12),
              SizedBox(
                width: MediaQuery.of(context).size.width * .6,
                child: Text(
                  message,
                  maxLines: 3,
                  style: TextStyle(color: Colors.red),
                ),
              )
            ],
          ),
        ),
      ),
    );
