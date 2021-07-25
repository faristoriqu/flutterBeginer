import 'package:dicoding/res/Strings.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatefulWidget {
  final int index;
  DetailPage(this.index, {Key? key})
      : super(
          key: key,
        );

  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    int id = widget.index;
    String lorem =
        "Ipsum culpa esse labore Lorem ea cillum sunt. Do aute minim velit labore occaecat dolor aliquip id ea eu. Cupidatat eiusmod deserunt amet excepteur aliquip mollit ex ipsum esse enim exercitation anim culpa sit. Aliqua incididunt labore tempor dolor anim. Irure laboris minim consectetur cillum irure sunt ullamco dolor eiusmod excepteur deserunt. Consectetur magna eiusmod aliquip ad ad ex nostrud qui voluptate enim ipsum cillum. Aute proident elit deserunt consequat enim cillum velit et duis culpa velit. Ea quis minim mollit eu amet culpa ex ea nisi adipisicing occaecat. Adipisicing culpa velit reprehenderit ipsum officia eiusmod deserunt ea mollit ad eu. Sunt nostrud quis reprehenderit in consequat ullamco labore. Voluptate labore pariatur quis ullamco fugiat commodo reprehenderit laborum ut. Sit do culpa pariatur sunt. Voluptate eiusmod sint voluptate Lorem commodo. Nulla consequat adipisicing et irure nisi consectetur tempor dolore veniam consequat dolore eu duis occaecat. Incididunt id minim qui laboris voluptate eu incididunt voluptate. Id occaecat est voluptate consequat occaecat. Enim ut deserunt nulla non proident cillum ullamco excepteur minim. Quis excepteur sit fugiat aliquip dolore culpa est ad ipsum ad excepteur nulla deserunt. Eiusmod dolore voluptate dolor exercitation officia ex sit do magna enim nulla Lorem magna proident. Consequat laborum esse officia voluptate proident do mollit id deserunt minim ipsum aute cupidatat. Excepteur voluptate magna ipsum nostrud ut magna aliquip. Eu est ex enim exercitation pariatur cillum cupidatat cillum commodo ipsum esse. Minim consectetur sunt pariatur quis magna excepteur eu mollit mollit. Ex laboris nostrud anim in ipsum. Incididunt reprehenderit culpa cupidatat enim aliquip ipsum reprehenderit. Veniam occaecat elit labore ipsum ad aute ad cillum.";
    return Scaffold(
        appBar: AppBar(
          title: Text(Strings.artikel),
        ),
        body: SingleChildScrollView(
          child: Stack(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: new BorderRadius.only(
                        topLeft: const Radius.circular(40.0),
                        topRight: const Radius.circular(40.0))),
                child: Column(
                  children: [
                    if (id == 1)
                      Expanded(
                        flex: 1,
                        child: Center(
                          child: Text(
                            "Kotlin",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    if (id == 2)
                      Expanded(
                        flex: 1,
                        child: Center(
                          child: Text(
                            "React Native",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    if (id == 3)
                      Expanded(
                        flex: 1,
                        child: Center(
                          child: Text(
                            "Flutter",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    Expanded(
                      flex: 4,
                      child: Container(
                        margin: EdgeInsets.only(left: 10, top: 20),
                        child: Text(lorem),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
