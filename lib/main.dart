import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'app_screens/Home.dart';

void main() {
  runApp(
    MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Book Your Tickets",
        home: Scaffold(
          appBar: AppBar(
              title: Text("Book Your Tickets"),
              backgroundColor: Colors.teal),
          body: getListView(),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              debugPrint(" Button Clicked");
            },
            child: Icon(Icons.search),
            tooltip: "Search more flights",
            backgroundColor: Colors.teal,
          ),
        )),
  );
}

void showSnackBar(BuildContext context) {
  var snackBar = SnackBar(
    content: Text("Flight is available"),
    action: SnackBarAction(
      label: "undo",
      onPressed: () {
        debugPrint("undo done!");
      },
    ),
  );
  Scaffold.of(context).showSnackBar(snackBar);
}

Widget getListView() {
  var listView = ListView(children: <Widget>[
    ListTile(
      leading: Icon(Icons.flight_takeoff),
      title: Text("Lucknow To Mumbai"),
      subtitle: Text("Spice-Jet"),
      trailing: Icon(Icons.calendar_today),
    ),

    ListTile(
      leading: Icon(Icons.flight_takeoff),
      title: Text("Delhi To Hyderabad"),
      subtitle: Text("Spice-Jet"),
      trailing: Icon(Icons.calendar_today),
      //selectedTileColor: Colors.teal,
    ),

    ListTile(
      leading: Icon(Icons.flight_takeoff),
      title: Text("Delhi To Bangalore"),
      subtitle: Text("Spice-Jet"),
      trailing: Icon(Icons.calendar_today),
      //selectedTileColor: Colors.teal,
    ),

    ListTile(
      leading: Icon(Icons.flight_takeoff),
      title: Text("Lucknow To Hyderabad"),
      subtitle: Text("Spice-Jet"),
      trailing: Icon(Icons.calendar_today),
      //selectedTileColor: Colors.teal,
    ),

    ListTile(
      leading: Icon(Icons.flight_takeoff),
      title: Text("Delhi To Chennai"),
      subtitle: Text("Spice-Jet"),
      trailing: Icon(Icons.calendar_today),
      //selectedTileColor: Colors.teal,
    ),

    ListTile(
      leading: Icon(Icons.flight_takeoff),
      title: Text("Delhi To Hyderabad"),
      subtitle: Text("Spice-Jet"),
      trailing: Icon(Icons.calendar_today),
      //selectedTileColor: Colors.teal,
    ),

    Center(
        child: Container(
          padding: EdgeInsets.only(left: 20.0, top: 20.0, right: 20.0),
          alignment: Alignment.center,
          //color: Colors.teal,
          child: Column(
            children: <Widget>[
              FlightImageAsset(),
              FlightBookButton()],
          ),
        ))
  ]);
  return listView;
}
