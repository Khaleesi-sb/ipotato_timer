import 'package:flutter/material.dart';

class EmptyStateBody extends StatelessWidget {
  const EmptyStateBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      // mainAxisSize: MainAxisSize.min,
      children: [
        const Text('No timers active. Press here to start a new one'),
        Image.asset('assets/images/group3.png'),
      ],
    );
  }
}
