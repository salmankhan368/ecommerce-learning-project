import 'package:get/get.dart';
import 'package:s_store/data/categories/categories_repository.dart';
import 'package:s_store/fetaures/shop/models/categories_model.dart';
import 'package:s_store/utils/popUp/loader.dart';

class CategoryController extends GetxController {
  final isLoading = false.obs;
  static CategoryController get instance => Get.find();
  final _categoryRepository = Get.put(CategoriesRepository());
  RxList<CategoriesModel> allCategories = <CategoriesModel>[].obs;
  RxList<CategoriesModel> featuredCategories = <CategoriesModel>[].obs;
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    featuredCategories();
  }

  //load category data
  Future<void> fetchCatogories() async {
    try {
      isLoading.value = true;

      final categories = await _categoryRepository.getAllCategories();
      allCategories.assignAll(categories);
      featuredCategories.assignAll(
        featuredCategories
            .where(
              (categories) =>
                  categories.isFeatured && categories.parentId.isEmpty,
            )
            .take(8)
            .toList(),
      );
    } catch (e) {
      SLoaders.errorSnackBar(title: "Oh Snap!", message: e.toString());
    } finally {
      isLoading.value = false;
    }
  }
}
