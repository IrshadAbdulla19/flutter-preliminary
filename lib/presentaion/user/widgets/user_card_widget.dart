import 'package:flutter/material.dart';
import 'package:preliminary/core/constants.dart';
import 'package:preliminary/presentaion/home/home_screen.dart';
import 'package:preliminary/presentaion/home/widgets/text_widget.dart';

import 'user_detiles.dart';

class UserDetileCard extends StatelessWidget {
  const UserDetileCard(
      {super.key,
      required this.size,
      required this.cardName,
      required this.email,
      required this.firstname,
      required this.lastname,
      required this.icon});
  final String cardName;
  final String firstname;
  final String lastname;
  final String email;
  final Size size;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      color: Colors.teal.shade400,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Icon(
              icon,
              size: size.width * 0.15,
              color: kWhiteforText,
            ),
            cardName == "username"
                ? UserDetiles(
                    size: size,
                    firstname: "First Name : $firstname",
                    lastname: "Last Name : $lastname",
                  )
                : Expanded(
                    child: TextWidget(
                      text: "Email : $email",
                      textStyle: Theme.of(context)
                          .textTheme
                          .headlineLarge!
                          .copyWith(
                              fontWeight: FontWeight.w600,
                              fontSize: size.width * 0.04,
                              color: kWhiteforText),
                    ),
                  ),
          ],
        ),
      ),
    );
  }
}
