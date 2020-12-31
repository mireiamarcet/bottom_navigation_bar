import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(height: 40),
        Container(
          width: 190.0,
          height: 190.0,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
              fit: BoxFit.fill,
              image: NetworkImage("https://picsum.photos/250?image=40"),
            ),
          ),
        ),
        SizedBox(height: 15),
        Text("Triky",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
        SizedBox(height: 10),
        Text("Awesome kitty", style: TextStyle(fontSize: 16)),
        SizedBox(height: 30),
        Card(
          color: Colors.blue[200],
          margin: EdgeInsets.only(left: 20, right: 20, bottom: 10),
          child: ListTile(
            leading: Icon(Icons.favorite),
            title: Text('I love tuna, ham & milk'),
          ),
        ),
        Card(
          color: Colors.blue[200],
          margin: EdgeInsets.only(left: 20, right: 20, bottom: 10),
          child: ListTile(
            leading: Icon(Icons.people),
            title: Text('I own 2 people'),
          ),
        ),
        Card(
          color: Colors.blue[200],
          margin: EdgeInsets.only(left: 20, right: 20),
          child: ListTile(
            leading: Icon(Icons.calendar_today),
            title: Text('I am 2 months old'),
          ),
        ),
      ],
    );
  }
}
