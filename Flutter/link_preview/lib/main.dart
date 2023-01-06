import 'package:flutter/material.dart';
import 'package:flutter_link_preview/flutter_link_preview.dart';
import 'package:http/http.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String article =
      'https://medium.com/@LohaniDamodar/flutter-recipes-2-firebase-firestore-recipes-2f09e58a7298';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: FlutterLinkPreview(
        url: article,
        bodyStyle: const TextStyle(
          fontSize: 18.0,
        ),
        titleStyle: const TextStyle(
          fontSize: 20.0,
          fontWeight: FontWeight.bold,
        ),
        builder: (info) {
          if (info is WebInfo) {
            return SizedBox(
              height: 350,
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0)),
                clipBehavior: Clip.antiAlias,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    if (info.image != null)
                      Expanded(
                          child: Image.network(
                        info.image,
                        width: double.maxFinite,
                        fit: BoxFit.cover,
                      )),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0),
                      child: Text(
                        info.title,
                        style: const TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    if (info.description != null)
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Text(info.description),
                      ),
                  ],
                ),
              ),
            );
          }
          if (info is WebImageInfo) {
            return SizedBox(
              height: 350,
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0)),
                clipBehavior: Clip.antiAlias,
                child: Image.network(
                  info.image,
                  fit: BoxFit.cover,
                  width: double.maxFinite,
                ),
              ),
            );
          } else if (info is WebVideoInfo) {
            return SizedBox(
              height: 350,
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0)),
                clipBehavior: Clip.antiAlias,
                child: Image.network(
                  info.image,
                  fit: BoxFit.cover,
                  width: double.maxFinite,
                ),
              ),
            );
          }
        },
      ),
    );
  }
}
