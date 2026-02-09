import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:s_store/navigation_menu.dart';
import 'package:s_store/screens/Screen.onBoarding/login/login_screen.dart';
import 'package:s_store/screens/Screen.onBoarding/login/signup/widgets/verify_email.dart';
import 'package:s_store/screens/Screen.onBoarding/onboarding.dart';
import 'package:s_store/utils/exception/firebase_auth_exception.dart';
import 'package:s_store/utils/exception/firebase_exceptions.dart';
import 'package:s_store/utils/exception/format_exceptions.dart';
import 'package:s_store/utils/exception/platform_exceptions.dart';

class AuthenticationRepository extends GetxController {
  static AuthenticationRepository get instance => Get.find();
  //variable
  final deviceStorage = GetStorage();
  final _auth = FirebaseAuth.instance;
  //
  @override
  void onReady() {
    FlutterNativeSplash.remove();
    screenRedirect();
  }
  //Function to some revelant screen

  screenRedirect() async {
    User? user = _auth.currentUser;
    if (user != null) {
      if (user.emailVerified) {
        Get.offAll(() => NavigationMenu());
      } else {
        Get.offAll(() => VerifyEmail(email: _auth.currentUser?.email));
      }
    } else {
      if (kDebugMode) {
        print('Get Storage');
        print(deviceStorage.read('ISFirstTime'));
      }
      //local storage

      deviceStorage.writeIfNull('IsFirstTime', true);

      deviceStorage.read('IsFirstTime') != true
          ? Get.off(() => LoginScreen())
          : Get.off(() => OnboardingScreen());
    }
  }

  /*-----------------------Email and passwpord login*/
  /*Email authentication*/
  Future<UserCredential> registerEmailAndPassword(String email, password) {
    try {
      return _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
    } on FirebaseAuthException catch (e) {
      throw SFirebaseAuthException(e.code).message;
    } on FirebaseException catch (e) {
      throw SFirebaseException(e.code).message;
    } on FormatException catch (_) {
      throw SFormatException();
    } on PlatformException catch (e) {
      throw SPlatformException(e.code).message;
    } catch (e) {
      throw "SomeThing went wrong. please try again";
    }
  }

  //-Email Verification
  Future<void> sendEmailVerification() async {
    try {
      await _auth.currentUser?.sendEmailVerification();
    } on FirebaseAuthException catch (e) {
      throw SFirebaseAuthException(e.code).message;
    } on FirebaseException catch (e) {
      throw SFirebaseException(e.code).message;
    } on FormatException catch (_) {
      throw SFormatException();
    } on PlatformException catch (e) {
      throw SPlatformException(e.code).message;
    } catch (e) {
      throw "SomeThing went wrong. please try again";
    }
  }

  //*----- Log out user
  Future<void> logout() async {
    try {
      await FirebaseAuth.instance.signOut();
      Get.off(() => LoginScreen());
    } on FirebaseAuthException catch (e) {
      throw SFirebaseAuthException(e.code).message;
    } on FirebaseException catch (e) {
      throw SFirebaseException(e.code).message;
    } on FormatException catch (_) {
      throw SFormatException();
    } on SPlatformException catch (e) {
      throw SPlatformException(e.code).message;
    } catch (e) {
      throw "Something went wrong.please try again";
    }
  }
}
