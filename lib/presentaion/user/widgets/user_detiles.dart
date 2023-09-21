import 'package:flutter/material.dart';
import 'package:preliminary/core/constants.dart';
import 'package:preliminary/presentaion/home/widgets/text_widget.dart';

class UserDetiles extends StatelessWidget {
  const UserDetiles(
      {super.key,
      required this.size,
      required this.firstname,
      required this.lastname});

  final String firstname;
  final String lastname;
  final Size size;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextWidget(
          text: firstname,
          textStyle: Theme.of(context).textTheme.headlineLarge!.copyWith(
              fontWeight: FontWeight.w600,
              fontSize: size.width * 0.04,
              color: kWhiteforText),
        ),
        height10,
        TextWidget(
          text: lastname,
          textStyle: Theme.of(context).textTheme.headlineLarge!.copyWith(
              fontWeight: FontWeight.w600,
              fontSize: size.width * 0.04,
              color: kWhiteforText),
        )
      ],
    );
  }
}
