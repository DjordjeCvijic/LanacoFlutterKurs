import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ProfileProvider extends ChangeNotifier {
  XFile? selectedPofilePhoto;

  void pickProfilePhoto(ImageSource imageSource) async {
    final ImagePicker imagePicker = ImagePicker();
    selectedPofilePhoto = await imagePicker.pickImage(
        source: imageSource, preferredCameraDevice: CameraDevice.front);

    notifyListeners();
  }
}
