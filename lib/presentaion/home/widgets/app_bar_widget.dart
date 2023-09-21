import 'package:flutter/material.dart';
import 'package:preliminary/core/constants.dart';
import 'package:preliminary/presentaion/home/widgets/text_widget.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({super.key, required this.title, required this.size});
  final String title;
  final Size size;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height * 0.1,
      decoration: BoxDecoration(color: Colors.teal.shade700),
      child: SafeArea(
        child: Row(
          children: [
            width10,
            TextWidget(
              textStyle: Theme.of(context).textTheme.titleLarge!.copyWith(
                  fontWeight: FontWeight.w600,
                  fontSize: size.width * 0.08,
                  color: kWhiteforText),
              text: title,
            ),
          ],
        ),
      ),
    );
  }
}
