import 'package:cash_flow/core/extension/extension.dart';
import 'package:cash_flow/core/utils/utils.dart';
import 'package:flutter/material.dart';

class TranscationsTextWidgets extends StatelessWidget {
  final String textL;
  final String textR;

  const TranscationsTextWidgets({
    super.key,
    required this.textL,
    required this.textR,
  });

  @override
  Widget build(BuildContext context) => Row(
    crossAxisAlignment: CrossAxisAlignment.start,
    spacing: wi(10),
    children: [
      Expanded(
        flex: 4,
        child: Text(
          textL,
          style: context.textStyle.bodyBody,
          overflow: TextOverflow.ellipsis,
          maxLines: 10,
        ),
      ),
      Expanded(
        flex: 6,
        child: Text(
          textR,
          style: context.textStyle.bodyBody,
          overflow: TextOverflow.ellipsis,
          maxLines: 10,
        ),
      ),
    ],
  );
}
