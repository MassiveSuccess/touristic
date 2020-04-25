import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class Item {
  const Item(this.name);
  final String name;
}

class AlpsteinTour extends StatefulWidget {
  AlpsteinTour({Key key}) : super(key: key);

  @override
  _AlpsteinTourState createState() => _AlpsteinTourState();
}

class _AlpsteinTourState extends State<AlpsteinTour> {
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
                            'https://s29081.pcdn.co/wp-content/uploads/2019/10/three-lakes-hike-alpstein-appenzell-05191-1080x635.jpg.optimal.jpg',
                            fit: BoxFit.cover,
                            height: MediaQuery.of(context).size.height / 2,
                            width: MediaQuery.of(context).size.width / 2,
                            alignment: Alignment.center,
                          ),
                        ),
                        Container(
                          // color: Colors.orange,
                          child: Image.network(
                            'https://mountainmoments.com/wp-content/uploads/2019/07/mountainmoments-DSC_1603-1030x688.jpg?189db0&189db0',
                            fit: BoxFit.cover,
                            height: MediaQuery.of(context).size.height / 2,
                            width: MediaQuery.of(context).size.width / 2,
                            alignment: Alignment.center,
                          ),
                        ),
                        Container(
                          // color: Colors.orange,
                          child: Image.network(
                            'https://live.staticflickr.com/4731/38999683082_2079147bc7_b.jpg',
                            fit: BoxFit.cover,
                            height: MediaQuery.of(context).size.height / 2,
                            width: MediaQuery.of(context).size.width / 2,
                            alignment: Alignment.center,
                          ),
                        ),
                        Container(
                          // color: Colors.blue,
                          child: Image.network(
                            'https://upload.wikimedia.org/wikipedia/commons/9/93/Alpstein.jpg',
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
                                    'Alpstein',
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
                                    'Elevation',
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
                                    '	1,895 metres',
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
                                  'Peak',
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
                                  'Säntis',
                                  style: TextStyle(
                                      fontSize: 16.0, color: Colors.black),
                                  maxLines: 1,
                                ),
                              ),
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
                                    'Three mountain chains, 84 kilometres and 5166 metres altitude difference. This is the «Königsroute» in the Alpstein massif, which takes you to popular sights and insider tips on an outstandingly picturesque trail through the Alpstein.New, sensational alpine panoramas greet you around almost every corner. And you don’t need to carry huge amounts of provisions as the Alpstein is dotted with 27 mountain inns. Here you’ll find tempting authentic regional specialties, prepared with genuinely fresh ingredients from the Appenzellerland. Many hosts also offer more exclusive dishes for gourmet hikers.This 84 km original trail is suitable not just for ambitious, high-performance athletes, but also for more leisurely walkers. Most alpine inns also offer comfortable accommodation. This means you can plan your own tailor-made route and, if desired, leave out sections or bypass them with a cable car ride. Enjoy the pure romance of the region’s traditional alpine inns!',
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
                                    'The King’s Tour leads in a wide arc around the Alpstein massif. Starting point is Brühlisau cable car parking. From here to the Hohe Kasten and along the easy but steep ridge path to the Gasthaus Stauberen. Continue over the photogenic Saxer gap.Here over the Gasthaus Bollenwees to the Widderalpstock to the Rotsteinpass. Further over the exposed but excellently federally insured Lisengrat to Säntis.Over the Rosegg (mostly over snowfields in early summer) into the Öhrligrueb, and further over the Lötziälplisattel to the Schäfler. From here via Ebenalp and Gasthaus Äscher to Seealpsee and Wasserauen railway station.',
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
                                    'The Alpstein massif is not stingy with its attractions: steep granite slabs, deeply cut valleys, outstanding views of Lake Constance and the picturesque Appenzellerland and the Rhine Valley and picturesque mountain lakes.If the Alpstein massif didn’t exist, it would have to be invented.Many people find it particularly beautiful that the region is well connected by mountain railways and also attracts many hikers on weekends.In contrast to many ski regions in Austria, nature here is still quite natural: no ski slope corridors that destroy the vegetation, no après-ski temple, no multi-storey car park, no snow cannon armies, storage ponds and other sins of alpine ski tourism.The inclined East Alpine hiker will immediately notice that the cultural area of alpine pasture management is still cultivated and cared for here. Of course, without tourism and state subsidies the mountain inns and alpine pastures would have an extremely difficult time, but here the human use of nature fits into a relatively harmonious picture. Yes, sometimes even in a very kitschy picture.Every second corner, you just wait for Heidi to chase the goatpetre. Apropos goats: half a litre of goat milk is cheaper on most alpine pastures than half a litre of water on some hotspots. 13 sFr for a bottle of still water are to be berappen in some places. Survival with water and dry bread quickly becomes a luxury.Here you will find an overview of the mountain guesthouses in Alpstein. You can find the Alpenvereinshütten at the SAC.',
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
