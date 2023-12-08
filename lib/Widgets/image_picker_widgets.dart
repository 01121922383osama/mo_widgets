import 'dart:developer';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:video_player/video_player.dart';

class ImagePickerWidget extends StatefulWidget {
  const ImagePickerWidget({super.key});

  @override
  State<ImagePickerWidget> createState() => _ImagePickerStateWidget();
}

class _ImagePickerStateWidget extends State<ImagePickerWidget> {
  String? imageCamera;
  String? imageGallery;
  String? videoCamer;
  String? videoGallery;
  late VideoPlayerController controller;
  @override
  void initState() {
    super.initState();
    controller = VideoPlayerController.networkUrl(Uri.parse(
        'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4'))
      ..initialize().then((_) {
        // Ensure the first frame is shown after the video is initialized, even before the play button has been pressed.
        setState(() {});
      });
  }

  @override
  void dispose() {
    controller.dispose();
    log('Close');
    super.dispose();
  }

  ImagePicker picker = ImagePicker();
  Future<void> takeImageCamera() async {
    XFile? image = await picker.pickImage(source: ImageSource.camera);
    if (image != null) {
      setState(() {
        imageCamera = image.path;
      });
    } else {
      return;
    }
  }

  Future<void> takeImageGallery() async {
    XFile? imagegallery = await picker.pickImage(source: ImageSource.gallery);
    if (imagegallery != null) {
      setState(() {
        imageGallery = imagegallery.path;
      });
    } else {
      return;
    }
  }

  Future<void> pickVideoCamera() async {
    XFile? vidCamera = await picker.pickVideo(source: ImageSource.camera);
    if (vidCamera != null) {
      setState(() {
        videoCamer = vidCamera.path;
        controller = VideoPlayerController.file(File(videoCamer!))
          ..initialize().then((_) {
            setState(() {});
          });
      });
    }
  }

  Future<void> pickVideogallery() async {
    XFile? vidGallery = await picker.pickVideo(source: ImageSource.gallery);
    if (vidGallery != null) {
      setState(() {
        videoGallery = vidGallery.path;
        controller = VideoPlayerController.file(File(videoGallery!))
          ..initialize().then((_) {
            setState(() {});
          });
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Image Picker'),
      ),
      body: Center(
          child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: takeImageCamera,
              child: const Text('Take Image from Camera'),
            ),
            ElevatedButton(
              onPressed: takeImageGallery,
              child: const Text('Take Image from Gallery'),
            ),
            ElevatedButton(
              onPressed: pickVideoCamera,
              child: const Text('Take Video from Camera'),
            ),
            ElevatedButton(
              onPressed: pickVideogallery,
              child: const Text('Take Video from Gallery'),
            ),
            const SizedBox(height: 20),
            imageCamera == null
                ? const SizedBox()
                : Container(
                    width: 200,
                    height: 200,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: FileImage(File(imageCamera!)))),
                  ),
            imageGallery == null
                ? const SizedBox()
                : Container(
                    width: 200,
                    height: 200,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: FileImage(File(imageGallery!)))),
                  ),
            videoGallery == null
                ? const SizedBox()
                : SizedBox(
                    width: 400,
                    height: 400,
                    child: VideoPlayer(controller),
                  ),
            videoCamer == null
                ? const SizedBox()
                : SizedBox(
                    width: 400,
                    height: 400,
                    child: VideoPlayer(controller),
                  ),
          ],
        ),
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            setState(() {
              controller.value.isPlaying
                  ? controller.pause()
                  : controller.play();
            });
          });
        },
        child:
            Icon(controller.value.isPlaying ? Icons.pause : Icons.play_arrow),
      ),
    );
  }
}
