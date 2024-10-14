part of 'add_prospect_bloc.dart';
@freezed
class AddProspectEvent with _$AddProspectEvent {
  
  const factory AddProspectEvent.add({
    required String fullName,
    required String email,
    required String firstPhoneNumber,
    String? secondPhoneNumber,
    required String address,
    required String city,
    required String country,
  }) = _Add;
}
