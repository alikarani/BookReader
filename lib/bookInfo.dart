import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BookInfo extends StatelessWidget {
  final _scaffoldKey = GlobalKey<ScaffoldState>();

  void moreInfo(context) {
    final snackBar = SnackBar(content: Text('Comming Soon!'));
    _scaffoldKey.currentState.showSnackBar(snackBar);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: new AppBar(
        backgroundColor: Colors.redAccent,
      ),
      body: SafeArea(
        child: Column(children: <Widget>[
          Material(
            elevation: 2.0,
            child: Container(
              height: 220.0,
              padding: EdgeInsets.symmetric(vertical: 20),
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                      'https://i2.wp.com/www.opindia.com/wp-content/uploads/2020/04/irfan-khan-dies.jpeg?resize=650%2C450&ssl=1'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: <Widget>[
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Container(
                            child: Text(
                          'Irfan Khan',
                          style: TextStyle(
                              color: Colors.black87,
                              fontWeight: FontWeight.bold,
                              fontSize: 24),
                        )),
                        Column(
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                Icon(Icons.star,
                                    size: 18, color: Colors.yellow),
                                Icon(Icons.star,
                                    size: 18, color: Colors.yellow),
                                Icon(Icons.star,
                                    size: 18, color: Colors.yellow),
                                Icon(Icons.star,
                                    size: 18, color: Colors.yellow),
                                Icon(Icons.star_half,
                                    size: 18, color: Colors.yellow),
                              ],
                            ),
                            Text(
                              'Motivation',
                              style: TextStyle(
                                color: Colors.blueAccent,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        )
                      ]),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Khan was born in Rajasthan into a Muslim family of Pathan ancestry.Khans mother, Saeeda Begum Khan was from Jodhpur, and his father, Yaseen Ali Khan, was from the Khajuriya village in Rajasthans Tonk district, and they ran a tyre business. He spent his childhood in Tonk, and then Jaipur. Irrfan was good at cricket and was selected to play in the CK Nayudu Trophy for emerging players in the under-23 category, a tournament seen as a stepping stone to first-class cricket in India. However, he did not attend as he could not afford travel expenses.",
                    style: GoogleFonts.saira(
                      fontSize: 12,
                      color: Colors.black87,
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      RaisedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/readBook');
                        },
                        textColor: Colors.white,
                        child: Container(
                          padding: const EdgeInsets.all(10.0),
                          child: const Text('Read Book',
                              style: TextStyle(fontSize: 18)),
                        ),
                        color: Color(0xff81BBB1),
                        elevation: 5,
                        autofocus: true,
                        focusElevation: 8,
                        splashColor: Colors.deepPurple,
                      ),
                      RaisedButton(
                        onPressed: () {
                          moreInfo(context);
                        },
                        textColor: Colors.grey[100],
                        child: Container(
                          padding: const EdgeInsets.all(10.0),
                          child: const Text('More info',
                              style: TextStyle(fontSize: 18)),
                        ),
                        color: Color(0xff81BBB1),
                        elevation: 5,
                        autofocus: true,
                        focusElevation: 8,
                        splashColor: Colors.deepOrange[500],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
