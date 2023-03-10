import 'package:flutter/material.dart';

class PinCodeWidget extends StatelessWidget {
  final bool filled;

  const PinCodeWidget({
    super.key,
    this.filled = false,
  });

  @override
  Widget build(BuildContext context) {
    const boxSize = 15.0;
    return Container(
      width: boxSize,
      height: boxSize,
      decoration: BoxDecoration(
        color: filled ? Colors.purple : Colors.transparent,
        shape: BoxShape.circle,
        border: Border.all(
          color: Colors.black,
          width: 1,
        ),
      ),
    );
  }
}
