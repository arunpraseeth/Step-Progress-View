import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Stepper Progress View',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: StepProgressView(),
    );
  }
}

class StepProgressView extends StatelessWidget {
  final double circleWidth;
  final double circleHeight;
  final double progressLineWidth;
  final double progressLineHeight;
  final double circleBorder;
  final VoidCallback? onTap;
  final Color fillColor;
  final Color strokeColor;
  final String title;
  final String subTitle;
  final int index;
  final int listLength;

  StepProgressView({
    this.circleWidth = 30,
    this.circleHeight = 30,
    this.progressLineWidth = 4,
    this.progressLineHeight = 40,
    this.circleBorder = 3,
    this.fillColor = Colors.white,
    this.strokeColor = Colors.grey,
    this.title = "Title",
    this.subTitle = "Sub Title",
    this.index = 1,
    this.listLength = 1,
    this.onTap,
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
      ],
    );
  }
}
