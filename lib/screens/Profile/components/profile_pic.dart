import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:image_picker/image_picker.dart';

import 'image_picker_option.dart';

class ProfilePic extends StatefulWidget {
  const ProfilePic({
    Key? key,
  }) : super(key: key);

  @override
  State<ProfilePic> createState() => _ProfilePicState();
}

class _ProfilePicState extends State<ProfilePic> {
  XFile? selectedImage;
  final imagePicker = ImagePicker();
  _getImageFromGallery() async {
    XFile? file = await imagePicker.pickImage(source: ImageSource.gallery);
    setState(() {
      selectedImage = file;
    });
    Navigator.pop(context);
  }

  _getImageFromCamera() async {
    XFile? file = await imagePicker.pickImage(source: ImageSource.camera);
    if (file != null) {
      setState(() {
        selectedImage = file;
      });
    }
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 115,
      height: 115,
      child: Stack(
        clipBehavior: Clip.none, // for remove overflow --> hide icon button
        fit: StackFit.expand, // for manage user profile photo
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(70),
            child: selectedImage == null
                ? Image.asset(
                    'assets/images/user2.png',
                  )
                : Image.file(
                    File(selectedImage!.path),
                    fit: BoxFit.cover,
                  ),
          ),
          Positioned(
            right: -10,
            bottom: -5,
            child: SizedBox(
              width: 45,
              height: 45,
              child: TextButton(
                style: TextButton.styleFrom(
                  padding: EdgeInsets.zero,
                  backgroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24),
                    side: BorderSide(
                      color: Colors.black.withOpacity(0.35),
                      width: 0.45,
                    ),
                  ),
                ),
                onPressed: () {
                  openPopScreen(context: context);
                },
                child: SvgPicture.asset(
                  'assets/icons/Camera Icon.svg',
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  openPopScreen({required BuildContext context}) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return SimpleDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          title: const Text('Select option'),
          children: <Widget>[
            // SimpleDialogOption was used but i choose textButton
            /*
            SimpleDialogOption(
              onPressed: () {
                _getImageFromGallery();
              },
              child: const ImagePickerOption(
                optionText: 'Gallery',
                image: 'assets/icons/ios_gallery.svg',
              ),
            ),
            SimpleDialogOption(
              child: const ImagePickerOption(
                image: 'assets/icons/ios_camera.svg',
                optionText: 'Camara',
              ),
              onPressed: () {
                _getImageFromCamera();
              },
            ),
             */
            Padding(
              padding:
                  const EdgeInsets.only(left: 20, right: 20, top: 5, bottom: 5),
              child: TextButton(
                style: TextButton.styleFrom(
                  padding: EdgeInsets.zero,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(35),
                  ),
                ),
                onPressed: () {
                  _getImageFromGallery();
                },
                child: const ImagePickerOption(
                  optionText: 'Gallery',
                  image: 'assets/icons/ios_gallery.svg',
                ),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.only(left: 20, right: 20, top: 5, bottom: 5),
              child: TextButton(
                style: TextButton.styleFrom(
                  padding: EdgeInsets.zero,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(35),
                  ),
                ),
                onPressed: () {
                  _getImageFromCamera();
                },
                child: const ImagePickerOption(
                  optionText: 'Camara',
                  image: 'assets/icons/ios_camera.svg',
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
