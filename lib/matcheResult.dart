import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:sports/utilites/constants.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

final activeColor = Color(0xffFF0000).withOpacity(0.4);
final deActiveColor = Colors.white.withOpacity(0.75);

class MatchResult extends StatefulWidget {
  @override
  State<MatchResult> createState() => _MatchResultState();
}

class _MatchResultState extends State<MatchResult> {
  var row1 = deActiveColor;
  var row2 = deActiveColor;

  bool isVisible = true;
  void Row1(int colorr) {
    if (colorr == 1) {
      row1 = activeColor;
      row2 = deActiveColor;
    }
    if (colorr == 2) {
      row1 = deActiveColor;

      row2 = activeColor;
    }
  }

  var row11 = deActiveColor;
  var row22 = deActiveColor;

  void Row2(int colorr) {
    if (colorr == 1) {
      row11 = activeColor;
      row22 = deActiveColor;
    }
    if (colorr == 2) {
      row11 = deActiveColor;

      row22 = activeColor;
    }
  }

  var row111 = deActiveColor;
  var row222 = deActiveColor;
  void Row3(int colorr) {
    if (colorr == 1) {
      row111 = activeColor;
      row222 = deActiveColor;
    }
    if (colorr == 2) {
      row111 = deActiveColor;

      row222 = activeColor;
    }
  }

  var rowQ1 = deActiveColor;
  var rowQ2 = deActiveColor;
  void Row4(int colorr) {
    if (colorr == 1) {
      rowQ1 = activeColor;
      rowQ2 = deActiveColor;
    }
    if (colorr == 2) {
      rowQ1 = deActiveColor;

      rowQ2 = activeColor;
    }
  }

  var rowA1 = deActiveColor;
  var rowA2 = deActiveColor;

  void Row5(int colorr) {
    if (colorr == 1) {
      rowA1 = activeColor;
      rowA2 = deActiveColor;
    }
    if (colorr == 2) {
      rowA1 = deActiveColor;

      rowA2 = activeColor;
    }
  }

  var rowI1 = deActiveColor;
  var rowI2 = deActiveColor;

  void Row6(int colorr) {
    if (colorr == 1) {
      rowI1 = activeColor;
      rowI2 = deActiveColor;
    }
    if (colorr == 2) {
      rowI1 = deActiveColor;

      rowI2 = activeColor;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
              kbagroundColor,
              kWhiteColor.withOpacity(0.6),
            ],
          )),
          child: ListView(
            children: [
              SizedBox(
                height: 10,
              ),
              Center(
                child: Text('Match Results',
                    style: TextStyle(
                        fontSize: 20, color: Colors.white.withOpacity(0.85))),
              ),
              Divider(thickness: 2, color: Colors.black),
              SizedBox(
                height: 10,
              ),
              Center(
                child: Text('Results',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.bold)),
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  _mainContainer('The Beaties'),
                  Text('Vs',
                      style: TextStyle(color: Colors.white.withOpacity(0.75))),
                  _mainContainer('Queens'),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Expanded(
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(''),
                      Text(''),
                      Text(''),
                      Text(''),
                      Text(''),
                      Text('Attended'),
                      Text('Absent'),
                      Text('Reviews'),
                    ]),
              ),
              Expanded(
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        'Players:',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 10,
                        ),
                      ),
                      Text(
                        'John Ceno:',
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: Colors.white.withOpacity(0.75)),
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            Row1(1);

                            isVisible = !isVisible;
                          });
                        },
                        child: Container(
                          color: row1,
                          width: 40,
                          height: 20,
                        ),
                      ),
                      Text(''),
                      InkWell(
                        onTap: () {
                          setState(() {
                            Row1(2);

                            isVisible = !isVisible;
                          });
                        },
                        child: Container(
                          color: row2,
                          width: 40,
                          height: 20,
                        ),
                      ),
                      RatingBar.builder(
                        initialRating: 3,
                        minRating: 0.1,
                        direction: Axis.horizontal,
                        allowHalfRating: true,
                        itemSize: 14,
                        itemCount: 5,
                        itemPadding: EdgeInsets.symmetric(horizontal: 3.0),
                        itemBuilder: (context, _) => Icon(
                          Icons.star,
                          color: Colors.amber,
                        ),
                        onRatingUpdate: (rating) {
                          print(rating);
                          Fluttertoast.showToast(msg: '$rating');
                        },
                      )
                    ]),
              ),
              SizedBox(
                height: 10,
              ),
              // second row
              Expanded(
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text('          '),
                      Text(
                        'UnderTaker:',
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: Colors.white.withOpacity(0.75)),
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            Row2(1);

                            isVisible = !isVisible;
                          });
                        },
                        child: Container(
                          color: row11,
                          width: 40,
                          height: 20,
                        ),
                      ),
                      Text(''),
                      InkWell(
                        onTap: () {
                          setState(() {
                            Row2(2);

                            isVisible = !isVisible;
                          });
                        },
                        child: Container(
                          color: row22,
                          width: 40,
                          height: 20,
                        ),
                      ),
                      RatingBar.builder(
                        initialRating: 3,
                        minRating: 0.1,
                        direction: Axis.horizontal,
                        allowHalfRating: true,
                        itemSize: 14,
                        itemCount: 5,
                        itemPadding: EdgeInsets.symmetric(horizontal: 3.0),
                        itemBuilder: (context, _) => Icon(
                          Icons.star,
                          color: Colors.amber,
                        ),
                        onRatingUpdate: (rating) {
                          print(rating);
                          Fluttertoast.showToast(msg: '$rating');
                        },
                      )
                    ]),
              ),

              SizedBox(
                height: 10,
              ),
              // second row
              Expanded(
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text('               '),
                      Text(
                        'The Rock',
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: Colors.white.withOpacity(0.75)),
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            Row3(1);

                            isVisible = !isVisible;
                          });
                        },
                        child: Container(
                          color: row111,
                          width: 40,
                          height: 20,
                        ),
                      ),
                      Text(''),
                      InkWell(
                        onTap: () {
                          setState(() {
                            Row3(2);

                            isVisible = !isVisible;
                          });
                        },
                        child: Container(
                          color: row222,
                          width: 40,
                          height: 20,
                        ),
                      ),
                      RatingBar.builder(
                        initialRating: 3,
                        minRating: 0.1,
                        direction: Axis.horizontal,
                        allowHalfRating: true,
                        itemSize: 14,
                        itemCount: 5,
                        itemPadding: EdgeInsets.symmetric(horizontal: 3.0),
                        itemBuilder: (context, _) => Icon(
                          Icons.star,
                          color: Colors.amber,
                        ),
                        onRatingUpdate: (rating) {
                          print(rating);
                          Fluttertoast.showToast(msg: '$rating');
                        },
                      )
                    ]),
              ),

              SizedBox(
                height: 10,
              ),
              // second row
              Expanded(
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text('              '),
                      Text(
                        'The Goat:',
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: Colors.white.withOpacity(0.75)),
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            Row4(1);

                            isVisible = !isVisible;
                          });
                        },
                        child: Container(
                          color: rowQ1,
                          width: 40,
                          height: 20,
                        ),
                      ),
                      Text(''),
                      InkWell(
                        onTap: () {
                          setState(() {
                            Row4(2);

                            isVisible = !isVisible;
                          });
                        },
                        child: Container(
                          color: rowQ2,
                          width: 40,
                          height: 20,
                        ),
                      ),
                      RatingBar.builder(
                        initialRating: 3,
                        minRating: 0.1,
                        direction: Axis.horizontal,
                        allowHalfRating: true,
                        itemSize: 14,
                        itemCount: 5,
                        itemPadding: EdgeInsets.symmetric(horizontal: 3.0),
                        itemBuilder: (context, _) => Icon(
                          Icons.star,
                          color: Colors.amber,
                        ),
                        onRatingUpdate: (rating) {
                          print(rating);
                          Fluttertoast.showToast(msg: '$rating');
                        },
                      )
                    ]),
              ),

              SizedBox(
                height: 10,
              ),
              // second row
              Expanded(
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text('MVP:'),
                      Text(
                        'HHH',
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: Colors.white.withOpacity(0.75)),
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            Row5(1);

                            isVisible = !isVisible;
                          });
                        },
                        child: Container(
                          color: rowA1,
                          width: 40,
                          height: 20,
                        ),
                      ),
                      Text(''),
                      Text(''),
                      Text(''),
                      Text(' '),
                      Text(''),
                    ]),
              ),
              SizedBox(
                height: 10,
              ),
              // second row
              Expanded(
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text('Referee:'),
                      Text(
                        'Sam Judge',
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: Colors.white.withOpacity(0.75)),
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            Row6(1);

                            isVisible = !isVisible;
                          });
                        },
                        child: Container(
                          color: rowI1,
                          width: 40,
                          height: 20,
                        ),
                      ),
                      Text(''),
                      Text(''),
                      Text(''),
                      Text(' '),
                      Text(' '),
                      Text(' '),
                      Text('       '),
                      Text('       '),
                      Text('       '),
                      Text(' '),
                      Text(' '),
                      Text(''),
                    ]),
              ),
              SizedBox(
                height: 10,
              ),
              Expanded(
                child: Row(
                  children: [
                    Text('Location:'),
                    Padding(
                      padding: const EdgeInsets.only(left: 12, top: 4),
                      child: Expanded(
                        child: Container(
                          width: 200,
                          height: 34,
                          child: TextField(
                            decoration: new InputDecoration(
                                hintText: "Enter something",
                                labelStyle: new TextStyle(
                                    color: const Color(0xFF424242)),
                                border: new UnderlineInputBorder(
                                    borderSide:
                                        new BorderSide(color: Colors.red))),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Expanded(
                child: Row(
                  children: [
                    Text('Address:'),
                    Padding(
                      padding: const EdgeInsets.only(left: 12, top: 4),
                      child: Expanded(
                        child: Container(
                          width: 200,
                          height: 34,
                          child: TextField(
                            decoration: new InputDecoration(
                                hintText: "Enter something",
                                labelStyle: new TextStyle(
                                    color: const Color(0xFF424242)),
                                border: new UnderlineInputBorder(
                                    borderSide:
                                        new BorderSide(color: Colors.red))),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 6,
              ),
              Expanded(child: Text('Review Location:')),
              SizedBox(
                height: 6,
              ),
              Expanded(
                child: InkWell(
                  onTap: () {},
                  child: Container(
                    width: 140,
                    height: 30,
                    decoration: BoxDecoration(
                        color: Color(0xffFF0000).withOpacity(0.6),
                        borderRadius: BorderRadius.circular(20)),
                    child: Center(
                        child: Text('Submit',
                            style: TextStyle(color: Colors.white))),
                  ),
                ),
              ),

              SizedBox(
                height: 9,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Container _mainContainer(String title) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(17),
        color: kTertiaryColor.withOpacity(0.7),
      ),
      width: MediaQuery.of(context).size.width * 0.42,
      height: MediaQuery.of(context).size.height * 0.18,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 15),
            child: Text(
              title,
              style: TextStyle(
                  fontSize: 15, color: Colors.white.withOpacity(0.75)),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            '4',
            style:
                TextStyle(fontSize: 15, color: Colors.white.withOpacity(0.75)),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Divider(
              thickness: 1,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
