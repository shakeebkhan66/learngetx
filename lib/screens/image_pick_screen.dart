import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:learngetx/controllers/image_pick_cont.dart';

class ImagePickScreen extends StatefulWidget {
  const ImagePickScreen({super.key});

  @override
  State<ImagePickScreen> createState() => _ImagePickScreenState();
}

class _ImagePickScreenState extends State<ImagePickScreen> {
  ImagePickController controller = Get.put(ImagePickController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Image Pick Screen"),
      ),
      body: Obx(() {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: CircleAvatar(
                radius: 40,
                backgroundImage: controller.imagePath.isNotEmpty
                    ? FileImage(File(controller.imagePath.toString()))
                    : null,
              ),
            ),
            TextButton(
              onPressed: () {
                Get.bottomSheet(
                    backgroundColor: Colors.deepPurple.withOpacity(0.4),
                    SizedBox(
                      height: 200,
                      width: Get.width * 1,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          TextButton(
                              onPressed: () {
                                controller.getImage(ImageSource.gallery);
                                Get.back();
                              },
                              child: const Text(
                                "Pick from Gallery",
                                style: TextStyle(color: Colors.white),
                              )),
                          const SizedBox(
                            height: 15,
                          ),
                          TextButton(
                              onPressed: () {
                                controller.getImage(ImageSource.camera);
                                Get.back();
                              },
                              child: const Text(
                                "Pick from Camera",
                                style: TextStyle(color: Colors.white),
                              )),
                        ],
                      ),
                    ));
              },
              child: const Text("Pick Image"),
            )
          ],
        );
      }),
    );
  }
}
