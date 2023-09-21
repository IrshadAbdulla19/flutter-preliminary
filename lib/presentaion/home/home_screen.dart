import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:preliminary/application/Home/home_bloc.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:preliminary/application/User/user_bloc.dart';
import 'package:preliminary/core/constants.dart';
import 'package:preliminary/presentaion/user/user_screen.dart';

import 'widgets/UserItem_widget.dart';
import 'widgets/app_bar_widget.dart';

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
                      child: UserListItem(size: size, user: user),
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
