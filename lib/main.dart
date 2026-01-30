import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:s_store/app.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:s_store/data/repository/repository.authentication/authentication_repository.dart';
import 'firebase_options.dart';

void main() async {
  //widgets binding
  final WidgetsBinding widgetsBinding =
      WidgetsFlutterBinding.ensureInitialized();
  //get Local storage
  await GetStorage.init();
  //nativesplash untill it load
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  //intalize firebse and auth repo

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  ).then((FirebaseApp value) => Get.put(AuthenticationRepository()));

  runApp(const App());
}
