part of 'language_bloc.dart';

class LanguageEvent extends Equatable {
  const LanguageEvent();

  @override
  List<Object> get props => [];
}

class LanguageChangedEvent extends LanguageEvent {
  final LanguageCode code;
  final LanguageDirection direction;

  const LanguageChangedEvent({
    required this.code,
    required this.direction,
  });

  @override
  List<Object> get props => [code, direction];
}
