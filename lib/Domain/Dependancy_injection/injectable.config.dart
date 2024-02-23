// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../Application/Splash/splash_bloc.dart' as _i7;
import '../../Infrastructure/chat/chat_repository.dart' as _i4;
import '../../Infrastructure/User/user_repository.dart' as _i6;
import '../Chat/i_chat_repo.dart' as _i3;
import '../User/i_user.repo.dart'
    as _i5; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(
  _i1.GetIt get, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i2.GetItHelper(
    get,
    environment,
    environmentFilter,
  );
  gh.lazySingleton<_i3.IChatRepo>(() => _i4.ChatMessage());
  gh.lazySingleton<_i5.IUserRepo>(() => _i6.UserLog());
  gh.factory<_i7.SplashBloc>(() => _i7.SplashBloc());
  return get;
}
