part of 'home_page_bloc.dart';

@immutable
abstract class HomePageEvent {}

class TabChange extends HomePageEvent {
  int tabIndex;

  TabChange({required this.tabIndex});
}
