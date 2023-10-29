import 'package:bloc/bloc.dart';
import 'package:e_commerce_c9_sunday/core/utils/observer.dart';
import 'package:flutter/material.dart';

import 'my_app.dart';

void main() {
  Bloc.observer = MyBlocObserver();
  runApp(const MyApp());
}
