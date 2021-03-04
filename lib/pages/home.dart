import 'package:flutter/material.dart';
import 'package:GestureApp/pages/card.dart' as car;
import 'package:GestureApp/widgets/appBarTransparent.dart';
import 'package:flutter/cupertino.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFE3F2FD),
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.3,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Color(0xFF4268D3), Color(0xFF584DC1)],
                    begin: FractionalOffset(0.2, 0.9),
                    end: FractionalOffset(1.0, 0.6),
                    stops: [0.0, 0.9],
                    tileMode: TileMode.clamp,
                  ),
                ),
              ),
              Center(
                heightFactor: 1.6,
                child: Container(
                  margin: EdgeInsets.all(20),
                  width: 250,
                  height: 250,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage('assets/images/laura.jpg'),
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    shape: BoxShape.rectangle,
                    boxShadow: <BoxShadow>[
                      BoxShadow(
                          color: Colors.black12,
                          blurRadius: 15.0,
                          offset: Offset(0.0, 7.0))
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          canvasColor: Colors.white,
          primaryColor: Colors.deepPurple,
        ),
        child: BottomNavigationBar(onTap: (value) => {}, items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text(""),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            title: Text(""),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            title: Text(""),
          ),
        ]),
      ),
    );
  }
}
