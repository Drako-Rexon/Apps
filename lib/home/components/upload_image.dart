import 'dart:io';
import 'dart:async';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';
import 'package:salon/components/colors_used.dart';

class UploadImage extends StatelessWidget {
  UploadImage({
    Key? key,
  }) : super(key: key);

  File? image;
  Future pickImage() async {
    try {
      final image = await ImagePicker().pickImage(source: ImageSource.gallery);
      if (image == null) return;
      final imageTemp = File(image.path);
      setState(() => this.image = imageTemp);
    } on PlatformException catch (e) {
      print('Failed to load image: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: DottedBorder(
        color: AppColors.lightergrey,
        child: GestureDetector(
          onTap: () => pickImage(), // ! Here it is crashed
          child: image != null
              ? Container(
                  child: Image.file(
                    image!,
                    height: 120,
                    width: 120,
                    fit: BoxFit.cover,
                  ),
                )
              : Container(
                  height: 120,
                  width: 120,
                  decoration: BoxDecoration(),
                  child: Center(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.camera_alt,
                          size: 30,
                          color: AppColors.lightergrey,
                        ),
                        Text(
                          'Upload',
                          style: TextStyle(
                            color: AppColors.lightergrey,
                            fontFamily: 'PoppinsReg',
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
        ),
      ),
    );
  }

  void setState(File Function() param0) {}
}
