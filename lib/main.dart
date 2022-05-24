import 'package:flutter/material.dart';

class StepProgressView extends StatelessWidget {
  final double circleWidth;
  final double circleHeight;
  final double progressLineWidth;
  final double progressLineHeight;
  final double circleBorder;
  final VoidCallback onTap;
  final Color fillColor;
  final Color strokeColor;
  final String time;
  final String title;
  final String subTitle;
  final int index;
  final int listLength;

  StepProgressView({
    required this.circleWidth,
    required this.circleHeight,
    required this.progressLineWidth,
    required this.progressLineHeight,
    required this.circleBorder,
    required this.fillColor,
    required this.strokeColor,
    required this.time,
    required this.title,
    required this.subTitle,
    required this.index,
    required this.listLength,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: onTap,
          child: Row(
            children: [
              Column(
                children: [
                  Container(
                    width: circleWidth,
                    height: circleHeight,
                    decoration: BoxDecoration(
                      color: fillColor,
                      borderRadius:
                          const BorderRadius.all(Radius.circular(25.0)),
                      border: Border.all(
                        color: strokeColor,
                        width: circleBorder,
                      ),
                    ),
                  ),
                  index != listLength - 1
                      ? Container(
                          width: progressLineWidth,
                          height: progressLineHeight,
                          color: strokeColor,
                        )
                      : Container(
                          width: progressLineWidth,
                          height: progressLineHeight,
                          color: Colors.transparent,
                        ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Transform.translate(
                      offset: const Offset(0, -15),
                      child: Text(
                        title,
                        style: const TextStyle(
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    Transform.translate(
                      offset: const Offset(0, -10),
                      child: Text(
                        subTitle,
                        style: const TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: index == listLength - 1 ? 10 : 0),
      ],
    );
  }
}
