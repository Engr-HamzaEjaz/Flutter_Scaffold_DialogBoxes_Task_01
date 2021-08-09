import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreen createState() => _HomeScreen();
}

class _HomeScreen extends State<HomeScreen> {
  get size => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Flutter Task 01'),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Align(
              child: Container(
                width: (MediaQuery.of(context).size.width),
                color: Colors.white,
                alignment: Alignment.topCenter,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Padding(
                      padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                      child: Image.network(
                          "https://upload.wikimedia.org/wikipedia/commons/7/7c/DSC2528_Morraine_Lake_Banff_National_Park%2C_Alberta.jpg"),
                    ),
                  ],
                ),
              ),
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Padding(
                    padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                    child: Column(
                      children: [
                        Text(
                          'Banff National Park',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'Alberta, Canada',
                          style: TextStyle(
                            fontWeight: FontWeight.normal,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    )),
                Padding(
                    padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                    child: Row(
                      children: [
                        Icon(
                          Icons.star,
                          color: Colors.red,
                          size: 22,
                        ),
                        Text(
                          '41',
                          style: TextStyle(fontSize: 20),
                        ),
                      ],
                    ))
              ],
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Column(
                  children: [
                    IconButton(
                        onPressed: () {
                          showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return SimpleDialog(
                                  title: const Text(
                                    'Your Call has been forwarded',
                                  ),
                                  children: [
                                    SimpleDialogOption(
                                      onPressed: () {
                                        Navigator.pop(context, 'OK');
                                      },
                                    )
                                  ],
                                );
                              });
                        },
                        icon: Icon(
                          Icons.call,
                          color: Colors.blue,
                          size: 30.0,
                        )),
                    Text(
                      'Call',
                      style: TextStyle(fontSize: 20.0),
                    ),
                  ],
                ),
                Column(
                  children: [
                    IconButton(
                        onPressed: () {
                          showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return AlertDialog(
                                  title: const Text('Augersoft Map'),
                                  content: Text(
                                      'Finding Best route for you\nTo get best route allow location access'),
                                  actions: [
                                    TextButton(
                                      onPressed: () =>
                                          Navigator.pop(context, 'Allow'),
                                      child: Text('Allow'),
                                    ),
                                  ],
                                );
                              });
                        },
                        icon: Icon(
                          Icons.near_me,
                          color: Colors.blue,
                          size: 30.0,
                        )),
                    Text(
                      'Route',
                      style: TextStyle(fontSize: 20.0),
                    ),
                  ],
                ),
                Column(
                  children: [
                    IconButton(
                        onPressed: () {
                          showModalBottomSheet(
                              context: context,
                              builder: (BuildContext context) {
                                return Container(
                                  height: 200,
                                  width: (MediaQuery.of(context).size.width),
                                  child: Center(
                                    child: ElevatedButton(
                                        onPressed: () {
                                          Navigator.pop(context);
                                        },
                                        child: const Text('Share')),
                                  ),
                                );
                              });
                        },
                        icon: Icon(
                          Icons.share,
                          color: Colors.blue,
                          size: 30.0,
                        )),
                    Text(
                      'Share',
                      style: TextStyle(fontSize: 20.0),
                    ),
                  ],
                )
              ],
            ),
            Container(
              height: 220,
              width: (MediaQuery.of(context).size.width),
              color: Colors.white,
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: EdgeInsetsDirectional.all(30),
                child: Center(
                  child: Text(
                    'Easily one of the most beautiful spots in Canada, Banff National Park overwhelms with views of the Canadian Rockies and a regular cast of wildlife. The park is also known for its abundance of beautiful lakes, including Lake Louise, Moraine Lake, and glacial Lake Minnewanka—each more pristine than the last.',
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
            ),
          ]),
    );
  }
}
