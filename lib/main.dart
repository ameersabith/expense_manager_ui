import 'package:flutter/material.dart';
import 'dashboard.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Expense Watcher',
      theme: ThemeData(
        primarySwatch: Colors.purple
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    Color primaryColor = Color.fromRGBO(255, 82, 48, 1);

    return Scaffold(
      backgroundColor: Color.fromRGBO(244, 244, 244, 1),

      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: primaryColor,
                border: Border.all(color: primaryColor)
              ),
              child: Padding(padding: EdgeInsets.only(top: 30.0, right: 15.0, left: 15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    IconButton(
                      icon: Icon(Icons.menu),
                      color: Colors.white,
                      iconSize: 30.0,
                      onPressed: (){},
                    ),
                    IconButton(
                      icon: Icon(Icons.notifications_none),
                      color: Colors.white,
                      iconSize: 30.0,
                      onPressed: (){}
                    ),
                  ],
                ),
              ),
            ),
            Stack(
              children: <Widget>[
                ClipPath(
                  clipper: CustomShapeClipper(),
                  child: Container(
                    height: 350.0,
                    decoration: BoxDecoration(color: primaryColor)
                  )
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25.0, vertical: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            '2800.00', 
                            style:TextStyle(
                              color: Colors.white,
                              fontSize: 30.0,
                              fontWeight: FontWeight.bold
                            ),
                          ),
                          SizedBox(height: 15.0),
                          Text(
                            'available balance',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14.0
                            )
                          )
                        ],
                      ),
                      Material(
                        elevation: 1.0,
                        borderRadius: BorderRadius.circular(100.0),
                        color: Colors.blue[300],
                        child: MaterialButton(
                          padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 10.0),
                          onPressed: (){
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (BuildContext context) => DashboardPage()
                            ));
                          },
                          child: Text(
                            'Top Up',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16.0),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                Padding(
                  padding: EdgeInsets.only(top: 120.0, right: 25.0, left: 25.0),
                  child: Container(
                    width: double.infinity,
                    height: 370.0,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(20.0)),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.1),
                          offset: Offset(0.0, 3.0),
                          blurRadius: 15.0
                        )
                      ]
                    ),
                    child: Column(
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 40.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Column(
                                children: <Widget>[
                                  Material(
                                    borderRadius: BorderRadius.circular(100.0),
                                    color: Colors.purple.withOpacity(0.1),
                                    child: IconButton(
                                      padding: EdgeInsets.all(15.0),
                                      icon: Icon(Icons.send),
                                      color: Colors.purple,
                                      iconSize: 30.0,
                                      onPressed: () {},
                                    )
                                  ),
                                  SizedBox(height: 8.0),
                                  Text(
                                    'Send',
                                    style: TextStyle(
                                      color: Colors.black54,
                                      fontWeight: FontWeight.bold
                                    ),
                                  ),
                                ]
                              ),
                              Column(
                                children: <Widget>[
                                  Material(
                                    borderRadius: BorderRadius.circular(100.0),
                                    color: Colors.blue.withOpacity(0.1),
                                    child: IconButton(
                                      padding: EdgeInsets.all(15.0),
                                      icon: Icon(Icons.credit_card),
                                      color: Colors.blue,
                                      iconSize: 30.0,
                                      onPressed: () {},
                                    )
                                  ),
                                  SizedBox(height: 8.0),
                                  Text(
                                    'Pay',
                                    style: TextStyle(
                                      color: Colors.black54,
                                      fontWeight: FontWeight.bold
                                    ),
                                  ),
                                ]
                              ),
                              Column(
                                children: <Widget>[
                                  Material(
                                    borderRadius: BorderRadius.circular(100.0),
                                    color: Colors.orange.withOpacity(0.1),
                                    child: IconButton(
                                      padding: EdgeInsets.all(15.0),
                                      icon: Icon(Icons.receipt),
                                      color: Colors.orange,
                                      iconSize: 30.0,
                                      onPressed: () {},
                                    )
                                  ),
                                  SizedBox(height: 8.0),
                                  Text(
                                    'Request',
                                    style: TextStyle(
                                      color: Colors.black54,
                                      fontWeight: FontWeight.bold
                                    ),
                                  ),
                                ]
                              ),
                            ],
                          ),
                        ),

                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 40.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Column(
                                children: <Widget>[
                                  Material(
                                    borderRadius: BorderRadius.circular(100.0),
                                    color: Colors.pink.withOpacity(0.1),
                                    child: IconButton(
                                      padding: EdgeInsets.all(15.0),
                                      icon: Icon(Icons.monetization_on),
                                      color: Colors.pink,
                                      iconSize: 30.0,
                                      onPressed: () {},
                                    )
                                  ),
                                  SizedBox(height: 8.0),
                                  Text(
                                    'Invoice',
                                    style: TextStyle(
                                      color: Colors.black54,
                                      fontWeight: FontWeight.bold
                                    ),
                                  ),
                                ]
                              ),
                              Column(
                                children: <Widget>[
                                  Material(
                                    borderRadius: BorderRadius.circular(100.0),
                                    color: Colors.purpleAccent.withOpacity(0.1),
                                    child: IconButton(
                                      padding: EdgeInsets.all(15.0),
                                      icon: Icon(Icons.favorite),
                                      color: Colors.purpleAccent,
                                      iconSize: 30.0,
                                      onPressed: () {},
                                    )
                                  ),
                                  SizedBox(height: 8.0),
                                  Text(
                                    'Charity',
                                    style: TextStyle(
                                      color: Colors.black54,
                                      fontWeight: FontWeight.bold
                                    ),
                                  ),
                                ]
                              ),
                              Column(
                                children: <Widget>[
                                  Material(
                                    borderRadius: BorderRadius.circular(100.0),
                                    color: Colors.deepPurple.withOpacity(0.1),
                                    child: IconButton(
                                      padding: EdgeInsets.all(15.0),
                                      icon: Icon(Icons.attach_money),
                                      color: Colors.deepPurple,
                                      iconSize: 30.0,
                                      onPressed: () {},
                                    )
                                  ),
                                  SizedBox(height: 8.0),
                                  Text(
                                    'Loan',
                                    style: TextStyle(
                                      color: Colors.black54,
                                      fontWeight: FontWeight.bold
                                    ),
                                  ),
                                ]
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 15.0),
                        Divider(),
                        SizedBox(height: 15.0),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 25.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Expanded(
                                child: Text(
                                  'Lorem Ipsiunb asdf asdf grte',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontWeight: FontWeight.bold
                                  ),
                                )
                              ),
                              SizedBox(height: 40.0),
                              Material(
                                borderRadius: BorderRadius.circular(100.0),
                                color: Colors.blueAccent.withOpacity(0.1),
                                child: IconButton(
                                  onPressed: (){},
                                  icon: Icon(Icons.arrow_forward_ios),
                                  color: Colors.blueAccent,
                                ),
                              )
                            ]
                          ),),
                      ],
                    ),
                  ),
                ),
              ],
            ),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25.0, vertical: 25.0),
              child: Text(
                'Upcoming',
                style: TextStyle(
                  color: Colors.black.withOpacity(0.7),
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0
                )
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 5.0, right: 5.0, bottom: 25.0),
              child: Container(
                height: 150.0,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    UpcomingCard(title: 'Credit Card', value: 280.0, color: Colors.purple),
                    UpcomingCard(title: 'Credit Card', value: 260.0, color: Colors.blue),
                    UpcomingCard(title: 'Credit Card', value: 300.0, color: Colors.pink),
                    UpcomingCard(title: 'Credit Card', value: 410.0, color: Colors.orange),
                    UpcomingCard(title: 'Credit Card', value: 650.0, color: Colors.greenAccent),
                    UpcomingCard(title: 'Credit Card', value: 900.0, color: Colors.blueGrey),
                    UpcomingCard(title: 'Credit Card', value: 120.0, color: Colors.brown),
                    UpcomingCard(title: 'Credit Card', value: 340.0, color: Colors.greenAccent),
                  ],
                )
              ),
            )
          ],
        )
      ),
    );
  }
}


class CustomShapeClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();

    path.lineTo(0.0, 390.0 - 200);
    path.quadraticBezierTo(size.width / 2, 280, size.width, 390.0 - 200);
    path.lineTo(size.width, 0.0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => true;
}

class UpcomingCard extends StatelessWidget {
  final String title;
  final double value;
  final Color color;

  UpcomingCard({this.title, this.value, this.color});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 15.0),
      child: Container(
        width: 120.0,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.all(Radius.circular(25.0))
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0, vertical:30.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                title,
                style: TextStyle( color: Colors.white, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 30.0),
              Text(
                '$value',
                style: TextStyle( fontSize: 22.0, color: Colors.white, fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
      ),
    );
  }

}