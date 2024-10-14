part of 'add_prospect_bloc.dart';
@freezed
class AddProspectState with _$AddProspectState {
  const factory AddProspectState.initial() = _Initial;
   const factory AddProspectState.loading() = _Loading;
  const factory AddProspectState.error(String error) = _Error;
  const factory AddProspectState.success() = _Success;
}
