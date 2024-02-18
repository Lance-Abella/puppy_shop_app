import 'package:flutter/material.dart';

class CircleAvatarIndicator extends StatelessWidget {
  final int currentPage;
  final int itemCount;
  final double dotSize;
  final double dotSpacing;

  const CircleAvatarIndicator({
    Key? key,
    required this.currentPage,
    required this.itemCount,
    this.dotSize = 8.0,
    this.dotSpacing = 5.0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(itemCount, (index) => Padding(
        padding: EdgeInsets.all(dotSpacing),
        child: CircleAvatar(
          backgroundColor: index == currentPage
              ? Colors.brown
              : Colors.grey[300],
          radius: dotSize / 2,
        ),
      )),
    );
  }
}
