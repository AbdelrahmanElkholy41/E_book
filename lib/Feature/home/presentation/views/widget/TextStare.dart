import 'package:flutter/material.dart';

class TextStare extends StatelessWidget {
  const TextStare({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Icon(Icons.star, color: Colors.amber, size: 16),
        const SizedBox(width: 4),
        Text(
          '4.8 (2390)',
          style: Theme.of(context).textTheme.bodyMedium,
        ),
      ],
    );
  }
}