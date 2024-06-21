import 'package:e_commerce_app/app.dart';
import 'package:e_commerce_app/features/authentication/screens/onbording/widgets/onbording_navigation.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'firebase_options.dart';

Future<void> main() async {
// add widget binding
  final WidgetsBinding widgetsBinding =
      WidgetsFlutterBinding.ensureInitialized();

//getx local storage
  await GetStorage.init();

  // --await splash utility other items load
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

  await Firebase.initializeApp(
    // initialazation firebase & authentication repository
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(const MyApp());
}
