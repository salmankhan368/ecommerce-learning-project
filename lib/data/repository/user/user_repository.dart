import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:s_store/data/repository/repository.authentication/authentication_repository.dart';
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

  Future<UserModel> fetchUserDetail() async {
    try {
      final documentSnapshot = await _db
          .collection("Users")
          .doc(AuthenticationRepository.instance.authUser?.uid)
          .get();
      if (documentSnapshot.exists) {
        return UserModel.fromSnapshot(documentSnapshot);
      } else {
        return UserModel.empty();
      }
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

  //function to update user
  Future<void> updateUserDetail(UserModel updateUser) async {
    try {
      await _db
          .collection("Users")
          .doc(updateUser.id)
          .update(updateUser.toJson());
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

  //update single field
  // Future<void> updateSingleField(Map<String, dynamic> json) async {
  //   try {
  //     final uid = AuthenticationRepository.instance.authUser?.uid;
  //     print("Current UID:$uid");
  //     await _db
  //         .collection("Users")
  //         .doc(AuthenticationRepository.instance.authUser?.uid)
  //         .update(json);
  //   } on SFirebaseException catch (e) {
  //     throw SFirebaseException(e.code).message;
  //   } on FormatException catch (_) {
  //     throw SFormatException();
  //   } on PlatformException catch (e) {
  //     throw SPlatformException(e.code).message;
  //   } catch (e) {
  //     throw "Something went wrong.please try again later";
  //   }
  // }
  Future<void> updateSingleField(Map<String, dynamic> json) async {
    try {
      final uid = AuthenticationRepository.instance.authUser?.uid;

      if (uid == null) {
        throw "User not logged in";
      }

      await _db.collection("Users").doc(uid).set(json, SetOptions(merge: true));
    } catch (e) {
      print("Firestore update error: $e");
      throw e.toString();
    }
  }

  //remove user detail
  Future<void> removeUserRecord(String userId) async {
    try {
      await _db.collection("Users").doc(userId).delete();
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
