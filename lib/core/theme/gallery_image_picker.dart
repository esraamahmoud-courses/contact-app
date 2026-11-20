import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class GalleryPickerExample extends StatefulWidget {
  const GalleryPickerExample({super.key});

  @override
  State<GalleryPickerExample> createState() => _GalleryPickerExampleState();
}

class _GalleryPickerExampleState extends State<GalleryPickerExample> {
  final ImagePicker _picker = ImagePicker();
  File? _selectedImage;

  Future<void> _pickFromGallery() async {
    final XFile? pickedFile = await _picker.pickImage(
      source: ImageSource.gallery,
      imageQuality: 85,
    );

    if (pickedFile != null) {
      setState(() {
        _selectedImage = File(pickedFile.path);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Pick Gallery Image')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _selectedImage != null
                ? Image.file(_selectedImage!, height: 240)
                : const Text('No image selected'),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: _pickFromGallery,
              child: const Text('Select from Gallery'),
            ),
          ],
        ),
      ),
    );
  }
}
