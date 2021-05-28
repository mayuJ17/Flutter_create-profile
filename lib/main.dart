import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: MyForm()));
}

class MyForm extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyFormState();
  }
}

class MyFormState extends State<MyForm> {
  var _myFormKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("User Profile"),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 25.0, horizontal: 25.0),
        child: Form(
          key: _myFormKey,
          child: Column(
            children: <Widget>[
              TextFormField(
                validator: (String msg) {
                  if (msg.isEmpty) {
                    return "Please enter first name";
                  }
                  if (msg.length < 3) {
                    return "First Name must be more than 3 characters";
                  }
                  return null;
                },
                decoration: InputDecoration(
                    labelText: "First Name", hintText: "Enter your first name"),
              ),
              TextFormField(
                validator: (String msg1) {
                  if (msg1.isEmpty) {
                    return "Please enter last name";
                  }
                  if (msg1.length < 3) {
                    return "Last Name is must be more than 3 characters";
                  }
                  return null;
                },
                decoration: InputDecoration(
                    labelText: "Last Name", hintText: "Enter your last name"),
              ),
              TextFormField(
                validator: (String msg2) {
                  if (msg2.isEmpty) {
                    return "Please enter date of birth";
                  }
                  return null;
                },
                decoration: InputDecoration(
                    labelText: "Date of Birth",
                    hintText: "Enter your date of birth"),
              ),
              TextFormField(
                validator: (String msg3) {
                  if (msg3.isEmpty) {
                    return "Please enter pincode";
                  }
                  if (msg3.length < 5 || msg3.length > 5) {
                    return "Pincode must be of 5 digits";
                  }
                  return null;
                },
                decoration: InputDecoration(
                    labelText: "Pincode", hintText: "Enter your pincode"),
              ),
              TextFormField(
                validator: (String msg4) {
                  if (msg4.isEmpty) {
                    return "Please enter contact number";
                  }
                  if (msg4.length < 10 || msg4.length > 10) {
                    return "Contact number must be of 10 digits";
                  }
                  return null;
                },
                decoration: InputDecoration(
                    labelText: "Contact Number",
                    hintText: "Enter your contact number"),
              ),
              TextFormField(
                validator: (String msg5) {
                  if (msg5.isEmpty) {
                    return "Please enter blood group";
                  }
                  return null;
                },
                decoration: InputDecoration(
                    labelText: "Blood Group",
                    hintText: "Enter your blood group"),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.done),
        onPressed: () {
          _myFormKey.currentState.validate();
        },
      ),
    );
    // TODO: implement build
    throw UnimplementedError();
  }
}
