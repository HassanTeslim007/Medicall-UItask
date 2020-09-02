import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

void main() => runApp(MaterialApp(
      title: 'Medicall',
// Start the app with the "/" named route. In this case, the app starts
// on the FirstScreen widget.
      initialRoute: '/',
      routes: {
// When navigating to the "/" route, build the FirstScreen widget.
        '/': (context) => task6(),
// When navigating to the "/second" route, build the SecondScreen widget.
        '/second': (context) => second_screen()
      },
    ));

class task6 extends StatefulWidget {
  @override
  _task6State createState() => _task6State();
}

class _task6State extends State<task6> {
  int _current = 0;

  List<T> map<T>(List list, Function handler) {
    List<T> result = [];
    for (var i = 0; i > list.length; i++) {
      result.add(handler(i, list[i]));
    }
    return result;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Stack(
        children: <Widget>[
          Container(
            height: 500,
            width: 500,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/background.jpeg"),
                    fit: BoxFit.cover)),
            child: Padding(
              padding: const EdgeInsets.only(top: 28.0, left: 20),
              child: Text(
                "Welcome",
                style: TextStyle(
                    fontSize: 40,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 465, bottom: 30),
            height: 350,
            width: 500,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50.0),
                    topRight: Radius.circular(50.0)),
                color: Colors.white),
            child: Padding(
              padding: const EdgeInsets.only(bottom: 28.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(top: 18.0),
                    child: CarouselSlider(
                      height: 250.0,
                      onPageChanged: (index) {
                        setState(() {
                          _current = index;
                          print("${_current}");
                        });
                      },
                      items: <Widget>[
                        Container(
                          width: 400,
                          margin: EdgeInsets.all(10.0),
                          decoration: BoxDecoration(
                              color: Colors.transparent,
                              borderRadius: BorderRadius.circular(20.0)),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 15.0, top: 25),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text("Get The Best Doctor",
                                    style: TextStyle(
                                        fontSize: 35,
                                        fontWeight: FontWeight.bold)),
                                SizedBox(
                                  height: 20,
                                ),
                                Text(
                                  "Find Quality and Experienced Doctors \nto take care of your health and your family.\nEasy access anytime and anywhere,\nJust from your phone",
                                  style: TextStyle(
                                    fontSize: 18,
                                    wordSpacing: 2.0,
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text("Get Started",
                                    style: TextStyle(
                                        fontSize: 22,
                                        fontWeight: FontWeight.bold)),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          width: 400,
                          margin: EdgeInsets.all(10.0),
                          decoration: BoxDecoration(
                              color: Colors.transparent,
                              borderRadius: BorderRadius.circular(20.0)),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 15.0, top: 25),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text("Get The Best Advisers",
                                    style: TextStyle(
                                        fontSize: 35,
                                        fontWeight: FontWeight.bold)),
                                SizedBox(
                                  height: 20,
                                ),
                                Text(
                                  "Find Quality and Experienced Doctors \nto take care of your health and your family.\nEasy access anytime and anywhere,\nJust from your phone",
                                  style: TextStyle(
                                    fontSize: 18,
                                    wordSpacing: 2.0,
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text("Get Started",
                                    style: TextStyle(
                                        fontSize: 22,
                                        fontWeight: FontWeight.bold)),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          width: 400,
                          margin: EdgeInsets.all(10.0),
                          decoration: BoxDecoration(
                              color: Colors.transparent,
                              borderRadius: BorderRadius.circular(20.0)),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 15.0, top: 25),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text("Get The Best Therapist",
                                    style: TextStyle(
                                        fontSize: 35,
                                        fontWeight: FontWeight.bold)),
                                SizedBox(
                                  height: 20,
                                ),
                                Text(
                                  "Find Quality and Experienced Doctors \nto take care of your health and your family.\nEasy access anytime and anywhere,\nJust from your phone",
                                  style: TextStyle(
                                    fontSize: 18,
                                    wordSpacing: 2.0,
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text("Get Started",
                                    style: TextStyle(
                                        fontSize: 22,
                                        fontWeight: FontWeight.bold)),
                              ],
                            ),
                          ),
                        ),
                      ],
                      enableInfiniteScroll: true,
                      viewportFraction: .95,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 37.0, right: 50),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        DotsIndicator(
                          position: _current.toDouble(),
                          dotsCount: 3,
                          decorator: DotsDecorator(
                              size: const Size.square(7.0),
                              activeColor: Colors.blue,
                              activeSize: const Size(12.0, 12.0),
                              activeShape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15.0))),
                        ),
                        RaisedButton(
                          onPressed: () {
                            _current += 1;
                            {
                              // Navigate to the second screen using a named route.
                              Navigator.pushNamed(context, '/second');
                            }
                          },
                          child: Text(
                            "Next",
                            style:
                                TextStyle(color: Colors.white60, fontSize: 20),
                          ),
                          color: Colors.lightBlueAccent[400],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    ));
  }
}

class second_screen extends StatefulWidget {
  @override
  _second_screenState createState() => _second_screenState();
}

class _second_screenState extends State<second_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(top: 360),
            width: 500,
            height: 750,
            decoration: BoxDecoration(color: Colors.white),
            child: Padding(
              padding: const EdgeInsets.only(left: 10.0, top: 100),
              child: Column(
                children: <Widget>[
                  Text("Health Article and News",
                      style:
                          TextStyle(fontSize: 33, fontWeight: FontWeight.bold)),
                  Padding(
                    padding: const EdgeInsets.only(left: 33.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Text("Recommend",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold)),
                        SizedBox(
                          width: 140,
                        ),
                        Text("View All",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold)),
                        IconButton(
                            icon: Icon(Icons.arrow_forward_ios),
                            onPressed: () {})
                      ],
                    ),
                  ),
                  SingleChildScrollView(
                    child: Container(
                      height: 250,
                      width: 400,
                      child: SingleChildScrollView(
                        child: Column(
                          children: <Widget>[
                            Container(
                              width: 370,
                              height: 130,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage("assets/resource 4.jpeg"),
                                      fit: BoxFit.cover),
                                  borderRadius: BorderRadius.circular(20.0)),
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(left: 20, top: 100),
                                child: Text(
                                  "Corona Virus",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 21,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Container(
                              width: 370,
                              height: 130,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage("assets/resource 5.jpeg"),
                                      fit: BoxFit.cover),
                                  borderRadius: BorderRadius.circular(20.0)),
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(left: 20, top: 100),
                                child: Text(
                                  "Lithology",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 21,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Container(
                              width: 370,
                              height: 130,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage("assets/resource 3.jpeg"),
                                      fit: BoxFit.cover),
                                  borderRadius: BorderRadius.circular(20.0)),
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(left: 20, top: 100),
                                child: Text(
                                  "Medicine",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 21,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Container(
            height: 450,
            width: 500,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(
                      "assets/resource 1.png",
                    ),
                    fit: BoxFit.cover,
                    colorFilter: ColorFilter.mode(
                        Colors.white.withOpacity(0.6), BlendMode.dstATop)),
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(50),
                    bottomRight: Radius.circular(50)),
                color: Colors.lightBlueAccent),
            child: Padding(
              padding: const EdgeInsets.only(left: 35.0, top: 70, right: 30),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Good Morning, Alpha",
                    style: TextStyle(
                        fontSize: 35,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "How are you today?",
                    style: TextStyle(
                      fontSize: 19,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    height: 50,
                    child: TextFormField(
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide(color: Colors.white),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide(color: Colors.white),
                        ),
                        prefixIcon: Icon(
                          Icons.search,
                          color: Colors.blue,
                        ),
                        hintText: "Search your symptoms",
                        hintStyle: TextStyle(color: Colors.blue),
                        fillColor: Colors.white,
                        filled: true,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "How can we help you?",
                    style: TextStyle(
                      fontSize: 19,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 120,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.only(top: 10),
                          margin: EdgeInsets.all(10),
                          width: 100,
                          height: 60,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15)),
                          child: Column(
                            children: <Widget>[
                              Icon(
                                Icons.favorite,
                                size: 60,
                                color: Colors.lightBlueAccent[200],
                              ),
                              Text(
                                "Assistance",
                                style: TextStyle(color: Colors.blue),
                              )
                            ],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(top: 10),
                          margin: EdgeInsets.all(10),
                          width: 100,
                          height: 60,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15)),
                          child: Column(
                            children: <Widget>[
                              Icon(Icons.home,
                                  size: 60, color: Colors.lightBlueAccent[200]),
                              Text(
                                "Home Visit",
                                style: TextStyle(color: Colors.blue),
                              )
                            ],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(top: 10),
                          margin: EdgeInsets.all(10),
                          width: 100,
                          height: 60,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15)),
                          child: Column(
                            children: <Widget>[
                              Icon(Icons.directions_bus,
                                  size: 60, color: Colors.lightBlueAccent[200]),
                              Text(
                                "Ambulance",
                                style: TextStyle(color: Colors.blue),
                              )
                            ],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(top: 10),
                          margin: EdgeInsets.all(10),
                          width: 100,
                          height: 60,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15)),
                          child: Column(
                            children: <Widget>[
                              Icon(Icons.local_hospital,
                                  size: 60, color: Colors.lightBlueAccent[200]),
                              Text(
                                "Safety",
                                style: TextStyle(color: Colors.blue),
                              )
                            ],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(top: 10),
                          margin: EdgeInsets.all(10),
                          width: 100,
                          height: 60,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15)),
                          child: Column(
                            children: <Widget>[
                              Icon(Icons.monetization_on,
                                  size: 60, color: Colors.lightBlueAccent[200]),
                              Text(
                                "Cheap",
                                style: TextStyle(color: Colors.blue),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
