import 'package:get/get.dart';
import 'package:secure_note/controllers/home_controller.dart';

class AppBindings extends Bindings {
  @override
  void dependencies() {
    Get.put(HomeController());
    //Get.put(NoteRepository());
  }
}