import 'package:get/get.dart';
import 'package:secure_note/data/models/note.dart';

class HomeController extends GetxController {
  final RxList<Note> notes = <Note>[].obs;
}