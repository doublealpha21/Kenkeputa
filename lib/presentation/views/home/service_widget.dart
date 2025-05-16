import 'package:flutter/material.dart';

class ServiceWidget extends StatelessWidget {
  const ServiceWidget({
    super.key,
    required this.image,
    required this.text,
  });

  final String image;
  final String text;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {},
        child: Card.outlined(
          child: Column(
            children: [
              Image.asset(image),
              Text(text),
            ],
          ),
        ));
  }
}
