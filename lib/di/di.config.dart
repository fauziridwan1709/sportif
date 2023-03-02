// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:my_techanic_core/feature/auth/usecase/login.dart' as _i24;
import 'package:my_techanic_core/feature/auth/usecase/registration.dart'
    as _i20;
import 'package:my_techanic_core/feature/favourites/usecase/patch_favourite.dart'
    as _i32;
import 'package:my_techanic_core/feature/file_manager/usecase/crop_image.dart'
    as _i28;
import 'package:my_techanic_core/feature/file_manager/usecase/pick_image.dart'
    as _i27;
import 'package:my_techanic_core/feature/otp/usecase/send_otp.dart' as _i4;
import 'package:my_techanic_core/feature/otp/usecase/validate_otp.dart' as _i5;
import 'package:my_techanic_core/feature/pin/usecase/create_pin.dart' as _i14;
import 'package:my_techanic_core/feature/pin/usecase/validate_pin.dart' as _i15;
import 'package:my_techanic_core/feature/profile/usecase/get_check_phone_valid.dart'
    as _i10;
import 'package:my_techanic_core/feature/profile/usecase/get_profile.dart'
    as _i26;
import 'package:my_techanic_core/feature/profile/usecase/patch_edit_pin.dart'
    as _i17;
import 'package:my_techanic_core/feature/profile/usecase/patch_profile_phone.dart'
    as _i6;
import 'package:my_techanic_core/feature/profile/usecase/patch_profile_picture.dart'
    as _i29;
import 'package:my_techanic_core/feature/profile/usecase/post_validate_edit_pin.dart'
    as _i16;
import 'package:my_techanic_core/feature/profile/usecase/put_profile_name.dart'
    as _i12;
import 'package:my_techanic_core/feature/transactions/usecase/get_all_transaction.dart'
    as _i40;
import 'package:my_techanic_core/feature/transactions/usecase/get_transaction_detail.dart'
    as _i33;
import 'package:my_techanic_core/feature/transactions/usecase/patch_review_transaction.dart'
    as _i37;
import 'package:my_techanic_core/my_techanic_core.dart' as _i7;

import '../base/blocs/loading/loading_cubit.dart' as _i22;
import '../features/auth/enter_pin/blocs/enter_pin_bloc.dart' as _i13;
import '../features/auth/input_name/blocs/input_name_bloc.dart' as _i19;
import '../features/auth/login/blocs/login_bloc.dart' as _i23;
import '../features/auth/otp_register/blocs/auth_otp_register_bloc.dart' as _i3;
import '../features/dashboard/blocs/dashboard_bloc.dart' as _i8;
import '../features/home/blocs/home_recommendation_bloc.dart' as _i18;
import '../features/profile/edit_phone_number/blocs/edit_phone_number_bloc.dart'
    as _i9;
import '../features/profile/edit_profile/blocs/edit_profile_bloc.dart' as _i11;
import '../features/profile/my_profile/blocs/my_profile_bloc.dart' as _i25;
import '../features/simulation/blocs/simulation_cubit.dart' as _i30;
import '../features/transaction/invoice/blocs/invoice_bloc.dart' as _i21;
import '../features/transaction/transaction_detail/blocs/transaction_detail_bloc.dart'
    as _i31;
import '../features/transaction/transaction_detail/blocs/transaction_detail_information_bloc.dart'
    as _i34;
import '../features/transaction/transaction_detail/blocs/transaction_detail_qr_bloc.dart'
    as _i35;
import '../features/transaction/transaction_detail/blocs/transaction_detail_review_bloc.dart'
    as _i36;
import '../features/transaction/transaction_detail/blocs/transaction_detail_timeline_bloc.dart'
    as _i38;
import '../features/transaction/transactions/blocs/transaction_list_bloc.dart'
    as _i39; // ignore_for_file: unnecessary_lambdas

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
  gh.factoryParam<_i3.AuthOtpRegisterBloc, _i3.AuthOtpRegisterState?, dynamic>((
    initialState,
    _,
  ) =>
      _i3.AuthOtpRegisterBloc(
        get<_i4.SendOtpUseCase>(),
        get<_i5.ValidateOtpUseCase>(),
        get<_i6.PatchProfilePhoneUseCase>(),
        get<_i7.SessionManager>(),
        initialState: initialState,
      ));
  gh.factory<_i8.DashboardBloc>(() => _i8.DashboardBloc());
  gh.factoryParam<_i9.EditPhoneNumberBloc, _i9.EditPhoneNumberState?, dynamic>((
    initialValue,
    _,
  ) =>
      _i9.EditPhoneNumberBloc(
        get<_i10.GetCheckPhoneValidUseCase>(),
        initialValue: initialValue,
      ));
  gh.factoryParam<_i11.EditProfileBloc, _i11.EditProfileState?, dynamic>((
    initialValue,
    _,
  ) =>
      _i11.EditProfileBloc(
        get<_i12.PutProfileNameUseCase>(),
        initialValue: initialValue,
      ));
  gh.factoryParam<_i13.EnterPinBloc, _i13.EnterPinState?, dynamic>((
    initialValue,
    _,
  ) =>
      _i13.EnterPinBloc(
        get<_i14.CreatePinUseCase>(),
        get<_i15.ValidatePinUseCase>(),
        get<_i16.PostValidateEditPinUseCase>(),
        get<_i17.PatchEditPinUseCase>(),
        get<_i7.SessionManager>(),
        initialValue: initialValue,
      ));
  gh.factory<_i18.HomeRecommendationBloc>(() => _i18.HomeRecommendationBloc());
  gh.factory<_i19.InputNameBloc>(() => _i19.InputNameBloc(
        get<_i20.RegistrationUseCase>(),
        get<_i7.SessionManager>(),
      ));
  gh.factory<_i21.InvoiceBloc>(() => _i21.InvoiceBloc());
  gh.factory<_i22.LoadingCubit>(() => _i22.LoadingCubit());
  gh.factoryParam<_i23.LoginBloc, _i23.LoginState?, dynamic>((
    initialValue,
    _,
  ) =>
      _i23.LoginBloc(
        get<_i24.LoginUseCase>(),
        get<_i7.SessionManager>(),
        initialValue: initialValue,
      ));
  gh.factory<_i25.MyProfileBloc>(() => _i25.MyProfileBloc(
        get<_i26.GetProfileUseCase>(),
        get<_i27.PickImageUseCase>(),
        get<_i28.CropImageUseCase>(),
        get<_i29.PatchProfilePictureUseCase>(),
      ));
  gh.singleton<_i30.SimulationCubit>(_i30.SimulationCubit());
  gh.factoryParam<_i31.TransactionDetailBloc, _i31.TransactionDetailState?,
      dynamic>((
    initialState,
    _,
  ) =>
      _i31.TransactionDetailBloc(
        get<_i32.PatchFavouriteUsecase>(),
        get<_i33.GetTransactionDetailUsecase>(),
        initialState: initialState,
      ));
  gh.factoryParam<_i34.TransactionDetailInformationBloc,
      _i34.TransactionDetailInformationState?, dynamic>((
    initialState,
    _,
  ) =>
      _i34.TransactionDetailInformationBloc(initialState: initialState));
  gh.factoryParam<_i35.TransactionDetailQrBloc, _i35.TransactionDetailQrState?,
      dynamic>((
    initialState,
    _,
  ) =>
      _i35.TransactionDetailQrBloc(initialState: initialState));
  gh.factoryParam<_i36.TransactionDetailReviewBloc,
      _i36.TransactionDetailReviewState?, dynamic>((
    initialState,
    _,
  ) =>
      _i36.TransactionDetailReviewBloc(
        get<_i37.PatchReviewTransactionUsecase>(),
        initialState: initialState,
      ));
  gh.factoryParam<_i38.TransactionDetailTimelineBloc,
      _i38.TransactionDetailTimelineState?, dynamic>((
    initialState,
    _,
  ) =>
      _i38.TransactionDetailTimelineBloc(initialState: initialState));
  gh.factory<_i39.TransactionListBloc>(
      () => _i39.TransactionListBloc(get<_i40.GetAllTransactionUsecase>()));
  return get;
}
