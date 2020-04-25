import "package:flutter/material.dart";

void main() {
  runApp(new ControlleApp());
}

class ControlleApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "My App",
      home: new HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  HomePageState createState() => new HomePageState();
}

class HomePageState extends State<HomePage> {
  bool visibilityObs = false;

  void _changed(bool visibility, String field) {
    setState(() {
      if (field == "obs") {
        visibilityObs = visibility;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(backgroundColor: new Color(0xFF26C6DA)),
        body: new ListView(
          children: <Widget>[
            new Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new InkWell(
                    onTap: () {
                      visibilityObs
                          ? _changed(false, "obs")
                          : _changed(true, "obs");
                    },
                    child: new Container(
                      margin: new EdgeInsets.only(top: 16.0),
                      child: new Row(
                        children: <Widget>[
                          new Container(
                            margin: const EdgeInsets.only(top: 8.0),
                            child: new Text(
                              "Tour Details",
                              style: new TextStyle(
                                fontSize: 12.0,
                                fontWeight: FontWeight.w600,
                                color:
                                    visibilityObs ? Colors.blue : Colors.black,
                              ),
                            ),
                          ),
                        ],
                      ),
                    )),
              ],
            ),
            new Container(
                margin: new EdgeInsets.only(left: 16.0, right: 16.0),
                child: new Column(
                  children: <Widget>[
                    visibilityObs
                        ? new Column(
                            // crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              new Container(
                                // EdgeInsets: EdgeInsets.only(left:10),
                                // height: MediaQuery.of(context).size.height,
                                // width: MediaQuery.of(context).size.width,
                                child: new IconButton(
                                  color: Colors.grey[400],
                                  icon: const Icon(
                                    Icons.cancel,
                                    size: 22.0,
                                  ),
                                  onPressed: () {
                                    _changed(false, "obs");
                                  },
                                ),
                              ),
                              new Container(
                                // height: MediaQuery.of(context).size.height,
                                // width: MediaQuery.of(context).size.width,
                                child: new IconButton(
                                  color: Colors.grey[400],
                                  icon: const Icon(
                                    Icons.cancel,
                                    size: 22.0,
                                  ),
                                  onPressed: () {
                                    _changed(false, "obs");
                                  },
                                ),
                              ),
                              new Container(
                                // height: MediaQuery.of(context).size.height,
                                // width: MediaQuery.of(context).size.width,
                                child: new IconButton(
                                  color: Colors.grey[400],
                                  icon: const Icon(
                                    Icons.cancel,
                                    size: 22.0,
                                  ),
                                  onPressed: () {
                                    _changed(false, "obs");
                                  },
                                ),
                              ),
                              // new Expanded(
                              //   flex: 1,
                              //   child: new IconButton(
                              //     color: Colors.grey[400],
                              //     icon: const Icon(Icons.cancel, size: 22.0,),
                              //     onPressed: () {
                              //       _changed(false, "obs");
                              //     },
                              //   ),
                              // ),
                            ],
                          )
                        : new Container(),
                  ],
                )),
          ],
        ));
  }
}
