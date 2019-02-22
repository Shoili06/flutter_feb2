import 'package:flutter/material.dart';

class AskNameScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage("assets/images/main_title.png")
          )
      ),
      child: Column(
        children: <Widget>[
          Spacer(),
          TextField(
            decoration: InputDecoration(
              filled: true,
              fillColor: Colors.white,
              hintText: "Enter your name",
            ),
          ),
          RaisedButton(
            onPressed: (){},
            child: Text("START YOUR ADVENTURE"),
          )
        ],
      ),
    );
  }
}
