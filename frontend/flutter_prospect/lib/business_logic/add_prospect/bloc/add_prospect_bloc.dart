import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:flutter_prospect/configuration/repositories/tiers/i_prospecting_repo.dart';

part 'add_prospect_event.dart';
part 'add_prospect_state.dart';
part 'add_prospect_bloc.freezed.dart';

@injectable
class AddProspectBloc extends Bloc<AddProspectEvent, AddProspectState> {
  final IProspectingRepo prospectingRepo;

  AddProspectBloc(this.prospectingRepo) : super(const AddProspectState.initial()) {
    on<AddProspectEvent>((event, emit) async {
      await event.when(
        add: (fullName, email, firstPhoneNumber, secondPhoneNumber, address, city, country) async {
          emit(const AddProspectState.loading());

          try {
            final data = {
              'full_name': fullName,
              'email': email,
              'first_phone_number': firstPhoneNumber,
              'second_phone_number': secondPhoneNumber,
              'address': address,
              'city': city,
              'country': country,
            };

            final result = await prospectingRepo.createProspecting(data);

            result.fold(
              (success) => emit(const AddProspectState.success()),
              (error) => emit(AddProspectState.error(error)),
            );
          } catch (e) {
            emit(AddProspectState.error(e.toString()));
          }
        },
      );
    });
  }
}
