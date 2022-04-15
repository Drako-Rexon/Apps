import 'dart:io';
import 'dart:async';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';
import 'package:salon/components/colors_used.dart';
import 'package:http/http.dart' as http;

class UploadImage extends StatefulWidget {
  UploadImage({
    Key? key,
  }) : super(key: key);

  @override
  State<UploadImage> createState() => _UploadImageState();
}

class _UploadImageState extends State<UploadImage> {
  File? image;
  var result;

  Future pickImage() async {
    try {
      final image = await ImagePicker().pickImage(source: ImageSource.gallery);
      // if (image == null) return;
      final imageTemp = File(image!.path);
      setState(() => this.image = imageTemp);
    } on PlatformException catch (e) {
      print('Failed to load image: $e');
    }
  }

  uploadImage(String title, File image) async {
    var request = http.MultipartRequest(
        "POST", Uri.parse('https://anaajapp.com/api/user/submit_details'));

    request.fields['title'] = image.path;

    var picture = http.MultipartFile.fromBytes('image',
        (await rootBundle.load('assets/upload.png')).buffer.asUint8List(),
        filename: 'upload.png');

    request.files.add(picture);

    var response = await request.send();
    var responseData = await response.stream.toBytes();
    result = String.fromCharCodes(responseData);

    print(result);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Column(
        children: [
          DottedBorder(
            color: AppColors.lightergrey,
            child: GestureDetector(
              onTap: () => pickImage(),
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
          ElevatedButton(
            onPressed: () {
              uploadImage('image', File(image!.path));
            },
            child: Text('Upload'),
          ),
          result == null ? Container() : Text(result),
        ],
      ),
    );
  }
}
