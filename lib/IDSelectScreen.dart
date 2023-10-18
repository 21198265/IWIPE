import 'package:flutter/material.dart';
import 'package:file_picker/file_picker.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

const List<String> list = <String>['Driver Licence', 'Passport', 'ID Card'];

class IDSelectScreen extends StatefulWidget {
  const IDSelectScreen({Key? key}) : super(key: key);

  @override
  _IDSelectScreenState createState() => _IDSelectScreenState();
}

class _IDSelectScreenState extends State<IDSelectScreen> {
  String? dropdownValue;
  XFile? selectedImage;
  String? userId; // Define the userId variable.

  @override
  Future<void> _pickImage() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles(
      type: FileType.custom, // Specify a custom file type
      allowedExtensions: ['jpg', 'jpeg', 'png', 'pdf', 'doc'], // Define the allowed file extensions
    );

    if (result != null && result.files.isNotEmpty) {
      // Handle the selected file(s)
      final file = File(result.files.single.path!); // Use non-nullable operator `!` to convert to a non-nullable String
      setState(() {
        selectedImage = XFile(file.path);
      });
    }
  }

  Future<void> _uploadImage() async {
    if (selectedImage == null) {
      // Handle the case where no image is selected.
      print('No image selected');
      return;
    }

    final storage = FirebaseStorage.instance;
    final fileName = 'user_images/$userId/${selectedImage!.name}'; // Set the filename based on the original file name
    final reference = storage.ref().child(fileName);
    final uploadTask = reference.putFile(File(selectedImage!.path));

    // Handle the upload task's state and errors.
    uploadTask.then((TaskSnapshot taskSnapshot) {
      // Image uploaded successfully.
      print('Image uploaded: ${taskSnapshot.ref.fullPath}');
    }).catchError((error) {
      // Handle upload errors.
      print('Error uploading image: $error');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Select ID')),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: <Widget>[
            // Existing UI elements...

            DropdownButton<String>(
              value: dropdownValue,
              onChanged: (String? value) {
                setState(() {
                  dropdownValue = value;
                });
              },
              items: list.map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),

            // Button to select an image.
            ElevatedButton(
              onPressed: _pickImage,
              child: Text('Select Image'),
            ),

            // Display the selected image, if available.
            if (selectedImage != null)
              Image.file(File(selectedImage!.path)),

            // Button to upload the selected image.
            ElevatedButton(
              onPressed: _uploadImage,
              child: Text('Upload Image'),
            ),
          ],
        ),
      ),
    );
  }
}
