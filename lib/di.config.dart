// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format width=80

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

import 'core/api/api_manager.dart' as _i237;
import 'Features/auth/data/data_source/firebase_auth_ds.dart' as _i678;
import 'Features/auth/data/data_source/firebase_auth_ds_impl.dart' as _i1035;
import 'Features/auth/data/repo/firebase_auth_repo_impl.dart' as _i718;
import 'Features/auth/domain/repo/firebase_fun_repo.dart' as _i118;
import 'Features/auth/domain/usecase/log_in_usecase.dart' as _i476;
import 'Features/auth/domain/usecase/signUp_usecase.dart' as _i806;
import 'Features/auth/login/presentation/bloc/login_cubit.dart' as _i957;
import 'Features/auth/signup/presentation/bloc/signup_cubit.dart' as _i354;
import 'Features/cars_details/data/data_source/details_ds.dart' as _i383;
import 'Features/cars_details/data/data_source/details_ds_impl.dart' as _i58;
import 'Features/cars_details/data/repo/repo_imp_details.dart' as _i446;
import 'Features/cars_details/domain/repo/details_repo.dart' as _i762;
import 'Features/cars_details/domain/usecase/details_usecase.dart' as _i110;
import 'Features/cars_details/presentation/bloc/details_bloc.dart' as _i835;
import 'Features/discover/data/data_source/discovery_ds.dart' as _i405;
import 'Features/discover/data/data_source/discovery_ds_impl.dart' as _i1023;
import 'Features/discover/data/repo/discovery_repo_impl.dart' as _i471;
import 'Features/discover/domain/repo/discover_repo.dart' as _i654;
import 'Features/discover/domain/usecase/discovery_usecase.dart' as _i1052;
import 'Features/discover/presenatation/bloc/search_bloc.dart' as _i340;
import 'Features/home/data/data_source/remote/home_ds.dart' as _i474;
import 'Features/home/data/data_source/remote/home_ds_impl.dart' as _i1037;
import 'Features/home/data/repo/home_repo_impl.dart' as _i526;
import 'Features/home/domian/repo/home_repo.dart' as _i615;
import 'Features/home/domian/usecase/home_usecase.dart' as _i888;
import 'Features/home/presentation/bloc/home_bloc.dart' as _i916;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    gh.lazySingleton<_i237.ApiManager>(() => _i237.ApiManager());
    gh.factory<_i383.DetailsDs>(
      () => _i58.DetailsDsImpl(gh<_i237.ApiManager>()),
    );
    gh.factory<_i405.DiscoveryDs>(
      () => _i1023.DiscoveryDsImpl(gh<_i237.ApiManager>()),
    );
    gh.factory<_i678.FirebaseAuthDs>(() => _i1035.FirebaseAuthDsImpl());
    gh.factory<_i654.DiscoverRepo>(
      () => _i471.DiscoveryRepoImpl(gh<_i405.DiscoveryDs>()),
    );
    gh.factory<_i762.DetailsRepo>(
      () => _i446.RepoImpDetails(gh<_i383.DetailsDs>()),
    );
    gh.factory<_i474.HomeDs>(() => _i1037.HomeDsImpl(gh<_i237.ApiManager>()));
    gh.factory<_i118.FirebaseFunRepo>(
      () => _i718.FirebaseAuthRepoImpl(gh<_i678.FirebaseAuthDs>()),
    );
    gh.factory<_i615.HomeRepo>(() => _i526.HomeRepoImpl(gh<_i474.HomeDs>()));
    gh.factory<_i1052.DiscoveryUsecase>(
      () => _i1052.DiscoveryUsecase(gh<_i654.DiscoverRepo>()),
    );
    gh.factory<_i476.LogInUsecase>(
      () => _i476.LogInUsecase(gh<_i118.FirebaseFunRepo>()),
    );
    gh.factory<_i806.SignupUsecase>(
      () => _i806.SignupUsecase(gh<_i118.FirebaseFunRepo>()),
    );
    gh.factory<_i110.DetailsUsecase>(
      () => _i110.DetailsUsecase(gh<_i762.DetailsRepo>()),
    );
    gh.factory<_i354.SignupCubit>(
      () => _i354.SignupCubit(gh<_i806.SignupUsecase>()),
    );
    gh.factory<_i957.LoginCubit>(
      () => _i957.LoginCubit(gh<_i476.LogInUsecase>()),
    );
    gh.factory<_i888.HomeUsecase>(
      () => _i888.HomeUsecase(gh<_i615.HomeRepo>()),
    );
    gh.factory<_i340.SearchBloc>(
      () => _i340.SearchBloc(gh<_i1052.DiscoveryUsecase>()),
    );
    gh.factory<_i916.HomeBloc>(() => _i916.HomeBloc(gh<_i888.HomeUsecase>()));
    gh.factory<_i835.DetailsBloc>(
      () => _i835.DetailsBloc(gh<_i110.DetailsUsecase>()),
    );
    return this;
  }
}
