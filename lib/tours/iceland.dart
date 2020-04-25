import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class Item {
  const Item(this.name);
  final String name;
}

class IcelandTour extends StatefulWidget {
  IcelandTour({Key key}) : super(key: key);

  @override
  _IcelandTourState createState() => _IcelandTourState();
}

class _IcelandTourState extends State<IcelandTour> {
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
                            'https://www.nationalgeographic.com/content/dam/travel/Guide-Pages/europe/Iceland/iceland_NationalGeographic_2168279.adapt.1900.1.jpg',
                            fit: BoxFit.cover,
                            height: MediaQuery.of(context).size.height / 2,
                            width: MediaQuery.of(context).size.width / 2,
                            alignment: Alignment.center,
                          ),
                        ),
                        Container(
                          // color: Colors.blue,
                          child: Image.network(
                            'https://authentic-scandinavia.com/destinations/iceland-tours/_/image/6bf8c4bb-ef3d-4b56-9c47-c2e3ffe2cd10:302556625ede781ddfa065cb1365d3d83577ecf8/width-1140/Iceland_-_Blue_Lagoon_1_-_Iceland.is.jpg',
                            fit: BoxFit.cover,
                            height: MediaQuery.of(context).size.height / 2,
                            width: MediaQuery.of(context).size.width / 2,
                            alignment: Alignment.center,
                          ),
                        ),
                        Container(
                          // color: Colors.blue,
                          child: Image.network(
                            'https://www.tripsavvy.com/thmb/vwBB4EPR1xvRnGxPTeSZvLpveXc=/2120x1414/filters:fill(auto,1)/Iceland-village-northern-lights-5c1f0c8446e0fb0001fdc938.jpg',
                            fit: BoxFit.cover,
                            height: MediaQuery.of(context).size.height / 2,
                            width: MediaQuery.of(context).size.width / 2,
                            alignment: Alignment.center,
                          ),
                        ),
                        Container(
                          // color: Colors.blue,
                          child: Image.network(
                            'https://www.extremeiceland.is/media/8491/diamond-beach-iceland-11.jpg?anchor=center&amp;mode=crop&amp;quality=80&amp;width=666&amp;height=446&amp;rnd=131849585110000000',
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
                                    'Iceland',
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
                                    'Country Size',
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
                                    '103,000 sq.km',
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
                                  'Icelandic Króna (ISK)',
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
                                    'Arrival in Iceland – The world’s northernmost capital city Once you have landed at Keflavik Airport in Iceland, please pick up your luggage and head through customs. Collect your rental car at the airport, make sure you receive a tablet with protective case and chargers, and proceed to your hotel in Reykjavik. The rest of the day is yours to rest and use at your own leisure.',
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
                                    'Start with the UNESCO-listed Thingvellir National Park, famous for its history and geological wonders. Continue to Geysir Hot Spring Area, with its collection of bubbling pools and spouting geysers. Then drive onwards to the majestic, two-tiered Gullfoss (Golden Falls). Bathe in the Secret Lagoon or Laugarvatn Fontana Baths, or why not try horseback riding? Afterwards, take a pit stop at Fridheimar greenhouses to see how food is grown in Iceland and sample the fresh local cuisine.',
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
                                    'Geothermal Activity and the World Famous Blue Lagoon Its your last day and there’s still so much to see and do. It’s entirely up to you!Drive to the Reykjanes Peninsula and the famous Blue Lagoon for a relaxing dip in the pleasantly warm geothermal waters, rich in silica and minerals that are great for the skin. We recommend you book your entrance to the Blue Lagoon online well in advance.Explore the Mars-like landscapes of Reykjanes Peninsula – a UNESCO Global Geopark – and its fishing villages, lighthouse and the colorful geothermal area of Krysuvik. Or simply head to your hotel, relax or explore Reykjavik, the northernmost capital in the world.Between the months of September and October, we recommend a northern lights tour by boat. From May through July, why not try an ATV ride under the midnight sun?',
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
