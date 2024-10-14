import 'package:flutter/material.dart';
import 'package:flutter_prospect/applications.dart';
import 'package:flutter_prospect/configuration/di/injector.dart';
import 'package:flutter_prospect/view/prospect/add_prospect.dart';


void main() async{
  WidgetsFlutterBinding.ensureInitialized();// WidgetsFlutterBinding.ensureInitialized()  il "allume le moteur" de Flutter pour que tu puisses ensuite exécuter des opérations importantes qui en dépendent.(assure est tout est pret avant de démarrer la voiture)
    await ProspectDB.getInstance().init();
    configureDependencies();//appeler linjector 
  runApp(const MyApp());
   
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
  
 home:  AddProspectPage(),
    );
  }



}
