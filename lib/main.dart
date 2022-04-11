import 'package:flutter/material.dart';
import 'screen.dart';
import 'nav.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    onGenerateRoute: RouteGenerator.generateRoute,
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => DefaultTabController(
        length: 1,
        child: Scaffold(
          appBar: AppBar(
            actions: [
              Padding(
                padding: EdgeInsets.only(right: 22.0),
                child: Icon(Icons.zoom_in),
              ),
            ],
            backgroundColor: Colors.green,
            title: Text("WhatsApps Lite"),
          ),
          drawer: DrawerWidget(),
          body: TabBarView(children: <Widget>[
            Home(),
          ]),
        ),
      );
}
