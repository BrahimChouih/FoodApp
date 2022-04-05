import 'package:get/get.dart';

class TapController extends GetxController {
  int currentPage = 0;

  void onChange(int page) {
    currentPage = page;
    update();
  }
}
