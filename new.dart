// main.dart
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyFileManagerApp(),
    );
  }
}

class MyFileManagerApp extends StatefulWidget {
  @override
  _MyFileManagerAppState createState() => _MyFileManagerAppState();
}

class _MyFileManagerAppState extends State<MyFileManagerApp> {
  TextEditingController fileNameController = TextEditingController();
  TextEditingController newFileNameController = TextEditingController();
  List<String> files = [];

  @override
  void initState() {
    super.initState();
    loadFiles();
  }

  Future<void> loadFiles() async {
    Directory directory = await getApplicationDocumentsDirectory();
    List<String> fileNames = directory.listSync().map((file) => file.path).toList();
    setState(() {
      files = fileNames;
    });
  }

  Future<void> createFile() async {
    String fileName = fileNameController.text;
    if (fileName.isNotEmpty) {
      Directory directory = await getApplicationDocumentsDirectory();
      File newFile = File('${directory.path}/$fileName');
      await newFile.create();
      fileNameController.clear();
      loadFiles();
    }
  }

  Future<void> deleteFile(String fileName) async {
    File file = File(fileName);
    if (await file.exists()) {
      await file.delete();
      loadFiles();
    }
  }

  Future<void> renameFile(String oldFileName, String newFileName) async {
    File oldFile = File(oldFileName);
    File newFile = File(newFileName);

    if (await oldFile.exists()) {
      await oldFile.rename(newFile.path);
      loadFiles();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My File Management App'),
      ),
      body: Column(
        children: [
          TextField(
            controller: fileNameController,
            decoration: InputDecoration(
              labelText: 'Enter File Name',
            ),
          ),
          ElevatedButton(
            onPressed: createFile,
            child: Text('Create File'),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: files.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(files[index]),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      IconButton(
                        icon: Icon(Icons.delete),
                        onPressed: () => deleteFile(files[index]),
                      ),
                      IconButton(
                        icon: Icon(Icons.edit),
                        onPressed: () => _showRenameDialog(files[index]),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  Future<void> _showRenameDialog(String fileName) async {
    return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('Rename File'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                controller: newFileNameController,
                decoration: InputDecoration(
                  labelText: 'Enter New File Name',
                ),
              ),
              SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  if (newFileNameController.text.isNotEmpty) {
                    renameFile(fileName, '${getApplicationDocumentsDirectory()}/${newFileNameController.text}');
                    Navigator.of(context).pop();
                  }
                },
                child: Text('Rename'),
              ),
            ],
          ),
        );
      },
    );
  }
}