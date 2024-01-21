import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomePageWidget extends StatelessWidget {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    if (Theme.of(context).platform == TargetPlatform.iOS) {
      SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(
          statusBarBrightness: Theme.of(context).brightness,
          systemStatusBarContrastEnforced: true,
        ),
      );
    }

    return GestureDetector(
      onTap: () {
        if (FocusScope.of(context).hasFocus) {
          FocusScope.of(context).unfocus();
        }
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Colors.purple,
        appBar: AppBar(
          backgroundColor: Colors.redAccent,
          automaticallyImplyLeading: false,
          title: Text(
            'Page Title',
            style: TextStyle(
              fontFamily: 'Outfit',
              color: Colors.white,
              fontSize: 22,
            ),
          ),
          actions: [],
          centerTitle: false,
          elevation: 2,
        ),
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.network(
                  'https://images.unsplash.com/photo-1521459382675-a3f2f35a6b9a?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHNlYXJjaHwzfHxmaWxlJTIwbWFuYWdlcnxlbnwwfHx8fDE3MDM5NjMzNTR8MA&ixlib=rb-4.0.3&q=80&w=1080',
                  width: 396,
                  height: 307,
                  fit: BoxFit.cover,
                ),
              ),
              Text(
                '\nManage and arrange your files here with security\n',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'Plus Jakarta Sans',
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Click on "Get started" to start managing your files',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'Plus Jakarta Sans',
                  color: Colors.blue,
                  fontSize: 20,
                  fontWeight: FontWeight.normal,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 101),
                child: ElevatedButton(
                  onPressed: () {
                    print('Button pressed ...');
                  },
                  child: Text("Get started"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

