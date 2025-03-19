import 'package:flutter/material.dart';

class ArrowIcon extends StatelessWidget {
  const ArrowIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.arrow_back),
      onPressed: () => Navigator.of(context).pop(),
      padding: const EdgeInsets.all(8),
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(const Color(0xFF23251F)),
        shape: MaterialStateProperty.all(
          const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(6)),
          ),
        ),
        iconColor: MaterialStateProperty.all(Colors.white),
      ),
    );
  }
}
