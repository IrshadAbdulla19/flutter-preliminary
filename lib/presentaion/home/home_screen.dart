import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:preliminary/application/Home/home_bloc.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:preliminary/application/User/user_bloc.dart';
import 'package:preliminary/core/constants.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  final scrollController = ScrollController();
  void setUpScrollController(context) {
    scrollController.addListener(() {
      if (scrollController.position.atEdge) {
        if (scrollController.position.pixels != 0) {
          BlocProvider.of<HomeBloc>(context).add(HomeEvent.getHomeList(2));
        }
      }
    });
  }

  List users = [];
  Set allusers = {};
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    WidgetsBinding.instance.addPostFrameCallback(
      (timeStamp) {
        BlocProvider.of<HomeBloc>(context).add(HomeEvent.getHomeList(1));
        setUpScrollController(context);
      },
    );

    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(size.height * 0.5),
          child: AppBarWidget(
            size: size,
            title: "Users List",
          )),
      backgroundColor: Colors.teal.shade200,
      body: BlocBuilder<HomeBloc, HomeState>(
        builder: (context, state) {
          users.addAll(state.homeList);
          allusers = users.toSet();
          return state.isLoading
              ? const CircularProgressIndicator()
              : ListView.separated(
                  controller: scrollController,
                  itemCount: allusers.length,
                  itemBuilder: (context, index) {
                    var user = allusers.elementAt(index);
                    return InkWell(
                      onTap: () {
                        BlocProvider.of<UserBloc>(context)
                            .add(UserEvent.getUserDetiles(user.id));
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            return UserScreen(
                              userId: user.id.toString(),
                            );
                          },
                        ));
                      },
                      child: Container(
                        margin: EdgeInsets.symmetric(
                            horizontal: size.width * 0.03,
                            vertical: size.height * 0.01),
                        width: double.infinity,
                        height: size.height * 0.2,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            boxShadow: const [BoxShadow(blurRadius: 5)],
                            gradient: LinearGradient(
                                colors: [Colors.grey.shade400, Colors.teal])),
                        child: Row(
                          children: [
                            Container(
                              margin: EdgeInsets.all(size.width * 0.02),
                              width: size.width * 0.3,
                              height: size.height * 0.5,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: NetworkImage(user.avatar),
                                      fit: BoxFit.cover)),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                TextWidget(
                                  text: "First Name : ${user.firstName}",
                                  textStyle: Theme.of(context)
                                      .textTheme
                                      .titleLarge!
                                      .copyWith(
                                          fontWeight: FontWeight.w400,
                                          fontSize: size.width * 0.05,
                                          color: kWhiteforText),
                                ),
                                height10,
                                TextWidget(
                                  text: "Last Name : ${user.lastName}",
                                  textStyle: Theme.of(context)
                                      .textTheme
                                      .titleLarge!
                                      .copyWith(
                                          fontWeight: FontWeight.w400,
                                          fontSize: size.width * 0.05,
                                          color: kWhiteforText),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                  separatorBuilder: (context, index) => const SizedBox(
                    height: 10,
                  ),
                );
        },
      ),
    );
  }
}

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

class TextWidget extends StatelessWidget {
  const TextWidget({super.key, required this.text, required this.textStyle});

  final String text;
  final TextStyle textStyle;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: textStyle,
      overflow: TextOverflow.ellipsis,
    );
  }
}

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
