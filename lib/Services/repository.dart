import 'dart:io';

import 'package:chattinapp/Services/firebase_services.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';

class Repository {
  static signup({imagePath, email, password, name}) async {
    try {
      UserCredential userCredential = await auth.createUserWithEmailAndPassword(
          email: email, password: password);
      var storageRef =
          storage.ref().child("profile_pictures/${userCredential.user!.uid}");
      UploadTask uploadTask = storageRef.putFile(File(imagePath));
      await uploadTask.whenComplete(() {});
      var photoUrl = await storageRef.getDownloadURL();
      await userCredential.user!.updatePhotoURL(photoUrl);
      await userCredential.user?.updateEmail(email);
      await userCredential.user?.updateDisplayName(name);
      await localStorage.write('photoUrl', photoUrl);
      await localStorage.write('email', email);
      await localStorage.write('name', name);
      print("done signup");
    } on FirebaseAuthException catch (e) {
      print(e.toString() + "signup error");
    }
  }

  static getCurrentUser() async {
    try {
      return await auth.currentUser;
    } catch (e) {
      print("getCurrentUser" + e.toString());
    }
  }
  static signIn({email, password}) async {
    try {
      UserCredential userCredential = await auth.signInWithEmailAndPassword(
          email: email, password: password);
      User currentUser = getCurrentUser();
      await localStorage.write('photoUrl', currentUser.photoURL);
      await localStorage.write('email', currentUser.email);
      await localStorage.write('name', currentUser.displayName);
      print("done signup");
    } on FirebaseAuthException catch (e) {
      print(e.toString() + "signup error");
    }
  }
}
