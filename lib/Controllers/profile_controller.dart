import 'package:chattinapp/Services/repository.dart';
import 'package:chattinapp/Util/util.dart';
import 'package:chattinapp/Views/ProfileScreen/profile_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class ProfileController extends GetxController {
  Rxn<User> _currentUser = Rxn<User>();

  Rxn<User>? get currentUser => _currentUser;


  @override
  void onInit()async {
    await getCurrentUser();
    print(getCurrentUser());
  }

  Future<void> getCurrentUser() async {
      _currentUser.value = await Repository.getCurrentUser();
      update();
  }
}
