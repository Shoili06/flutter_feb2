import 'package:flutter/material.dart';

class AskNameScreen extends StatefulWidget {


  @override
  AskNameScreenState createState() {
    return new AskNameScreenState();
  }
}

class AskNameScreenState extends State<AskNameScreen> {

  TextEditingController nameController;

  onStartAdventurePressed(){
      print(nameController.text);
  }



  @override
  void initState() {
    super.initState();
    nameController = TextEditingController();
  }


  @override
  void dispose() {
    nameController.dispose();
    super.dispose();
  }


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
            controller: nameController,
            decoration: InputDecoration(
              filled: true,
              fillColor: Colors.white,
              hintText: "Enter your name",
            ),
          ),
          RaisedButton(
            onPressed: onStartAdventurePressed,
            child: Text("START YOUR ADVENTURE"),
          )
        ],
      ),
    );
  }
}
