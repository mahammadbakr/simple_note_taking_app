// import 'package:flutter/material.dart';
// import 'package:hydrated_bloc/hydrated_bloc.dart';
// import 'package:injectable/injectable.dart';
// import 'package:simple_note_taking_app/injectable_config.dart';

// import 'theme_event.dart';
// import 'theme_state.dart';

// ThemeBloc get themeBloc => getIt<ThemeBloc>();

// @LazySingleton()
// class ThemeBloc extends HydratedBloc<ThemeEvent, ThemeState> {
//   ThemeBloc() : super(const ThemeState.initial()) {
//     on<ThemeModeSwitched>((event, emit) {
//       ThemeMode newThemeMode = event.themeMode;
//       emit(ThemeState(themeMode: newThemeMode));
//     });
//   }

//   @override
//   ThemeState? fromJson(Map<String, dynamic> json) {
//     return ThemeState.fromJson(json);
//   }

//   @override
//   Map<String, dynamic>? toJson(ThemeState state) {
//     return state.toJson();
//   }
// }
