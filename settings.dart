import 'package:flutter/material.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  bool switchValue1 = false;
  bool switchValue2 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(
          'Settings',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        centerTitle: false,
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_rounded,
            color: Colors.white,
            size: 30,
          ),
          onPressed: () {
            print('IconButton pressed ...');
          },
        ),
        actions: [],
      ),
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.all(16),
          children: [
            Text(
              'File Manager Settings',
              style: TextStyle(
                fontFamily: 'Outfit',
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(height: 12),
            GestureDetector(
              onTap: () {
                print('Default Folder tapped ...');
              },
              child: Container(
                height: 60,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Padding(
                  padding: EdgeInsets.all(12),
                  child: Row(
                    children: [
                      Icon(
                        Icons.folder_open_outlined,
                        color: Colors.white,
                        size: 24,
                      ),
                      SizedBox(width: 12),
                      Text(
                        'Default Folder',
                        style: TextStyle(
                          fontFamily: 'Plus Jakarta Sans',
                          color: Colors.white,
                        ),
                      ),
                      Spacer(),
                      Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.white,
                        size: 18,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 12),
            GestureDetector(
              onTap: () {
                print('Settings tapped ...');
              },
              child: Container(
                height: 60,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Padding(
                  padding: EdgeInsets.all(12),
                  child: Row(
                    children: [
                      Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.white,
                        size: 18,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 12),
            Container(
              height: 60,
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(12),
              ),
              child: Padding(
                padding: EdgeInsets.all(12),
                child: Row(
                  children: [
                    Icon(
                      Icons.visibility_rounded,
                      color: Colors.black,
                      size: 24,
                    ),
                    SizedBox(width: 12),
                    Text(
                      'Show Hidden Files',
                      style: TextStyle(
                        fontFamily: 'Plus Jakarta Sans',
                        color: Colors.black,
                      ),
                    ),
                    Spacer(),
                    Switch(
                      value: switchValue1,
                      onChanged: (newValue) {
                        setState(() {
                          switchValue1 = newValue;
                        });
                      },
                      activeColor: Colors.black,
                      activeTrackColor: Colors.grey[400],
                      inactiveTrackColor: Colors.grey[400],
                      inactiveThumbColor: Colors.grey[200],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 12),
            Container(
              height: 60,
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(12),
              ),
              child: Padding(
                padding: EdgeInsets.all(12),
                child: Row(
                  children: [
                    Icon(
                      Icons.notifications_none,
                      color: Colors.black,
                      size: 24,
                    ),
                    SizedBox(width: 12),
                    Text(
                      'File Notifications',
                      style: TextStyle(
                        fontFamily: 'Plus Jakarta Sans',
                        color: Colors.black,
                      ),
                    ),
                    Spacer(),
                    Switch(
                      value: switchValue2,
                      onChanged: (newValue) {
                        setState(() {
                          switchValue2 = newValue;
                        });
                      },
                      activeColor: Colors.black,
                      activeTrackColor: Colors.grey[400],
                      inactiveTrackColor: Colors.grey[400],
                      inactiveThumbColor: Colors.grey[200],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

