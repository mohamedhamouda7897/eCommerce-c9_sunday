import 'package:e_commerce_c9_sunday/core/utils/app_colors.dart';
import 'package:e_commerce_c9_sunday/core/utils/app_images.dart';
import 'package:e_commerce_c9_sunday/featuers/home/presentation/pages/home_page/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../home_page_bloc/home_page_bloc.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomePageBloc(),
      child: BlocConsumer<HomePageBloc, HomePageState>(
        listener: (context, state) {},
        builder: (context, state) {
          return Scaffold(
            bottomNavigationBar: ClipRRect(
              borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(18), topLeft: Radius.circular(18)),
              child: BottomNavigationBar(
                onTap: (value) {
                  HomePageBloc.get(context).add(TabChange(tabIndex: value));
                },
                currentIndex: state.tabIndex,
                backgroundColor: AppColor.bottomAppBarColor,
                type: BottomNavigationBarType.fixed,
                showUnselectedLabels: false,
                showSelectedLabels: false,
                items: const [
                  BottomNavigationBarItem(
                      icon: ImageIcon(AssetImage(AppImages.homeIconImage)),
                      label: ""),
                  BottomNavigationBarItem(
                      icon: ImageIcon(AssetImage(AppImages.categoryIconImage)),
                      label: ""),
                  BottomNavigationBarItem(
                      icon: ImageIcon(AssetImage(AppImages.faveIconImage)),
                      label: ""),
                  BottomNavigationBarItem(
                      icon: ImageIcon(AssetImage(AppImages.profileIconImage)),
                      label: ""),
                ],
              ),
            ),
            extendBody: true,
            body: Center(child: bottomNavBarScreens[state.tabIndex]),
          );
        },
      ),
    );
  }
}

List<Widget> bottomNavBarScreens = [
  HomePage(),
  Text("2"),
  Text("3"),
  Text("4"),
];
