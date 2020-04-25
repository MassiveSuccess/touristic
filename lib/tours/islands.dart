import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class Item {
  const Item(this.name);
  final String name;
}

class IslandsTour extends StatefulWidget {
  IslandsTour({Key key}) : super(key: key);

  @override
  _IslandsTourState createState() => _IslandsTourState();
}

class _IslandsTourState extends State<IslandsTour> {
  Item selectedUser;
  List<Item> users = <Item>[
    const Item('Alpstein'),
    const Item('Iceland'),
    const Item('Islands'),
  ];

  List<String> _travller = ['1', '2', '3', '4']; // Option 2
  String _selectedTravller;

  DateTime selectedDate = DateTime.now();

  Future<Null> _selectDate(BuildContext context) async {
    final DateTime picked = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime(2015, 8),
        lastDate: DateTime(2101));
    if (picked != null && picked != selectedDate)
      setState(() {
        selectedDate = picked;
      });
  }

  @override
  Widget build(BuildContext context) {
    var scaffold = Scaffold(
      // appBar: AppBar(
      //   // title: Text(widget.title),
      // ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                    width: MediaQuery.of(context).size.width / 2,
                    height: MediaQuery.of(context).size.height,
                    // color: Colors.orange,
                    child: SingleChildScrollView(
                        child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          // color: Colors.orange,
                          child: Image.network(
                            'https://image.tmdb.org/t/p/w780/rGVloTdOEPz7K7awXF8Ww6MaJ18.jpg',
                            fit: BoxFit.cover,
                            height: MediaQuery.of(context).size.height / 2,
                            width: MediaQuery.of(context).size.width / 2,
                            alignment: Alignment.center,
                          ),
                        ),
                        Container(
                          // color: Colors.orange,
                          child: Image.network(
                            'https://www.hebrideanhopscotch.com/outer-hebrides/wp-content/uploads/2014/03/SK004-1024x512.jpg',
                            fit: BoxFit.cover,
                            height: MediaQuery.of(context).size.height / 2,
                            width: MediaQuery.of(context).size.width / 2,
                            alignment: Alignment.center,
                          ),
                        ),
                        Container(
                          // color: Colors.orange,
                          child: Image.network(
                            'https://www.goscotlandtours.com/uploads/images/products/thumbs/go-scotland-tours-scotland-island-hopping-extravaganza-tour-1541768747scotland-tour-1.jpg',
                            fit: BoxFit.cover,
                            height: MediaQuery.of(context).size.height / 2,
                            width: MediaQuery.of(context).size.width / 2,
                            alignment: Alignment.center,
                          ),
                        ),
                        Container(
                          // color: Colors.blue,
                          child: Image.network(
                            'https://1001traveldestinations.files.wordpress.com/2013/02/1001-travel-destinations-amazing-kilchurn-castle-loch-awe-scotland.jpg',
                            fit: BoxFit.cover,
                            height: MediaQuery.of(context).size.height / 2,
                            width: MediaQuery.of(context).size.width / 2,
                            alignment: Alignment.center,
                          ),
                        ),
                      ],
                    ))),
                Container(
                  alignment: Alignment.center,
                  width: MediaQuery.of(context).size.width / 2,
                  // color: Colors.blue,
                  child: Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  width: 7.0,
                                  height: 10.0,
                                  decoration: new BoxDecoration(
                                    color: Color(0xffff2542),
                                    shape: BoxShape.circle,
                                  ),
                                ),
                                SizedBox(width: 10),
                                Container(
                                  child: AutoSizeText(
                                    'Hebrides',
                                    style: TextStyle(
                                        fontSize: 28.0,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold),
                                    maxLines: 1,
                                  ),
                                ),
                              ]),
                        ),
                        Container(
                          // color: Colors.blue,
                          child: Row(mainAxisAlignment: MainAxisAlignment.start,
                              //  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  child: AutoSizeText(
                                    'Group of islands',
                                    style: TextStyle(
                                        fontSize: 16.0, color: Colors.black),
                                    maxLines: 1,
                                  ),
                                ),
                                Expanded(
                                    child: Divider(
                                  height: 10.0,
                                )),
                                Container(
                                  child: AutoSizeText(
                                    'over 900 offshore',
                                    style: TextStyle(
                                        fontSize: 16.0, color: Colors.black),
                                    maxLines: 1,
                                  ),
                                ),
                                SizedBox(width: 20),
                              ]),
                        ),
                        Container(
                            // color: Colors.blue,
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                              Container(
                                child: AutoSizeText(
                                  'Currency',
                                  style: TextStyle(
                                      fontSize: 16.0, color: Colors.black),
                                  maxLines: 1,
                                ),
                              ),
                              Expanded(
                                  child: Divider(
                                height: 10.0,
                              )),
                              Container(
                                child: AutoSizeText(
                                  'Pound sterling (GBP)',
                                  style: TextStyle(
                                      fontSize: 16.0, color: Colors.black),
                                  maxLines: 1,
                                ),
                              ),
                              SizedBox(width: 20),
                            ])),
                        SizedBox(height: 20),
                        Container(
                          child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  width: 7.0,
                                  height: 10.0,
                                  decoration: new BoxDecoration(
                                    color: Color(0xffff2542),
                                    shape: BoxShape.circle,
                                  ),
                                ),
                                SizedBox(width: 10),
                                Container(
                                  width: MediaQuery.of(context).size.width / 2 -
                                      30,
                                  child: AutoSizeText(
                                    'Whether you would like to discover the neolithic past of the Callanish Standing Stones on the Isle of Lewis or view an Atlantic sunset from one of the stunning beaches on the Isle of Harris, the Outer Hebrides are the jewels of the Scottish Islands. The complex past of its people - from the Norsemen to the Gaels - have left the Hebridean Islands rich in history and traditions. Why not take a tour to these islands with a Local Hebridean Guide.',
                                    style: TextStyle(
                                        fontSize: 16.0, color: Colors.grey),
                                    maxLines: 20,
                                  ),
                                ),
                              ]),
                        ),
                        SizedBox(height: 20),
                        Container(
                          child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  width: 7.0,
                                  height: 10.0,
                                  decoration: new BoxDecoration(
                                    color: Color(0xffff2542),
                                    shape: BoxShape.circle,
                                  ),
                                ),
                                SizedBox(width: 10),
                                Container(
                                  width: MediaQuery.of(context).size.width / 2 -
                                      30,
                                  child: AutoSizeText(
                                    'This wonderful island-hopping self-drive tour explores the majestic islands of the Outer Hebrides by sea and by road. Spectacularly located on the extreme edge of Europe, this island chain offers striking landscapes, some of the worlds most stunning beaches, sparkling seas, and a captivating history dating back thousands of years.An elemental beauty pervades each of the 200 islands that make up the archipelago. Experience a real sense of belonging and freedom as you explore these legendary islands and soak up the warm Hebridean hospitality.',
                                    style: TextStyle(
                                        fontSize: 16.0, color: Colors.grey),
                                    maxLines: 20,
                                  ),
                                ),
                              ]),
                        ),
                        SizedBox(height: 20),
                        Container(
                          child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  width: 7.0,
                                  height: 10.0,
                                  decoration: new BoxDecoration(
                                    color: Color(0xffff2542),
                                    shape: BoxShape.circle,
                                  ),
                                ),
                                SizedBox(width: 10),
                                Container(
                                  width: MediaQuery.of(context).size.width / 2 -
                                      30,
                                  child: AutoSizeText(
                                    'The Scottish islands have a lot to offer – for whisky lovers, long-distance hikers, Munro baggers, history buffs, bird watchers. There is a Scottish isle for everyone and each one has its own special character! With over 790 islands off the Scottish coast, it can be overwhelming to choose the perfect one for your island getaway. Admittedly, only about 94 of these are permanently inhabited which limits the number of islands you could potentially add to your itinerary – but 94 is still a huge number of isles at your disposal.',
                                    style: TextStyle(
                                        fontSize: 16.0, color: Colors.grey),
                                    maxLines: 20,
                                  ),
                                ),
                              ]),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: Container(
                  height: 200,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    // color:Colors.black,
                    // color: Color(0xfff7f7f7),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Stack(
                    children: <Widget>[
                      Container(
                          width: MediaQuery.of(context).size.width,
                          height: 150,
                          decoration: BoxDecoration(
                            // color:Colors.blue,
                            color: Color(0xfff2f2f2),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Row(
                            children: [
                              Container(
                                  width: MediaQuery.of(context).size.width / 4 -
                                      12,
                                  // color: Colors.orange,
                                  child: Column(
                                    children: [
                                      SizedBox(height: 25),
                                      Container(
                                        // color: Colors.orange,
                                        child: AutoSizeText(
                                          'Where we go',
                                          style: TextStyle(
                                              fontSize: 12.0,
                                              color: Colors.grey),
                                          maxLines: 1,
                                        ),
                                      ),
                                      Container(
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Icon(Icons.airplanemode_active,
                                                  size: 25,
                                                  color: Color(0xffff2542)),
                                              SizedBox(width: 20),
                                              DropdownButton<Item>(
                                                hint: Text("Destination",
                                                    style: TextStyle(
                                                        fontSize: 12.0,
                                                        color: Colors.grey)),
                                                value: selectedUser,
                                                onChanged: (Item Value) {
                                                  setState(() {
                                                    selectedUser = Value;
                                                  });
                                                },
                                                items: users.map((Item user) {
                                                  return DropdownMenuItem<Item>(
                                                    value: user,
                                                    child: Row(
                                                      children: <Widget>[
                                                        // user.icon,
                                                        // SizedBox(width: 10,),
                                                        Text(
                                                          user.name,
                                                          style: TextStyle(
                                                              fontSize: 12.0,
                                                              color:
                                                                  Colors.grey),
                                                        ),
                                                      ],
                                                    ),
                                                  );
                                                }).toList(),
                                              ),
                                            ]),
                                      ),
                                    ],
                                  )),
                              VerticalDivider(
                                color: Colors.grey,
                                width: 3,
                                endIndent: 30,
                                indent: 30,
                              ),
                              Center(
                                child: Container(
                                    width:
                                        MediaQuery.of(context).size.width / 4 -
                                            12,
                                    // color: Colors.blue,
                                    child: Column(
                                      children: [
                                        SizedBox(height: 25),
                                        Container(
                                          // color: Colors.orange,
                                          child: AutoSizeText(
                                            'Arrival',
                                            style: TextStyle(
                                                fontSize: 12.0,
                                                color: Colors.grey),
                                            maxLines: 1,
                                          ),
                                        ),
                                        Container(
                                          child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            children: <Widget>[
                                              FlatButton(
                                                // elevation: 10,
                                                // color: Colors.white,
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceEvenly,
                                                  children: <Widget>[
                                                    Icon(Icons.date_range,
                                                        size: 25,
                                                        color:
                                                            Color(0xffff2542)),
                                                    // SizedBox(width: 5),
                                                    Text(
                                                      "${selectedDate.toLocal()}"
                                                          .split(' ')[0],
                                                      style: TextStyle(
                                                          fontSize: 12.0,
                                                          color: Colors.grey),
                                                    ),
                                                    // SizedBox(width: 5),
                                                    Icon(Icons.arrow_drop_down,
                                                        size: 25,
                                                        color:
                                                            Color(0xffff2542)),
                                                  ],
                                                ),
                                                onPressed: () =>
                                                    _selectDate(context),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    )),
                              ),
                              VerticalDivider(
                                color: Colors.grey,
                                width: 3,
                                endIndent: 30,
                                indent: 30,
                              ),
                              Container(
                                  width: MediaQuery.of(context).size.width / 4 -
                                      12,
                                  // color: Colors.purple,
                                  child: Column(
                                    children: [
                                      SizedBox(height: 25),
                                      Container(
                                        // color: Colors.orange,
                                        child: AutoSizeText(
                                          'Departure',
                                          style: TextStyle(
                                              fontSize: 12.0,
                                              color: Colors.grey),
                                          maxLines: 1,
                                        ),
                                      ),
                                      Container(
                                        child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          children: <Widget>[
                                            FlatButton(
                                              // elevation: 10,
                                              // color: Colors.white,
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceEvenly,
                                                children: <Widget>[
                                                  Icon(Icons.date_range,
                                                      size: 25,
                                                      color: Color(0xffff2542)),
                                                  // SizedBox(width: 5),
                                                  Text(
                                                    "${selectedDate.toLocal()}"
                                                        .split(' ')[0],
                                                    style: TextStyle(
                                                        fontSize: 12.0,
                                                        color: Colors.grey),
                                                  ),
                                                  // SizedBox(width: 5),
                                                  Icon(Icons.arrow_drop_down,
                                                      size: 25,
                                                      color: Color(0xffff2542)),
                                                ],
                                              ),
                                              onPressed: () =>
                                                  _selectDate(context),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  )),
                              VerticalDivider(
                                color: Colors.grey,
                                width: 3,
                                endIndent: 30,
                                indent: 30,
                              ),
                              Container(
                                  width: MediaQuery.of(context).size.width / 4 -
                                      13,
                                  // color: Colors.purple,
                                  child: Column(
                                    children: [
                                      SizedBox(height: 25),
                                      Center(
                                        // color: Colors.orange,
                                        child: AutoSizeText(
                                          'Travllers',
                                          style: TextStyle(
                                              fontSize: 12.0,
                                              color: Colors.grey),
                                          maxLines: 1,
                                        ),
                                      ),
                                      Center(
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Icon(Icons.person,
                                                  size: 25,
                                                  color: Color(0xffff2542)),
                                              SizedBox(width: 20),
                                              // color: Colors.blue,
                                              DropdownButton(
                                                hint: Text('Persons',
                                                    style: TextStyle(
                                                        fontSize: 12.0,
                                                        color: Colors
                                                            .grey)), // Not necessary for Option 1
                                                value: _selectedTravller,
                                                onChanged: (newValue) {
                                                  setState(() {
                                                    _selectedTravller =
                                                        newValue;
                                                  });
                                                },
                                                items: _travller.map((people) {
                                                  return DropdownMenuItem(
                                                    child: new Text(people,
                                                        style: TextStyle(
                                                            fontSize: 12.0,
                                                            color:
                                                                Colors.grey)),
                                                    value: people,
                                                  );
                                                }).toList(),
                                              ),
                                            ]),
                                      ),
                                    ],
                                  )),
                            ],
                          )),
                      Padding(
                        padding: EdgeInsets.only(top: 100),
                        child: Center(
                          child: Container(
                            width: MediaQuery.of(context).size.width / 5,
                            height: 80,
                            color: Color(0xffff2542),
                            child: ListView(
                                // padding: const EdgeInsets.all(8),
                                children: <Widget>[
                                  Padding(
                                    padding: EdgeInsets.only(
                                        top: 2, right: 2, left: 2, bottom: 10),
                                    child: Container(
                                      width:
                                          MediaQuery.of(context).size.width / 3,
                                      height: 38,
                                      color: Colors.white,
                                      child: Center(
                                        child: Text(
                                          "\$960",
                                          style: TextStyle(
                                            color: Color(0xffff2542),
                                            fontSize: 18.0,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Center(
                                    child: Text(
                                      "Let's Go",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 18.0,
                                      ),
                                    ),
                                  ),
                                ]),
                          ),
                        ),
                      ),
                    ],
                  )),
            ),

            //*********FOOTER******* */
            Container(
                width: MediaQuery.of(context).size.width,
                height: 50,
                // color: Colors.blue,
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                          // color: Colors.orange,
                          child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(width: 30),
                          Container(
                            child: ImageIcon(AssetImage('icons/equalizer.png'),
                                size: 15.0),
                          ),
                          SizedBox(width: 20),
                          Container(
                            child: Text(
                              "More Settings",
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 14.0,
                              ),
                            ),
                          ),
                        ],
                      )),
                      Container(
                          // color: Colors.blue,
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                            SizedBox(width: 10),
                            Divider(),
                            SizedBox(width: 10),
                            Container(
                              child: Text(
                                "Follow Us",
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 14.0,
                                ),
                              ),
                            ),
                            SizedBox(width: 10),
                            Container(
                              width: 70,
                              child: Divider(),
                            ),
                            SizedBox(width: 10),
                            Container(
                                child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                  ImageIcon(
                                      AssetImage('icons/instagramred.png'),
                                      size: 15.0),
                                  SizedBox(width: 10),
                                  ImageIcon(AssetImage('icons/facebook.png'),
                                      size: 15.0),
                                  SizedBox(width: 10),
                                  ImageIcon(AssetImage('icons/twitter.png'),
                                      size: 15.0),
                                  SizedBox(width: 30),
                                ])),
                          ])),
                    ])),
          ],
        ),
      ),
    );
    return scaffold;
  }
}
