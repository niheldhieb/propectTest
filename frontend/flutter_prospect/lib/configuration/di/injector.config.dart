// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i361;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

import '../../business_logic/add_prospect/bloc/add_prospect_bloc.dart' as _i43;
import '../../business_logic/drop_buttom/bloc/drop_buttom_bloc_bloc.dart'
    as _i998;
import '../../business_logic/drow_down_second/drow_down_second_bloc.dart'
    as _i139;
import '../providers/dio_providers.dart' as _i272;
import '../repositories/tiers/i_prospecting_repo.dart' as _i946;
import '../repositories_imp/tier/prospecting_repo_impl.dart' as _i74;
import '../services/prospecting_service.dart' as _i692;

// initializes the registration of main-scope dependencies inside of GetIt
_i174.GetIt $initGetIt(
  _i174.GetIt getIt, {
  String? environment,
  _i526.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i526.GetItHelper(
    getIt,
    environment,
    environmentFilter,
  );
  final dioProvider = _$DioProvider();
  gh.factory<_i998.DropButtomBlocBloc>(() => _i998.DropButtomBlocBloc());
  gh.factory<_i139.DrowDownSecondBloc>(() => _i139.DrowDownSecondBloc());
  gh.factory<_i361.BaseOptions>(() => dioProvider.options);
  gh.singleton<_i361.Dio>(() => dioProvider.dio());
  gh.lazySingleton<_i692.ProspectingService>(() => _i692.ProspectingService());
  gh.factory<_i946.IProspectingRepo>(() => _i74.ProspectingRepoImpl(
        gh<_i361.Dio>(),
        gh<_i692.ProspectingService>(),
      ));
  gh.factory<_i43.AddProspectBloc>(
      () => _i43.AddProspectBloc(gh<_i946.IProspectingRepo>()));
  return getIt;
}

class _$DioProvider extends _i272.DioProvider {}
