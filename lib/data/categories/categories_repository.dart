import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:s_store/fetaures/shop/models/categories_model.dart';
import 'package:s_store/utils/exception/firebase_exceptions.dart';
import 'package:s_store/utils/exception/format_exceptions.dart';
import 'package:s_store/utils/exception/platform_exceptions.dart';

class CategoriesRepository extends GetxController {
  static CategoriesRepository get instance => Get.find();
  final _db = FirebaseFirestore.instance;
  //get all categories
  Future<List<CategoriesModel>> getAllCategories() async {
    try {
      final snapShot = await _db.collection("Categories").get();
      final list = snapShot.docs
          .map((document) => CategoriesModel.fromSnapshot(document))
          .toList();
      return list;
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
}
