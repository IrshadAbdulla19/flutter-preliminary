import 'package:flutter/material.dart';
import 'package:preliminary/core/constants.dart';

import 'text_widget.dart';

class UserListItem extends StatelessWidget {
  const UserListItem({
    super.key,
    required this.size,
    required this.user,
  });

  final Size size;
  final user;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
          horizontal: size.width * 0.03, vertical: size.height * 0.01),
      width: double.infinity,
      height: size.height * 0.2,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          boxShadow: const [BoxShadow(blurRadius: 5)],
          gradient:
              LinearGradient(colors: [Colors.grey.shade400, Colors.teal])),
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.all(size.width * 0.02),
            width: size.width * 0.3,
            height: size.height * 0.5,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(user.avatar), fit: BoxFit.cover)),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextWidget(
                text: "First Name : ${user.firstName}",
                textStyle: Theme.of(context).textTheme.titleLarge!.copyWith(
                    fontWeight: FontWeight.w400,
                    fontSize: size.width * 0.05,
                    color: kWhiteforText),
              ),
              height10,
              TextWidget(
                text: "Last Name : ${user.lastName}",
                textStyle: Theme.of(context).textTheme.titleLarge!.copyWith(
                    fontWeight: FontWeight.w400,
                    fontSize: size.width * 0.05,
                    color: kWhiteforText),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
