import 'package:flutter/material.dart';
import 'register.dart';

class Login extends StatelessWidget {
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
              child: Padding(
                padding: EdgeInsets.fromLTRB(0, 50, 0, 0),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(bottom: 20),
                        child: Image.asset("graphics/logo.png",width: 100,height: 100,),
                      ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: Colors.white.withOpacity(0.8),
                            ),
                            child: Column(
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.fromLTRB(10,0,10,0),
                                  child: TextField(
                                    decoration: InputDecoration(
                                      labelText: 'Email',
                                      icon: Icon(Icons.person),
                                    ),
                                  ),
                                ),
                                Padding(
                                    padding: const EdgeInsets.fromLTRB(10,0,10,0),
                                  child: Password()
                                ),

                                Padding(
                                  padding: const EdgeInsets.all(10),
                                  child: FlatButton(

                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20),
                                  ),
                                    color: Colors.yellow[700],
                                    onPressed: (){},
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: <Widget>[
                                        Icon(Icons.input),
                                        SizedBox.fromSize(size: Size(3, 0),),
                                        Text(
                                          "Login",
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                FlatButton(
                                  onPressed: () {
                                    showDialog(
                                      context: context,
                                      builder: (context) {
                                        return AlertDialog(
                                          title: Text(
                                            "Forgot Password"
                                          ),
                                          content: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment: CrossAxisAlignment.center,
                                            children: <Widget>[
                                              Text(
                                                "Enter your email address bellow"
                                              ),
                                              SizedBox.fromSize(
                                                size: Size(
                                                  0,10
                                                ),
                                              ),
                                              TextField(
                                                decoration: new InputDecoration(
                                                  labelText: "Email",
                                                  border: OutlineInputBorder(
                                                    borderSide: BorderSide(color: Colors.greenAccent, width: 2.0),
                                                  ),
                                                )
                                              ),
                                              SizedBox.fromSize(
                                                size: Size(
                                                    0,10
                                                ),
                                              ),

                                              Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment: MainAxisAlignment.center,
                                                children: <Widget>[
                                                  Expanded(
                                                    flex: 1,
                                                    child: FlatButton(
                                                      onPressed: () {  },
                                                      child: Text(
                                                        "SEND",
                                                        style: TextStyle(
                                                            color: Colors.white
                                                        ),
                                                      ),
                                                      color: Colors.green,
                                                    ),
                                                  ),
                                                  SizedBox.fromSize(
                                                    size: Size(
                                                        5,0
                                                    ),
                                                  ),
                                                  Expanded(
                                                    flex: 1,
                                                    child: FlatButton(
                                                      color: Colors.red,
                                                      onPressed: () {
                                                        Navigator.pop(context);
                                                      },
                                                      child: Text(
                                                        "CANCEL",
                                                        style: TextStyle(
                                                            color: Colors.white
                                                        ),
                                                      ),
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ],

                                          ),
                                          actions: null,
                                        );
                                      },
                                    );

                                  },
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Icon(Icons.help),
                                      SizedBox.fromSize(
                                        size: Size(3, 0),
                                      ),
                                      Text("Forgot Password?",
                                        style: TextStyle(
                                          decoration: TextDecoration.underline,
                                        ),
                                      ),
                                    ],
                                  )
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Text(
                                        "Not registered yet? "
                                      ),
                                      GestureDetector(
                                        onTap: (){
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(builder: (context) => SignUp()));
                                        },
                                        child: Text(
                                          "SIGN UP",
                                          style: TextStyle(
                                            color: Colors.blueAccent,
                                            decoration: TextDecoration.underline,
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                ]),
              ),
            ),
          ),
        ),
    );
  }
}

class Password extends StatefulWidget {
  @override
  _PasswordState createState() => _PasswordState();
}

class _PasswordState extends State<Password> {
  bool showPassword = false;
  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: !this.showPassword,
      decoration: InputDecoration(
        labelText: 'Password',
        icon: Icon(Icons.lock),
        suffixIcon: IconButton(
          icon: Icon(
            Icons.remove_red_eye,
            color: this.showPassword ? Colors.blue : Colors.grey,
          ),
          onPressed: () {
            setState(() => this.showPassword = !this.showPassword);
          },
        ),
      ),
    );
  }
}

