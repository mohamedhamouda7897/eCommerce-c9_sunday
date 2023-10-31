import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'home_page_event.dart';
part 'home_page_state.dart';

class HomePageBloc extends Bloc<HomePageEvent, HomePageState> {
  static HomePageBloc get(context) => BlocProvider.of(context);

  HomePageBloc() : super(HomePageInitial(tabIndex: 0)) {
    on<HomePageEvent>((event, emit) {
      if (event is TabChange) {
        emit(HomePageInitial(tabIndex: event.tabIndex));
      }
    });
  }
}
