import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_prospect/applications.dart';

import 'package:flutter_prospect/business_logic/add_prospect/bloc/add_prospect_bloc.dart';
import 'package:flutter_prospect/business_logic/drop_buttom/bloc/drop_buttom_bloc_bloc.dart';
import 'package:flutter_prospect/business_logic/drow_down_second/drow_down_second_bloc.dart';
import 'package:flutter_prospect/configuration/di/injector.dart';
import 'package:flutter_prospect/cors/local/dao/prospect_dao.dart';
import 'package:flutter_prospect/cors/local/entity/prospect_entity.dart';
import 'package:flutter_prospect/mollecule/drop_down_buttom/drop_down_buttom.dart';
import 'package:flutter_prospect/mollecule/input_text_fields/input_text_fields.dart';
import 'package:flutter_prospect/utils/constants/constants.dart';

class AddProspectPage extends StatelessWidget {
  AddProspectPage({super.key});
  final _formKey = GlobalKey<FormBuilderState>();
  TextEditingController fullnamecontroller = TextEditingController();
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController firstPhonecontroller = TextEditingController();
  TextEditingController secondphonecontroller = TextEditingController();
  TextEditingController adresscontroller = TextEditingController();
  String? selectedCountry;
  String? selectedCity;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt<AddProspectBloc>(),
        ),
        BlocProvider(
          create: (context) => getIt<DropButtomBlocBloc>()..add(const DropButtomBlocEvent.started()),
        ),
        BlocProvider(
          create: (context) => getIt<DrowDownSecondBloc>()..add(const DrowDownSecondEvent.started()),
        ),
      ],
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Add Prospect'),
        ),
        body: Padding(
          padding: const EdgeInsets.only(left: 10, top: 10, right: 10),
          child: SingleChildScrollView(
            child: BlocConsumer<AddProspectBloc, AddProspectState>(
              listener: (context, state) {
                state.maybeWhen(
                  error: (errorMessage) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text('Erreur: $errorMessage'),
                        backgroundColor: Colors.red,
                      ),
                    );
                  },
                  success: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text('Prospect ajouté avec succès !'),
                        backgroundColor: Colors.green,
                      ),
                    );
                  },
                  orElse: () => null,
                );
              },
              builder: (context, state) {
                return FormBuilder(
                  key: _formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 2,
                      ),
                      Container(
                          padding: const EdgeInsets.only(left: 2, right: 50), width: 1000, height: 250, child: Image.asset('assets/prospects/PROSPECT.png', fit: BoxFit.cover)),
                      InputTextFields(
                        isRequired: true,
                        labelText: 'Fullname',
                        controller: fullnamecontroller,
                      ),
                      const SizedBox(height: 5),
                      InputTextFields(
                        isRequired: true,
                        labelText: 'Email',
                        controller: emailcontroller,
                      ),
                      const SizedBox(height: 5),
                      InputTextFields(
                        isRequired: true,
                        labelText: 'Adress',
                        controller: adresscontroller,
                      ),
                      InputTextFields(
                        isRequired: true,
                        labelText: 'First phone number',
                        controller: firstPhonecontroller,
                      ),
                      const SizedBox(height: 5),
                      InputTextFields(
                        isRequired: true,
                        labelText: 'Second phone number',
                        controller: secondphonecontroller,
                      ),
                      BlocBuilder<DrowDownSecondBloc, DrowDownSecondState>(
                        builder: (context, state) {
                          return state.when(
                            initial: () => const CircularProgressIndicator(),
                            loaded: (country) => CustomDropdownButton(
                              items: country,
                              currentItem: country[0],
                              onSelected: (value) {
                                context.read<DrowDownSecondBloc>().add(DrowDownSecondEvent.selected(value!));
                                selectedCountry = value;
                              },
                            ),
                            selected: (value) => CustomDropdownButton(
                                items: country,
                                currentItem: value,
                                onSelected: (newValue) {
                                  context.read<DrowDownSecondBloc>().add(DrowDownSecondEvent.selected(newValue!));
                                  selectedCountry = value;
                                }),
                          );
                        },
                      ),
                      const SizedBox(height: 5),
                      BlocBuilder<DropButtomBlocBloc, DropButtomBlocState>(
                        builder: (context, state) {
                          return state.when(
                            initial: () => const CircularProgressIndicator(),
                            loaded: (cities) => CustomDropdownButton(
                              items: cities,
                              currentItem: cities[0],
                              onSelected: (value) {
                                context.read<DropButtomBlocBloc>().add(DropButtomBlocEvent.selected(value!));
                                selectedCity = value;
                              },
                            ),
                            selected: (value) => CustomDropdownButton(
                              items: cities,
                              currentItem: value,
                              onSelected: (newValue) {
                                context.read<DropButtomBlocBloc>().add(DropButtomBlocEvent.selected(newValue!));
                                selectedCity = value;
                              },
                            ),
                          );
                        },
                      ),
                      const SizedBox(height: 30),
                      SizedBox(
                        height: 50,
                        width: 300,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blue,
                            foregroundColor: Colors.white,
                          ),
                          onPressed: () async {
                            if (_formKey.currentState?.saveAndValidate() ?? false) {
                              final fullName = fullnamecontroller.text;
                              final email = emailcontroller.text;
                              final firstPhone = firstPhonecontroller.text;
                              final secondPhone = secondphonecontroller.text;
                              final address = adresscontroller.text;

                              if (selectedCountry != null && selectedCity != null) {
                                context.read<AddProspectBloc>().add(
                                      AddProspectEvent.add(
                                          fullName: fullName,
                                          firstPhoneNumber: firstPhone,
                                          secondPhoneNumber: secondPhone,
                                          email: email,
                                          country: selectedCountry!,
                                          address: address,
                                          city: selectedCity!),
                                    );
                                final prospect = Prospect(
                                  fullName: fullName,
                                  email: email,
                                  firstPhoneNumber: firstPhone,
                                  secondPhoneNumber: secondPhone,
                                  address: address,
                                  city: selectedCity!,
                                  country: selectedCountry!,
                                );
                             //   await ProspectDao.insertProspect(prospect);
                              } else {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(
                                    content: Text('Veuillez sélectionner un pays et une ville'),
                                    backgroundColor: Colors.orange,
                                  ),
                                );
                              }
                            } else {
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                  content: Text('Veuillez remplir tous les champs obligatoires'),
                                  backgroundColor: Colors.red,
                                ),
                              );
                            }
                          },
                          child: const Text('ADD'),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
