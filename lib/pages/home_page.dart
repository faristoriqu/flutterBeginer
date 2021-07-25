import 'package:dicoding/pages/detail_page.dart';
import 'package:dicoding/res/Strings.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(Strings.home),
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                decoration: BoxDecoration(
                  color: Colors.blueGrey[300],
                  // borderRadius: new BorderRadius.only(
                  //   topLeft:  const  Radius.circular(40.0),
                  //   topRight: const  Radius.circular(40.0))
                ),
                child: Column(
                  children: [
                    Expanded(
                      child: ListView(
                        padding: const EdgeInsets.all(8),
                        children: <Widget>[
                          Card(
                            child: ListTile(
                              title: Text("Kotlin ",
                                  style: TextStyle(fontSize: 18)),
                              subtitle: Text(
                                  "sebuah bahasa pemrograman yang dikembangkan oleh JetBrains"),
                              leading: CircleAvatar(
                                  backgroundImage:
                                      AssetImage("assets/images/kotlin.png")),
                              trailing: Icon(Icons.favorite),
                              onTap: () {
                                Navigator.of(context)
                                    .push(MaterialPageRoute(builder: (_) {
                                  return DetailPage(1);
                                }));
                              },
                            ),
                          ),
                          Card(
                            child: ListTile(
                              title: Text(
                                "React Native ",
                                style: TextStyle(fontSize: 18),
                              ),
                              subtitle: Text(
                                  "sebuah framework yang dikembangkan oleh Facebook"),
                              leading: CircleAvatar(
                                  backgroundImage:
                                      AssetImage("assets/images/react.png")),
                              trailing: Icon(Icons.favorite),
                              onTap: () {
                                Navigator.of(context)
                                    .push(MaterialPageRoute(builder: (_) {
                                  return DetailPage(2);
                                }));
                              },
                            ),
                          ),
                          Card(
                            child: ListTile(
                              title: Text("Flutter ",
                                  style: TextStyle(fontSize: 18)),
                              subtitle: Text(
                                  " sebuah framework open-source yang dikembangkan oleh Google"),
                              leading: CircleAvatar(
                                  backgroundImage:
                                      AssetImage("assets/images/flutter.png")),
                              trailing: Icon(Icons.favorite),
                              onTap: () {
                                Navigator.of(context)
                                    .push(MaterialPageRoute(builder: (_) {
                                  return DetailPage(3);
                                }));
                              },
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
