import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:preliminary/application/User/user_bloc.dart';
import 'package:preliminary/core/constants.dart';

import 'widgets/user_card_widget.dart';

class UserScreen extends StatelessWidget {
  const UserScreen({super.key, required this.userId});
  final String userId;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          BlocBuilder<UserBloc, UserState>(
            builder: (context, state) {
              return state.isLoading
                  ? CircularProgressIndicator()
                  : Container(
                      width: size.width * 1,
                      height: size.height * 0.7,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image:
                                  NetworkImage(state.user?.avatar ?? tempImg),
                              fit: BoxFit.cover)),
                    );
            },
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              padding: EdgeInsets.only(
                  top: size.height * 0.03,
                  left: size.width * 0.04,
                  right: size.width * 0.04),
              width: double.infinity,
              height: size.height * 0.35,
              decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
                    Colors.teal,
                    Colors.grey.shade400,
                  ], begin: Alignment.topLeft),
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40))),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  BlocBuilder<UserBloc, UserState>(
                    builder: (context, state) {
                      return UserDetileCard(
                        icon: Icons.account_box_rounded,
                        size: size,
                        cardName: "username",
                        firstname: state.user?.firstName ?? "first name",
                        lastname: state.user?.lastName ?? "last name",
                        email: state.user?.email ?? "email",
                      );
                    },
                  ),
                  BlocBuilder<UserBloc, UserState>(
                    builder: (context, state) {
                      return UserDetileCard(
                        icon: Icons.email,
                        size: size,
                        cardName: "email",
                        firstname: state.user?.firstName ?? "first name",
                        lastname: state.user?.lastName ?? "last name",
                        email: state.user?.email ?? "email",
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
