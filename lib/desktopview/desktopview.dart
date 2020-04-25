import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:traveller/tours/alpstein.dart';
import 'package:traveller/tours/iceland.dart';
import 'package:traveller/tours/islands.dart';

class DesktopView extends StatefulWidget {
  DesktopView({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _DesktopViewState createState() => _DesktopViewState();
}

class _DesktopViewState extends State<DesktopView> {
  PageController _controller = PageController(
    initialPage: 0,
  );

  PageController _pagecontroller = PageController(
    initialPage: 0,
  );
  bool visibilityObs = false;

  void _changed(bool visibility, String field) {
    setState(() {
      if (field == "obs") {
        visibilityObs = visibility;
      }
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    _pagecontroller.dispose();
    super.dispose();
  }

  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  String languageValue = 'En';
  String currencyValue = 'USD';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: _scaffoldKey,
        drawer: Drawer(
            child: Container(
          height: MediaQuery.of(context).size.height,
          color: Colors.black,
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                new Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        icon: Icon(Icons.search, color: Colors.white),
                        onPressed: null,
                      ),
                      IconButton(
                        icon: Icon(Icons.close, color: Colors.white),
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                      ),
                    ],
                  ),
                ),
                new Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      new ListTile(
                          title: Center(
                              child: AutoSizeText(
                            'Home',
                            style:
                                TextStyle(fontSize: 18.0, color: Colors.white),
                            maxLines: 1,
                          )),
                          onTap: () {
                            Navigator.of(context).pop();
                            // Navigator.of(context).push(new MaterialPageRoute(
                            //     builder: (BuildContext context) => null));
                          }),
                      new ListTile(
                          title: Center(
                              child: AutoSizeText(
                            'Countries',
                            style:
                                TextStyle(fontSize: 18.0, color: Colors.white),
                            maxLines: 1,
                          )),
                          onTap: () {
                            Navigator.of(context).pop();
                            // Navigator.of(context).push(new MaterialPageRoute(
                            //     builder: (BuildContext context) => null));
                          }),
                      new ListTile(
                          title: Center(
                              child: AutoSizeText(
                            'About Us',
                            style:
                                TextStyle(fontSize: 18.0, color: Colors.white),
                            maxLines: 1,
                          )),
                          onTap: () {
                            Navigator.of(context).pop();
                            // Navigator.of(context).push(new MaterialPageRoute(
                            //     builder: (BuildContext context) => null));
                          }),
                      new ListTile(
                          title: Center(
                              child: AutoSizeText(
                            'Services',
                            style:
                                TextStyle(fontSize: 18.0, color: Colors.white),
                            maxLines: 1,
                          )),
                          onTap: () {
                            Navigator.of(context).pop();
                            // Navigator.of(context).push(new MaterialPageRoute(
                            //     builder: (BuildContext context) => null));
                          }),
                      new ListTile(
                          title: Center(
                              child: AutoSizeText(
                            'Contact Us',
                            style:
                                TextStyle(fontSize: 18.0, color: Colors.white),
                            maxLines: 1,
                          )),
                          onTap: () {
                            Navigator.of(context).pop();
                            // Navigator.of(context).push(new MaterialPageRoute(
                            //     builder: (BuildContext context) => null));
                          }),
                      new Divider(),
                    ],
                  ),
                ),
                new Padding(
                    padding: EdgeInsets.only(bottom: 10),
                    child: Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          // SizedBox(height: MediaQuery.of(context).size.height),
                          FlatButton(
                            onPressed: () {},
                            child: AutoSizeText(
                              'Hot Tours',
                              style: TextStyle(
                                  fontSize: 14.0, color: Colors.white),
                              maxLines: 1,
                            ),
                          ),
                          SizedBox(width: 10),
                          FlatButton(
                            onPressed: () {},
                            child: AutoSizeText(
                              'All Tours',
                              style: TextStyle(
                                  fontSize: 14.0, color: Colors.white),
                              maxLines: 1,
                            ),
                          ),
                        ],
                      ),
                    )),
              ]),
        )),
        appBar: PreferredSize(
            preferredSize: Size.fromHeight(60), // here the desired height
            child: AppBar(
              backgroundColor: Colors.white,
              elevation: 0.0,
              title: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  GestureDetector(
                      onTap: () => _scaffoldKey.currentState.openDrawer(),
                      child:
                          ImageIcon(AssetImage('icons/equal.png'), size: 25.0)),
                  SizedBox(width: 10),
                  FlatButton(
                    onPressed: () {},
                    child: AutoSizeText(
                      'Hot Tours',
                      style: TextStyle(fontSize: 14.0),
                      maxLines: 1,
                    ),
                  ),
                  SizedBox(width: 10),
                  FlatButton(
                    onPressed: () {},
                    child: AutoSizeText(
                      'All Tours',
                      style: TextStyle(fontSize: 14.0),
                      maxLines: 1,
                    ),
                  ),
                  Expanded(
                    child: Center(
                      child: AutoSizeText(
                        'touristic',
                        style: TextStyle(
                            fontSize: 18.0,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                        maxLines: 1,
                      ),
                    ),
                  ),
                ],
              ),
              automaticallyImplyLeading: false,
              centerTitle: true,
              actions: <Widget>[
                Container(
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        DropdownButton<String>(
                          value: currencyValue,
                          icon: Icon(Icons.keyboard_arrow_down),
                          iconSize: 16,
                          style: TextStyle(color: Colors.black, fontSize: 14.0),
                          underline: Container(
                            height: 2,
                            color: Colors.white,
                          ),
                          onChanged: (String newValue) {
                            setState(() {
                              currencyValue = newValue;
                            });
                          },
                          items: <String>['USD', 'EU', 'INR', 'RU']
                              .map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(
                                value,
                                style: TextStyle(
                                    fontSize: 14.0,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                            );
                          }).toList(),
                        ),
                        SizedBox(width: 50),
                        DropdownButton<String>(
                          value: languageValue,
                          icon: Icon(Icons.keyboard_arrow_down),
                          iconSize: 16,
                          style: TextStyle(color: Colors.black, fontSize: 14.0),
                          underline: Container(
                            height: 2,
                            color: Colors.white,
                          ),
                          onChanged: (String newValue) {
                            setState(() {
                              languageValue = newValue;
                            });
                          },
                          items: <String>['En', 'Fr', 'Hi', 'Ru']
                              .map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(
                                value,
                                style: TextStyle(
                                    fontSize: 14.0,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                            );
                          }).toList(),
                        ),
                      ]),
                ),
                SizedBox(width: 20),
              ],
            )),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              Container(
                  height: MediaQuery.of(context).size.height -
                      (MediaQuery.of(context).size.height / 10) -
                      60,
                  width: MediaQuery.of(context).size.width,
                  child: PageView(
                    controller: _controller,
                    //  onPageChanged: _onPageViewChange,

                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height,
                        width: MediaQuery.of(context).size.width,
                        child: Stack(
                          children: <Widget>[
                            // Max Size
                            Container(
                              child: Image.network(
                                'https://daybyme.com/uploads/items/alpstein_switzerland-bba7j25jcu.jpg',
                                fit: BoxFit.fill,
                                height: double.infinity,
                                width: double.infinity,
                                alignment: Alignment.center,
                              ),
                            ),
                            Align(
                              alignment: Alignment.bottomLeft,
                              child: Container(
                                // color: Colors.blue,
                                height: 200.0,
                                width: MediaQuery.of(context).size.width / 3,
                                child: Padding(
                                  padding: EdgeInsets.only(left: 10),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            // crossAxisAlignment: CrossAxisAlignment.stretch,
                                            children: <Widget>[
                                              ImageIcon(
                                                  AssetImage('icons/sun2.png'),
                                                  size: 25.0),
                                              // Icon(Icons.cloud_queue, size: 22.0, color:Colors.white,),
                                              SizedBox(width: 5),
                                              AutoSizeText(
                                                '23°C',
                                                style: TextStyle(
                                                    fontSize: 16.0,
                                                    color: Colors.white),
                                                maxLines: 1,
                                              ),
                                            ]),
                                      ),
                                      SizedBox(height: 10),
                                      Container(
                                        // color: Colors.blue,
                                        child: AutoSizeText(
                                          'Alpstein',
                                          style: TextStyle(
                                              fontSize: 36.0,
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold),
                                          maxLines: 1,
                                        ),
                                      ),
                                      SizedBox(height: 10),
                                      Container(
                                        // color: Colors.purple,
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            // crossAxisAlignment: CrossAxisAlignment.stretch,
                                            children: <Widget>[
                                              Icon(
                                                Icons.location_on,
                                                size: 16.0,
                                                color: Colors.white,
                                              ),
                                              SizedBox(width: 10),
                                              AutoSizeText(
                                                'Switzerland',
                                                style: TextStyle(
                                                    fontSize: 16.0,
                                                    color: Colors.white),
                                                maxLines: 1,
                                              ),
                                            ]),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.bottomRight,
                              child: Container(
                                height: 280.0,
                                width: 220.0,
                                child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Container(
                                        child: FlatButton(
                                          onPressed: () => {
                                            _controller.animateToPage(
                                                (_controller.page - 1).toInt(),
                                                duration:
                                                    Duration(milliseconds: 300),
                                                curve: Curves.easeIn),

                                            // if (visibilityObs = true)
                                            //   {
                                            //     _controller.animateToPage(
                                            //         (_controller.page - 1)
                                            //             .toInt(),
                                            //         duration: Duration(
                                            //             milliseconds: 300),
                                            //         curve: Curves.easeIn),
                                            //   }
                                            // else
                                            //   {
                                            //     _controller.animateToPage(
                                            //         (_controller.page - 1)
                                            //             .toInt(),
                                            //         duration: Duration(
                                            //             milliseconds: 300),
                                            //         curve: Curves.easeIn),
                                            //     _pagecontroller.animateToPage(
                                            //         (_pagecontroller.page - 1)
                                            //             .toInt(),
                                            //         duration: Duration(
                                            //             milliseconds: 300),
                                            //         curve: Curves.easeIn),
                                            //   }
                                          },
                                          color: Colors.transparent,
                                          child: ImageIcon(
                                              AssetImage('icons/previous.png'),
                                              size: 30.0),
                                          shape: CircleBorder(),
                                        ),
                                      ),
                                      Container(
                                          child: RichText(
                                        text: TextSpan(
                                          text: '01',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 20,
                                              color: Colors.white),
                                          children: <TextSpan>[
                                            TextSpan(
                                                text: '/',
                                                style: TextStyle(
                                                    fontSize: 14,
                                                    color: Colors.white)),
                                            TextSpan(
                                                text: '03',
                                                style: TextStyle(
                                                    fontSize: 14,
                                                    color: Colors.white)),
                                          ],
                                        ),
                                      )),
                                      Container(
                                        child: FlatButton(
                                          onPressed: () => {
                                            _controller.animateToPage(
                                                (_controller.page + 1).toInt(),
                                                duration:
                                                    Duration(milliseconds: 300),
                                                curve: Curves.easeIn),
                                            // if (visibilityObs = true)
                                            //   {
                                            //     _pagecontroller.animateToPage(
                                            //         (_pagecontroller.page + 1)
                                            //             .toInt(),
                                            //         duration: Duration(
                                            //             milliseconds: 300),
                                            //         curve: Curves.easeIn),
                                            //   }
                                            // else
                                            //   {
                                            //     _controller.animateToPage(
                                            //         (_controller.page + 1)
                                            //             .toInt(),
                                            //         duration: Duration(
                                            //             milliseconds: 300),
                                            //         curve: Curves.easeIn),
                                            //     _pagecontroller.animateToPage(
                                            //         (_pagecontroller.page + 1)
                                            //             .toInt(),
                                            //         duration: Duration(
                                            //             milliseconds: 300),
                                            //         curve: Curves.easeIn),
                                            //   }
                                          },
                                          color: Colors.transparent,
                                          child: ImageIcon(
                                              AssetImage('icons/next.png'),
                                              size: 30.0),
                                          shape: CircleBorder(),
                                        ),
                                      ),
                                    ]),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height,
                        width: MediaQuery.of(context).size.width,
                        child: Stack(
                          children: <Widget>[
                            // Max Size
                            Container(
                              child: Image.network(
                                'https://mir-s3-cdn-cf.behance.net/project_modules/max_1200/e7512258139783.5a7623eed6564.jpg',
                                fit: BoxFit.fill,
                                height: double.infinity,
                                width: double.infinity,
                                alignment: Alignment.center,
                              ),
                            ),
                            Align(
                              alignment: Alignment.bottomLeft,
                              child: Container(
                                // color: Colors.blue,
                                height: 200.0,
                                width: 220,
                                child: Padding(
                                  padding: EdgeInsets.only(left: 10),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            // crossAxisAlignment: CrossAxisAlignment.stretch,
                                            children: <Widget>[
                                              Icon(
                                                Icons.cloud_queue,
                                                size: 22.0,
                                                color: Colors.white,
                                              ),
                                              SizedBox(width: 10),
                                              AutoSizeText(
                                                '19°C',
                                                style: TextStyle(
                                                    fontSize: 16.0,
                                                    color: Colors.white,
                                                    fontWeight:
                                                        FontWeight.bold),
                                                maxLines: 1,
                                              ),
                                            ]),
                                      ),
                                      SizedBox(height: 10),
                                      Container(
                                        // color: Colors.blue,
                                        child: AutoSizeText(
                                          'Dreamscapes of Iceland',
                                          style: TextStyle(
                                              fontSize: 28.0,
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold),
                                          maxLines: 1,
                                        ),
                                      ),
                                      SizedBox(height: 10),
                                      Container(
                                        // color: Colors.purple,
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            // crossAxisAlignment: CrossAxisAlignment.stretch,
                                            children: <Widget>[
                                              Icon(
                                                Icons.location_on,
                                                size: 16.0,
                                                color: Colors.white,
                                              ),
                                              SizedBox(width: 10),
                                              AutoSizeText(
                                                'Iceland',
                                                style: TextStyle(
                                                    fontSize: 16.0,
                                                    color: Colors.white),
                                                maxLines: 1,
                                              ),
                                            ]),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.bottomRight,
                              child: Container(
                                height: 280.0,
                                width: 220.0,
                                child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Container(
                                        child: FlatButton(
                                          onPressed: () => {
                                            _controller.animateToPage(
                                                (_controller.page - 1).toInt(),
                                                duration:
                                                    Duration(milliseconds: 300),
                                                curve: Curves.easeIn),
                                            // if (visibilityObs = false)
                                            //   {
                                            //     _controller.animateToPage(
                                            //         (_controller.page - 1)
                                            //             .toInt(),
                                            //         duration: Duration(
                                            //             milliseconds: 300),
                                            //         curve: Curves.easeIn),
                                            //   }
                                            // else
                                            //   {
                                            //     _controller.animateToPage(
                                            //         (_controller.page - 1)
                                            //             .toInt(),
                                            //         duration: Duration(
                                            //             milliseconds: 300),
                                            //         curve: Curves.easeIn),
                                            //     _pagecontroller.animateToPage(
                                            //         (_pagecontroller.page - 1)
                                            //             .toInt(),
                                            //         duration: Duration(
                                            //             milliseconds: 300),
                                            //         curve: Curves.easeIn),
                                            //   }
                                          },
                                          color: Colors.transparent,
                                          child: ImageIcon(
                                              AssetImage('icons/previous.png'),
                                              size: 30.0),
                                          shape: CircleBorder(),
                                        ),
                                      ),
                                      Container(
                                          child: RichText(
                                        text: TextSpan(
                                          text: '02',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 20,
                                              color: Colors.white),
                                          children: <TextSpan>[
                                            TextSpan(
                                                text: '/',
                                                style: TextStyle(
                                                    fontSize: 14,
                                                    color: Colors.white)),
                                            TextSpan(
                                                text: '03',
                                                style: TextStyle(
                                                    fontSize: 14,
                                                    color: Colors.white)),
                                          ],
                                        ),
                                      )),
                                      Container(
                                        child: FlatButton(
                                          onPressed: () => {
                                            _controller.animateToPage(
                                                (_controller.page + 1).toInt(),
                                                duration:
                                                    Duration(milliseconds: 300),
                                                curve: Curves.easeIn),
                                            // if (visibilityObs = false)
                                            //   {
                                            //     _pagecontroller.animateToPage(
                                            //         (_pagecontroller.page + 1)
                                            //             .toInt(),
                                            //         duration: Duration(
                                            //             milliseconds: 300),
                                            //         curve: Curves.easeIn),
                                            //   }
                                            // else
                                            //   {
                                            //     _controller.animateToPage(
                                            //         (_controller.page + 1)
                                            //             .toInt(),
                                            //         duration: Duration(
                                            //             milliseconds: 300),
                                            //         curve: Curves.easeIn),
                                            //     _pagecontroller.animateToPage(
                                            //         (_pagecontroller.page + 1)
                                            //             .toInt(),
                                            //         duration: Duration(
                                            //             milliseconds: 300),
                                            //         curve: Curves.easeIn),
                                            //   }
                                          },
                                          color: Colors.transparent,
                                          child: ImageIcon(
                                              AssetImage('icons/next.png'),
                                              size: 30.0),
                                          shape: CircleBorder(),
                                        ),
                                      ),
                                    ]),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height,
                        width: MediaQuery.of(context).size.width,
                        child: Stack(
                          children: <Widget>[
                            // Max Size
                            Container(
                              child: Image.network(
                                'https://cdn2.wanderlust.co.uk/media/1023/inner-hebrides.jpg?anchor=center&mode=crop&width=1200&height=0&rnd=132037015330000000',
                                fit: BoxFit.fill,
                                height: double.infinity,
                                width: double.infinity,
                                alignment: Alignment.center,
                              ),
                            ),
                            Align(
                              alignment: Alignment.bottomLeft,
                              child: Container(
                                // color: Colors.blue,
                                height: 200.0,
                                width: 220,
                                child: Padding(
                                  padding: EdgeInsets.only(left: 10),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            // crossAxisAlignment: CrossAxisAlignment.stretch,
                                            children: <Widget>[
                                              Icon(
                                                Icons.cloud_queue,
                                                size: 22.0,
                                                color: Colors.white,
                                              ),
                                              SizedBox(width: 10),
                                              AutoSizeText(
                                                '10°C',
                                                style: TextStyle(
                                                    fontSize: 16.0,
                                                    color: Colors.white,
                                                    fontWeight:
                                                        FontWeight.bold),
                                                maxLines: 1,
                                              ),
                                            ]),
                                      ),
                                      SizedBox(height: 10),
                                      Container(
                                        // color: Colors.blue,
                                        child: AutoSizeText(
                                          'Herbrides Islands',
                                          style: TextStyle(
                                              fontSize: 36.0,
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold),
                                          maxLines: 1,
                                        ),
                                      ),
                                      SizedBox(height: 10),
                                      Container(
                                        // color: Colors.purple,
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            // crossAxisAlignment: CrossAxisAlignment.stretch,
                                            children: <Widget>[
                                              Icon(
                                                Icons.location_on,
                                                size: 16.0,
                                                color: Colors.white,
                                              ),
                                              SizedBox(width: 10),
                                              AutoSizeText(
                                                'Scotland',
                                                style: TextStyle(
                                                    fontSize: 16.0,
                                                    color: Colors.white),
                                                maxLines: 1,
                                              ),
                                            ]),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.bottomRight,
                              child: Container(
                                height: 280.0,
                                width: 220.0,
                                child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Container(
                                        child: FlatButton(
                                          onPressed: () => {
                                            _controller.animateToPage(
                                                (_controller.page - 1).toInt(),
                                                duration:
                                                    Duration(milliseconds: 300),
                                                curve: Curves.easeIn),
                                            // if (visibilityObs = false)
                                            //   {
                                            //     _controller.animateToPage(
                                            //         (_controller.page - 1)
                                            //             .toInt(),
                                            //         duration: Duration(
                                            //             milliseconds: 300),
                                            //         curve: Curves.easeIn),
                                            //   }
                                            // else
                                            //   {
                                            //     _controller.animateToPage(
                                            //         (_controller.page - 1)
                                            //             .toInt(),
                                            //         duration: Duration(
                                            //             milliseconds: 300),
                                            //         curve: Curves.easeIn),
                                            //     _pagecontroller.animateToPage(
                                            //         (_pagecontroller.page - 1)
                                            //             .toInt(),
                                            //         duration: Duration(
                                            //             milliseconds: 300),
                                            //         curve: Curves.easeIn),
                                            //   }
                                          },
                                          color: Colors.transparent,
                                          child: ImageIcon(
                                              AssetImage('icons/previous.png'),
                                              size: 30.0),
                                          shape: CircleBorder(),
                                        ),
                                      ),
                                      Container(
                                          child: RichText(
                                        text: TextSpan(
                                          text: '03',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 20,
                                              color: Colors.white),
                                          children: <TextSpan>[
                                            TextSpan(
                                                text: '/',
                                                style: TextStyle(
                                                    fontSize: 14,
                                                    color: Colors.white)),
                                            TextSpan(
                                                text: '03',
                                                style: TextStyle(
                                                    fontSize: 14,
                                                    color: Colors.white)),
                                          ],
                                        ),
                                      )),
                                      Container(
                                        child: FlatButton(
                                          onPressed: () => {
                                            _controller.animateToPage(
                                                (_controller.page + 1).toInt(),
                                                duration:
                                                    Duration(milliseconds: 300),
                                                curve: Curves.easeIn),
                                            // if (visibilityObs = false)
                                            //   {
                                            //     _pagecontroller.animateToPage(
                                            //         (_pagecontroller.page + 1)
                                            //             .toInt(),
                                            //         duration: Duration(
                                            //             milliseconds: 300),
                                            //         curve: Curves.easeIn),
                                            //   }
                                            // else
                                            //   {
                                            //     _controller.animateToPage(
                                            //         (_controller.page + 1)
                                            //             .toInt(),
                                            //         duration: Duration(
                                            //             milliseconds: 300),
                                            //         curve: Curves.easeIn),
                                            //     _pagecontroller.animateToPage(
                                            //         (_pagecontroller.page + 1)
                                            //             .toInt(),
                                            //         duration: Duration(
                                            //             milliseconds: 300),
                                            //         curve: Curves.easeIn),
                                            //   }
                                          },
                                          color: Colors.transparent,
                                          child: ImageIcon(
                                              AssetImage('icons/next.png'),
                                              size: 30.0),
                                          shape: CircleBorder(),
                                        ),
                                      ),
                                    ]),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  )),
              Container(
                child: Container(
                  height: MediaQuery.of(context).size.height / 10,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      visibilityObs
                          ? Container(
                              height: MediaQuery.of(context).size.height,
                              width: MediaQuery.of(context).size.width / 3,
                              color: Colors.white,
                              child: FlatButton(
                                  onPressed: () {
                                    visibilityObs
                                        ? Null
                                        : _changed(false, "obs");
                                  },
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        IconButton(
                                          color: Colors.grey[400],
                                          icon: const Icon(Icons.close,
                                              size: 22.0, color: Colors.black),
                                          onPressed: () {
                                            _changed(false, "obs");
                                          },
                                        ),
                                        AutoSizeText(
                                          'Close Details',
                                          style: TextStyle(
                                              fontSize: 16.0,
                                              decoration:
                                                  TextDecoration.underline,
                                              color: Colors.black),
                                          maxLines: 1,
                                        ),
                                      ])),
                            )
                          : Container(
                              height: MediaQuery.of(context).size.height,
                              width: MediaQuery.of(context).size.width / 3,
                              color: Colors.white,
                              child: FlatButton(
                                onPressed: () {
                                  visibilityObs ? Null : _changed(true, "obs");
                                },
                                child: AutoSizeText(
                                  'Tour Details',
                                  style: TextStyle(
                                    fontSize: 16.0,
                                    decoration: TextDecoration.underline,
                                    color: Colors.black,
                                  ),
                                  maxLines: 1,
                                ),
                              )),
                      Container(
                          height: MediaQuery.of(context).size.height,
                          width: MediaQuery.of(context).size.width / 3,
                          color: Color(0xffff2542),
                          child: FlatButton(
                            onPressed: () {},
                            child: AutoSizeText(
                              'Book Now',
                              style: TextStyle(
                                  fontSize: 16.0,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                              maxLines: 1,
                            ),
                          )),
                      Container(
                        height: MediaQuery.of(context).size.height,
                        width: MediaQuery.of(context).size.width / 3,
                        color: Colors.white,
                        child: FlatButton(
                          onPressed: () {},
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width / 4.8,
                                  child: AutoSizeText(
                                    'Go To Switzerland Tour',
                                    style: TextStyle(
                                        fontSize: 16.0,
                                        fontWeight: FontWeight.bold),
                                    maxLines: 1,
                                  )),
                              Icon(Icons.arrow_forward,
                                  size: 25, color: Colors.black),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              new Container(
                  child: new Column(
                children: <Widget>[
                  visibilityObs
                      ? new Column(
                          children: <Widget>[
                            new Container(
                              height: MediaQuery.of(context).size.height,
                              width: MediaQuery.of(context).size.width,
                              child: PageView(
                                  controller: _pagecontroller,
                                  children: [
                                    Container(
                                      child: AlpsteinTour(),
                                    ),
                                    Container(
                                      child: IcelandTour(),
                                    ),
                                    Container(
                                      child: IslandsTour(),
                                    ),
                                  ]),
                            ),
                          ],
                        )
                      : new Container(),
                ],
              )),
            ],
          ),
        ));
  }
}
