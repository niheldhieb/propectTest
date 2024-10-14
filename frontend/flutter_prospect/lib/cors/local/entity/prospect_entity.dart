import 'package:floor/floor.dart';

@entity
class Prospect {
  @PrimaryKey(autoGenerate: true)
  final int? id;
  final String fullName;
  final String email;
  final String firstPhoneNumber;
  final String? secondPhoneNumber;
  final String address;
  final String city;
  final String country;


  Prospect({
    this.id,
    required this.fullName,
    required this.email,
    required this.firstPhoneNumber,
    this.secondPhoneNumber,
    required this.address,
    required this.city,
    required this.country,
 
  });
}
