import 'package:chattinapp/Services/repository.dart';
import 'package:chattinapp/Util/util.dart';
import 'package:chattinapp/Views/ProfileScreen/profile_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class SignInController extends GetxController {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();



  signInUser() async {

      await Repository.signIn(
        email: emailController.text.trim(),
        password: passwordController.text.trim(),
      );
      Get.off(() => ProfileScreen());
      update();

  }
}
