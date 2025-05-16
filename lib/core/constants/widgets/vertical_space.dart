import 'package:flutter/material.dart';

class VerticalSpace extends StatelessWidget {
  const VerticalSpace({
    super.key,
    this.value = 8.0,
  });

  final double value;

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      height: value,
    );
  }
}
