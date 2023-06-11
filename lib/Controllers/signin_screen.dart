import 'package:chattinapp/Services/repository.dart';
import 'package:chattinapp/Util/util.dart';
import 'package:chattinapp/Views/HomeScreen/home_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class SignInController extends GetxController {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();



  signupUser() async {

      await Repository.signIn(
        email: emailController.text.trim(),
        password: passwordController.text.trim(),
      );
      Get.off(() => HomeScreen());
      update();

  }
}
