
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class Utils {
  static String? validator(String? value) {
    if (value!.isEmpty)
      return 'Please this field must be filled';
    else
      return null;
  }

  static String? passValidator(String? value) {
    RegExp regex =
    RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{5,}$');

    if (value!.isEmpty)
      return 'Please this field must be filled';
    else if (value.length < 5)
      return 'Please enter minimum 5 chars';
    // else if (!regex.hasMatch(value)) return 'Use 1 uppercase,1 lowercase, 1 digit and 1 Special character';
    else
      return null;
  }

  static String? emailValidator(String? values) {
    if (values!.isEmpty)
      return "This field must be filled";
    else if (!GetUtils.isEmail(values.toString()))
      return "Please enter a valid email address";
    else
      return null;
  }

  /// For Single Image
  static Future<XFile?> pickImage({bool isGallery = false}) async {
    ImagePicker _picker = ImagePicker();
    var image = await _picker.pickImage(
        source: isGallery ? ImageSource.gallery : ImageSource.camera,
        maxHeight: 1024,
        preferredCameraDevice: CameraDevice.front,
        maxWidth: 1024);
    if (image != null) {
      return image;
    }
  }





}