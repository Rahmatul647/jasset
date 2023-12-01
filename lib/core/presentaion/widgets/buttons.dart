// ignore_for_file: public_member_api_docs, sort_constructors_first
// coverage:ignore-file

import 'package:flutter/material.dart';

class PrimaryButton extends StatefulWidget {
  final void Function()? onPressed;
  final ButtonStyle? buttonStyle;
  final Widget child;
  final bool isLoading;

  const PrimaryButton({
    Key? key,
    required this.onPressed,
    required this.child,
    this.isLoading = false,
    this.buttonStyle,
  }) : super(key: key);

  @override
  State<PrimaryButton> createState() => _PrimaryButtonState();
}

class _PrimaryButtonState extends State<PrimaryButton> {
  @override
  Widget build(BuildContext context) {
    return FilledButton(
        style: widget.buttonStyle,
        onPressed: widget.isLoading ? null : widget.onPressed,
        child: widget.isLoading ? const Text("Loading...") : widget.child);
  }
}
