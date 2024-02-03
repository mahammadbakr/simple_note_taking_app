import 'package:equatable/equatable.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:injectable/injectable.dart';

import '../../../../../../injectable_config.dart';
import 'language_keys.dart';

part 'language_event.dart';
part 'language_state.dart';

enum LanguageCode { en, ku, ar, tr }

enum LanguageDirection { ltr, rtl }

LanguageBloc get languageBloc => getIt<LanguageBloc>();

String lang(String key) => languageKeys[languageCode.name][key] == null
    ? key
    : languageKeys[languageCode.name][key].isNotEmpty
        ? languageKeys[languageCode.name][key]
        : languageKeys['en'][key].isNotEmpty
            ? languageKeys['en'][key]
            : key;

LanguageCode get languageCode => languageBloc.code;
LanguageDirection get languageDirection => languageBloc.direction;

@LazySingleton()
class LanguageBloc extends HydratedBloc<LanguageEvent, LanguageState> {
  LanguageCode _code = LanguageCode.en;
  LanguageCode get code => _code;

  LanguageDirection _direction = LanguageDirection.ltr;
  LanguageDirection get direction => _direction;

  LanguageBloc() : super(LanguageInitial()) {
    on<LanguageChangedEvent>((event, emit) {
      emit(LanguageSet());
      _code = event.code;
      _direction = event.direction;
      emit(NewLanguageSet());
    });
  }

  @override
  LanguageState? fromJson(Map<String, dynamic> json) {
    final code = json['code'] as int?;
    final direction = json['direction'] as int?;
    if (code != null && direction != null) {
      _code = LanguageCode.values[code];
      _direction = LanguageDirection.values[direction];
      return NewLanguageSet();
    }
    return null;
  }

  @override
  Map<String, dynamic>? toJson(LanguageState state) {
    if (state is NewLanguageSet) {
      return {
        'code': _code.index,
        'direction': _direction.index,
      };
    }
    return null;
  }
}
