import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SignUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("graphics/bg.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: SizedBox.expand(
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(bottom: 50),
                  child: Image.asset("graphics/logo.png",width: 100,height: 100,),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 0,
                    horizontal: 35
                  ),
                  child: Form(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(5)),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: TextFormField(
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                fillColor: Colors.white,
                                filled: true,
                                labelText: 'Full Name',
                                icon: Icon(Icons.person),
                              ),
                            ),
                          ),
                        ) ,
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(5)),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: TextFormField(
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                fillColor: Colors.white,
                                filled: true,
                                labelText: 'Mobile number',
                                icon: Icon(Icons.smartphone),
                              ),
                            ),
                          ),
                        ) ,
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(5)),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: TextFormField(
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                fillColor: Colors.white,
                                filled: true,
                                labelText: 'Email',
                                icon: Icon(Icons.alternate_email),
                              ),
                            ),
                          ),
                        ) ,
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(5)),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: TextFormField(
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                fillColor: Colors.white,
                                filled: true,
                                labelText: 'Password',
                                icon: Icon(Icons.lock),
                              ),
                            ),
                          ),
                        ) ,
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(5)),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: TextFormField(
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                fillColor: Colors.white,
                                filled: true,
                                labelText: 'Confirm Password',
                                icon: Icon(Icons.lock),
                              ),
                            ),
                          ),
                        ) ,
                        Container(
                          child: RadioButton(),
                          margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(5)),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Expanded(
                              flex: 1,
                              child: GestureDetector(
                                onTap: (){

                                },
                                child: Container(
                                  padding: EdgeInsets.symmetric(
                                      vertical: 10,
                                      horizontal: 20
                                  ),
                                  decoration: BoxDecoration(
                                      color: Colors.green,
                                      borderRadius: BorderRadius.all(Radius.circular(20))
                                  ),
                                  child: Text(
                                    "REGISTER",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.white,

                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: GestureDetector(
                                onTap: (){

                                },
                                child: Container(
                                  padding: EdgeInsets.symmetric(
                                    vertical: 10,
                                    horizontal: 20
                                  ),
                                  decoration: BoxDecoration(
                                    color: Colors.red,
                                    borderRadius: BorderRadius.all(Radius.circular(20))
                                  ),
                                  child: Text(
                                    "BACK",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.white,

                                    ),
                                  ),
                                ),
                              ),
                            )
                          ],
                        )
                      ],
                    ),

                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class RadioButton extends StatefulWidget {
  @override
  _RadioButtonState createState() => _RadioButtonState();
}

class _RadioButtonState extends State<RadioButton> {
  var groupValue = -1;
  @override
  Widget build(BuildContext context) {

    return Container(
      child: Row(
        children: <Widget>[
          Radio(
            groupValue: groupValue,
            onChanged: (value) {
              setState(() {
                groupValue = value;
              });
            },
            value: 0,
          ),
          Text(
            'I agree to '
          ),
          GestureDetector(
            onTap: (){
              showDialog(
                context: context,
                  builder: (context) {
                    return Dialog(
                      backgroundColor: Colors.transparent,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(5)
                        ),
                        padding: EdgeInsets.all(20),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              "Terms...............\n\n\n"
                            ),
                            Text(
                              "Conditions.............\n\n\n"
                            ),
                            FlatButton(
                              color: Colors.blueAccent,
                              onPressed: (){
                                Navigator.pop(context);
                              },
                              child: Text(
                               "OK",
                                style: TextStyle(
                                  color: Colors.white
                                ),
                             ),
                            )
                          ],
                        ),
                      ),
                    );
                  }
                );
            },
            child: Text(
              "T & C",
              style: TextStyle(
                color: Colors.blueAccent,
                decoration: TextDecoration.underline
              ),
            ),
          )
        ],
      ),
    );
  }
}

