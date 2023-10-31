part of 'home_page_bloc.dart';

@immutable
abstract class HomePageState {
  int tabIndex;

  HomePageState({required this.tabIndex});
}

class HomePageInitial extends HomePageState {
  HomePageInitial({required super.tabIndex});
}
