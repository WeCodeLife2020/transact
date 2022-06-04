import 'dart:io';

import 'package:app_template/src/utils/utils.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class Image_Input_Page extends StatefulWidget {
  const Image_Input_Page({Key? key}) : super(key: key);

  @override
  State<Image_Input_Page> createState() => _Image_Input_PageState();
}

class _Image_Input_PageState extends State<Image_Input_Page> {
  File? imageFile;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (imageFile != null)
                Container(
                  margin: const EdgeInsets.all(10),
                  height: screenHeight(context,dividedBy: 2),
                  width: screenWidth(context,dividedBy: 1),
                  decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(width: 2,color: Colors.black),
                      image: DecorationImage(image: FileImage(imageFile!),fit: BoxFit.cover)),
                ),
              
              ElevatedButton(
                  onPressed: () {
                    getImage(source: ImageSource.camera);
                  },
                  child: const Text("Capture Image")),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  onPressed: () {
                    getImage(source: ImageSource.gallery);
                  },
                  child: const Text("Select Image")),
            ],
          ),
        ),
      ),
    );
  }

  void getImage({required ImageSource source}) async {
    final file = await ImagePicker().pickImage(source: source);
    if (file?.path != null) {
      setState(() {
        imageFile = File(file!.path);
      });
    }
  }
}
