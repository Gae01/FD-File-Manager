import 'package:flutter/material.dart';

class FoldersWidget extends StatefulWidget {
  const FoldersWidget({Key? key}) : super(key: key);

  @override
  _FoldersWidgetState createState() => _FoldersWidgetState();
}

class _FoldersWidgetState extends State<FoldersWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  void _navigateToImagePage() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => ImagePage()),
    );
  }

  void _navigateToVideoPage() {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => VideoPage()),
  );
}

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (FocusScope.of(context).hasFocus) {
          FocusScope.of(context).unfocus();
        }
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.purple,
          automaticallyImplyLeading: false,
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back_rounded,
              color: Colors.black,
              size: 30,
            ),
            onPressed: () {
              print('IconButton pressed ...');
            },
          ),
          actions: [],
          centerTitle: false,
          elevation: 0,
        ),
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(16, 0, 16, 0),
                child: Text(
                  'Files',
                  style: TextStyle(
                    fontFamily: 'Outfit',
                    fontSize: 24,
                    color: Theme.of(context).textTheme.headline6!.color,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(16, 0, 16, 0),
                child: Container(
                  width: double.infinity,
                  height: 60,
                  decoration: BoxDecoration(
                    color: Colors.yellow,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  alignment: Alignment.center,
                  child: Padding(
                    padding: EdgeInsets.all(12),
                    child: Row(
                      children: [
                        IconButton(
                          icon: Icon(
                            Icons.folder_open_rounded,
                            color: Theme.of(context).textTheme.headline6!.color,
                            size: 24,
                        ),
                        onPressed: _navigateToImagePage
                        
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(12, 0, 12, 0),
                          child: Text(
                            'Images',
                            style: TextStyle(
                              fontFamily: 'Plus Jakarta Sans',
                              fontSize: 16,
                              color: Theme.of(context).textTheme.headline6!.color,
                            ),
                          ),
                        ),
                        IconButton(
                          icon: Icon(
                            Icons.arrow_forward_ios,
                            color: Theme.of(context).textTheme.headline6!.color,
                            size: 18,
                        ),
                      onPressed: () {
                        _navigateToImagePage();
                      }
                      ),
                      
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(16, 0, 16, 0),
                child: Container(
                  width: double.infinity,
                  height: 60,
                  decoration: BoxDecoration(
                    color:Colors.yellow,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  alignment: Alignment.center,
                  child: Padding(
                    padding: EdgeInsets.all(12),
                    child: Row(
                      children: [
                        IconButton(
                          icon: Icon( 
                            Icons.folder_open_rounded,
                            color: Theme.of(context).textTheme.headline6!.color,
                            size: 24,
                          ),
                          onPressed: () {},
                        ),
                         Padding(
                          padding: EdgeInsets.fromLTRB(12, 0, 12, 0),
                          child: Text(
                            'Music',
                            style: TextStyle(
                              fontFamily: 'Plus Jakarta Sans',
                              fontSize: 16,
                              color: Theme.of(context).textTheme.headline6!.color,
                            ),
                          ),
                        ),
                        IconButton(
                          icon: Icon( 
                            Icons.arrow_forward_ios,
                            color: Theme.of(context).textTheme.headline6!.color,
                            size: 18,
                        ),
                       onPressed: () {},
                        )
                      ],
                    ),
                  ),
                ),
              ),
              
              Padding(
                padding: EdgeInsets.fromLTRB(16, 0, 16, 0),
                child: Container(
                  width: double.infinity,
                  height: 60,
                  decoration: BoxDecoration(
                    color:Colors.yellow,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  alignment: Alignment.center,
                  child: Padding(
                    padding: EdgeInsets.all(12),
                    child: Row(
                      children: [
                        IconButton(
                         icon: Icon( 
                          Icons.folder_open_rounded,
                          color: Theme.of(context).textTheme.headline6!.color,
                          size: 24,
                        ),
                        onPressed: () {
                          _navigateToVideoPage();
                        },
                        ),
                         Padding(
                          padding: EdgeInsets.fromLTRB(12, 0, 12, 0),
                          child: Text(
                            'Videos',
                            style: TextStyle(
                              fontFamily: 'Plus Jakarta Sans',
                              fontSize: 16,
                              color: Theme.of(context).textTheme.headline6!.color,
                            ),
                          ),
                        ),
                        IconButton(
                          icon: Icon( 
                            Icons.arrow_forward_ios,
                            color: Theme.of(context).textTheme.headline6!.color,
                            size: 18,
                        ),
                       onPressed: () {
                        _navigateToVideoPage();
                       },
                        )
                      ],
                    ),
                  ),
                ),
              ),
              
              Padding(
                padding: EdgeInsets.fromLTRB(16, 0, 16, 0),
                child: Container(
                  width: double.infinity,
                  height: 60,
                  decoration: BoxDecoration(
                    color:Colors.yellow,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  alignment: Alignment.center,
                  child: Padding(
                    padding: EdgeInsets.all(12),
                    child: Row(
                      children: [
                         IconButton(
                         icon: Icon( 
                          Icons.folder_open_rounded,
                          color: Theme.of(context).textTheme.headline6!.color,
                          size: 24,
                        ),
                        onPressed: () {},
                        ),
                        
                        Padding(
                          padding: EdgeInsets.fromLTRB(12, 0, 12, 0),
                          child: Text(
                            'Xender',
                            style: TextStyle(
                              fontFamily: 'Plus Jakarta Sans',
                              fontSize: 16,
                              color: Theme.of(context).textTheme.headline6!.color,
                            ),
                          ),
                        ),
                         IconButton(
                          icon: Icon( 
                            Icons.arrow_forward_ios,
                            color: Theme.of(context).textTheme.headline6!.color,
                            size: 18,
                        ),
                       onPressed: () {},
                        )
                      ],
                    ),
                  ),
                ),
              ),
              
              Padding(
                padding: EdgeInsets.fromLTRB(16, 0, 16, 0),
                child: Container(
                  width: double.infinity,
                  height: 60,
                  decoration: BoxDecoration(
                    color:Colors.yellow,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  alignment: Alignment.center,
                  child: Padding(
                    padding: EdgeInsets.all(12),
                    child: Row(
                      children: [
                        IconButton(
                          icon: Icon( 
                            Icons.insert_drive_file_rounded,
                            color: Theme.of(context).textTheme.headline6!.color,
                            size: 24,
                        ),
                        onPressed: () {},
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(12, 0, 12, 0),
                          child: Text(
                            'File 1',
                            style: TextStyle(
                              fontFamily: 'Plus Jakarta Sans',
                              fontSize: 16,
                              color: Theme.of(context).textTheme.headline6!.color,
                            ),
                          ),
                        ),
                         IconButton(
                          icon: Icon( 
                            Icons.arrow_forward_ios,
                            color: Theme.of(context).textTheme.headline6!.color,
                            size: 18,
                        ),
                       onPressed: () {},
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(16, 0, 16, 0),
                child: Container(
                  width: double.infinity,
                  height: 60,
                  decoration: BoxDecoration(
                    color: Colors.yellow,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  alignment: Alignment.center,
                  child: Padding(
                    padding: EdgeInsets.all(12),
                    child: Row(
                      children: [
                         IconButton(
                          icon: Icon( 
                            Icons.insert_drive_file_rounded,
                            color: Theme.of(context).textTheme.headline6!.color,
                            size: 24,
                        ),
                        onPressed: () {},
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(12, 0, 12, 0),
                          child: Text(
                            'File 2',
                            style: TextStyle(
                              fontFamily: 'Plus Jakarta Sans',
                              fontSize: 16,
                              color: Theme.of(context).textTheme.headline6!.color,
                            ),
                          ),
                        ),
                        IconButton(
                          icon: Icon( 
                            Icons.arrow_forward_ios,
                            color: Theme.of(context).textTheme.headline6!.color,
                            size: 18,
                        ),
                       onPressed: () {},
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ImagePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text('Image Page'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Center(
        child: Text('Images will be displayed here.'),
      ),
    );
  }
}

class VideoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text('Video Page'),
        leading:IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ), 
      ),
      body: Center(
        child: Text('Videos will be displayed here'),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(home: FoldersWidget()));
}

