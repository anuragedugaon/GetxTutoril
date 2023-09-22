import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

import '../Get x/ImagePikerController.dart';

class ImagePikerPage extends StatefulWidget {
  const ImagePikerPage({super.key});

  @override
  State<ImagePikerPage> createState() => _ImagePikerPageState();
}

class _ImagePikerPageState extends State<ImagePikerPage> {
  ImagePikerController imageController = Get.put(ImagePikerController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(body:
    Column(children: [
    Obx(() => Column(
        children: [
          Stack(
            children: [
              imageController.imagePath != null
                  ? CircleAvatar(
                  radius: 50,
                  backgroundImage:
                  FileImage(  File(imageController.imagePath.toString())))
                  : const CircleAvatar(
                radius: 50,
                child: Icon(Icons.person),
                // widget.imagePath != null ? FileImage(File(imageFile!.path)) : null,
              ),
              Positioned(
                bottom: 0,
                right: 0,
                child: Container(
                  width: 35,
                  height: 35,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(80),
                    color: Colors.white,
                  ),
                  child: IconButton(
                    icon: const Icon(Icons.edit),
                    onPressed: () {
                      showModalBottomSheet(
                        context: context,
                        builder: (BuildContext context) {
                          return Wrap(
                            children: [
                              ListTile(
                                leading: const Icon(
                                  Icons.camera_alt,
                                  color: Colors.black,
                                ),
                                title: const Text('Camera'),
                                onTap: () {
                                  imageController.pickImage(ImageSource.camera);
                                  Navigator.pop(context);
                                },
                              ),
                              ListTile(
                                leading: const Icon(
                                  Icons.image,
                                  color: Colors.black,
                                ),
                                title: const Text('Gallery'),
                                onTap: () {
                                  imageController.pickImage(ImageSource.gallery);
                                  Navigator.pop(context);
                                },
                              ),
                            ],
                          );
                        },
                      );
                    },
                  ),
                ),
              ),
            ],
          ),


          const Padding(padding: EdgeInsets.only(left: 5,),

            child: Icon(Icons.edit_calendar_rounded ,color: Colors.white,),
          )
        ]))
    ],
    )
   ));
  }
}
