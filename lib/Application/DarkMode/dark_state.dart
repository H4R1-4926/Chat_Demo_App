part of 'dark_bloc.dart';

@freezed
class DarkState with _$DarkState {
  const factory DarkState({
    required bool isTrue,
  }) = _DarkState;
  factory DarkState.initial() {
    return const DarkState(isTrue: false);
  }
}
