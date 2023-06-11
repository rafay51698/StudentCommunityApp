import 'package:chattinapp/Services/firebase_services.dart';
import 'package:get/get.dart';

class HomeController extends GetxController{
  var photoUrl = ''.obs;
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    photoUrl.value = localStorage.read('photoUrl');
    print(photoUrl + "\trafay");
    update();
  }
}