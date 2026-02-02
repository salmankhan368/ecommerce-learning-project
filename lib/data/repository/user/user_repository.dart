import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:s_store/fetaures/personalization/models/user_model.dart';
import 'package:s_store/utils/exception/firebase_exceptions.dart';
import 'package:s_store/utils/exception/format_exceptions.dart';
import 'package:s_store/utils/exception/platform_exceptions.dart';

class UserRepository extends GetxController {
  static UserRepository get instance => Get.find();
  final FirebaseFirestore _db = FirebaseFirestore.instance;
  //Function to save data in firebaseFireStore
  Future<void> saveUserRecord(UserModel user) async {
    try {
      await _db.collection("Users").doc(user.id).set(user.toJson());
    } on SFirebaseException catch (e) {
      throw SFirebaseException(e.code).message;
    } on FormatException catch (_) {
      throw SFormatException();
    } on PlatformException catch (e) {
      throw SPlatformException(e.code).message;
    } catch (e) {
      throw "Something went wrong.please try again later";
    }
  }
}
