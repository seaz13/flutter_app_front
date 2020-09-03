import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: '해대인'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(width: 220.0, height: 30.0, color:Colors.white,
              child:Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(Icons.search, color:Colors.blue), Text('키워드 검색')],),),
            Container(height: 20.0,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Stack(
                  children: <Widget>[
                    Container( decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.0),
                        boxShadow: [
                          new BoxShadow(
                            blurRadius: 15.0,
                            offset: const Offset(0.0, 0.0),
                            color: Colors.grey,
                          )
                        ],
                        color: Colors.white),
                      child: Padding(
                        padding: EdgeInsets.all(13.0),
                        child:Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Container(
                                padding: EdgeInsets.all(10.0),
                                alignment: Alignment.bottomCenter,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(25.0),
                                  gradient: LinearGradient(
                                    begin: Alignment.topLeft,
                                    end: Alignment.bottomRight,
                                    colors: <Color>[
                                      Colors.purple,
                                      Colors.deepPurpleAccent
                                    ],
                                  ), ),
                                child: Icon(Icons.directions_bus, color: Colors.white, size:25) ),
                            Container(height: 10),
                            Text('  버스 정보  ')],),),),
                  ],
                ),
                Container(width: 20.0,),
                Stack(
                  children: <Widget>[
                    Container( decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.0),
                        boxShadow: [
                          new BoxShadow(
                            blurRadius: 15.0,
                            offset: const Offset(0.0, 0.0),
                            color: Colors.grey,
                          )
                        ],
                        color: Colors.white),
                      child: Padding(
                        padding: EdgeInsets.all(13.0),
                        child:Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Container(
                              padding: EdgeInsets.all(10.0),
                              alignment: Alignment.bottomCenter,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25.0),
                                gradient: LinearGradient(
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight,
                                  colors: <Color>[
                                    Colors.deepOrange,
                                    Colors.pinkAccent
                                  ],
                                ), ),
                              child: Icon(Icons.restaurant, color: Colors.white, size:25), ),
                            Container(height: 10),
                            Text('  식단 정보  ')],),),),
                  ],
                ),
              ],
            ),
            Container(height: 20.0,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Stack(
                  children: <Widget>[
                    Container( decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.0),
                        boxShadow: [
                          new BoxShadow(
                            blurRadius: 15.0,
                            offset: const Offset(0.0, 0.0),
                            color: Colors.grey,
                          )
                        ],
                        color: Colors.white),
                      child: Padding(
                        padding: EdgeInsets.all(13.0),
                        child:Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Container(
                                padding: EdgeInsets.all(10.0),
                                alignment: Alignment.bottomCenter,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(25.0),
                                  gradient: LinearGradient(
                                    begin: Alignment.topLeft,
                                    end: Alignment.bottomRight,
                                    colors: <Color>[
                                      Colors.yellow,
                                      Colors.greenAccent
                                    ],
                                  ), ),
                                child: Icon(Icons.account_balance, color: Colors.white, size:25)),
                            Container(height: 10),
                            Text('  시설 정보  ')],),),),
                  ],
                ),
                Container(width: 20.0,),
                Stack(
                  children: <Widget>[
                    Container( decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.0),
                        boxShadow: [
                          new BoxShadow(
                            blurRadius: 15.0,
                            offset: const Offset(0.0, 0.0),
                            color: Colors.grey,
                          )
                        ],
                        color: Colors.white),
                      child: Padding(
                        padding: EdgeInsets.all(13.0),
                        child:Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Container(
                                padding: EdgeInsets.all(10.0),
                                alignment: Alignment.bottomCenter,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(25.0),
                                  gradient: LinearGradient(
                                    begin: Alignment.topLeft,
                                    end: Alignment.bottomRight,
                                    colors: <Color>[
                                      Colors.lightBlueAccent,
                                      Colors.blue
                                    ],
                                  ), ),
                                child: Icon(Icons.event_available, color: Colors.white, size:25)),
                            Container(height: 10),
                            Text('  학사 일정  ')],),),),
                  ],
                ),
              ],
            ),
            Container(height: 50.0,),
            Text('오류제보 및 개발자', style: TextStyle(color:Colors.blue) ),
          ],
        ),
      ),
    );
  }
}