import 'package:cloth_api_ecommerce_getx/API_DATA/api_base_url.dart';
import 'package:cloth_api_ecommerce_getx/SERVICES/fetch_api.dart';
import 'package:get/get.dart';

class HomeViewModel extends GetxController {
  final FetchApi _fetchApi = Get.find();

  String get testdata => _fetchApi.testData;

  Future get fetchingApi =>
      _fetchApi.fetchingApi(ApiBaseUrl.baseUrl, ApiBaseUrl.products);
      //fda
}
