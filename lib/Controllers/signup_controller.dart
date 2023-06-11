import 'package:chattinapp/Services/repository.dart';
import 'package:chattinapp/Util/util.dart';
import 'package:chattinapp/Views/HomeScreen/home_screen.dart';
import 'package:chattinapp/Views/ProfileScreen/profile_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class SignupController extends GetxController {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  Rxn<XFile> image = Rxn<XFile>();

  @override
  onInit() {
    super.onInit();
  }

  getImage() async {
    image.value = await Utils.pickImage(isGallery: true);
    update();
  }

  signupUser() async {
    if (image.value != null) {
      await Repository.signup(
        imagePath: image.value!.path,
        email: emailController.text.trim(),
        password: passwordController.text.trim(),
        name: nameController.text.trim(),
      );
      print("${nameController.text.trim()}");
      Get.off(() => HomeScreen());
      update();
    } else {
      Get.snackbar("Error", "Incomplete profile data");
    }
  }
}
