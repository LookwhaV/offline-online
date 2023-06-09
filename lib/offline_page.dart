import 'package:flutter/material.dart';

class offlinegame extends StatelessWidget {
  var Path, names, details;

  offlinegame({this.Path, this.names, this.details});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Color(0xFF545D68)),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: ListView(children: [
        SizedBox(height: 15.0),
        SizedBox(height: 15.0),
        Hero(
            tag: Path,
            child: Image.asset(Path,
                height: 250.0, width: 250.0, fit: BoxFit.contain)),
        SizedBox(height: 30.0),
        Center(
          child: Text(names,
              style: TextStyle(
                  color: Color(0xFF575E67),
                  fontWeight: FontWeight.bold,
                  fontSize: 25.0)),
        ),
        SizedBox(height: 20.0),
        Center(
          child: Container(
            width: MediaQuery.of(context).size.width,
            child: Text('บทความ : ',
                //textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF575E67))),
          ),
        ),
        SizedBox(height: 15.0),
        Center(
            child: Text(
          details,
          style: TextStyle(
              color: Color(0xFF575E67),
              fontWeight: FontWeight.normal,
              fontSize: 20.0),
        )),
      ]),
    );
  }
}
