// ignore_for_file: prefer_const_constructors

part of 'splash_bloc.dart';

@freezed
class SplashState with _$SplashState {
  const factory SplashState({User? currentUser}) = _SplashState;
  factory SplashState.initial() {
    return SplashState();
  }
}
