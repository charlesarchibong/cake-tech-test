import 'package:flutter/material.dart';

class PinKeyboardWidget extends StatelessWidget {
  final ValueChanged<int>? onPressed;

  const PinKeyboardWidget({
    super.key,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        crossAxisSpacing: 13.5,
        mainAxisSpacing: 13.5,
        childAspectRatio: 1.5,
      ),
      itemCount: 12,
      itemBuilder: (_, i) {
        return InkWell(
          onTap: () {
            onPressed?.call(i);
          },
          child: Container(
            height: 30.0,
            width: 30.0,
            decoration: BoxDecoration(
              color: i == 9 ? Colors.transparent : const Color(0xffF5F6F9),
              shape: BoxShape.circle,
            ),
            child: Center(
              child: i == 11
                  ? const Icon(
                      Icons.backspace_outlined,
                      size: 24.0,
                      color: Colors.black,
                    )
                  : Text(
                      i == 10 ? '0' : (i == 9 ? '' : '${i + 1}'),
                      style: const TextStyle(
                        fontSize: 20,
                        color: Color(0xff859DBB),
                      ),
                    ),
            ),
          ),
        );
      },
    );
  }
}
