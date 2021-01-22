import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => new _SignUpState();
}

final text = Text(
  'Sign Up',
  maxLines: 3,
  overflow: TextOverflow.ellipsis,
  style: GoogleFonts.lato(
      color: Colors.white,
      decoration: TextDecoration.underline,
      decorationColor: Colors.white,
      decorationStyle: TextDecorationStyle.wavy,
      fontWeight: FontWeight.w900,
      fontStyle: FontStyle.italic,
      fontSize: 25),
);

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    final logo = Hero(
        tag: 'hero',
        child: CircleAvatar(
          radius: 80.0,
          backgroundColor: Colors.transparent,
          child: Image.asset('images/user.png'),
        ));

    final username = TextFormField(
      keyboardType: TextInputType.emailAddress,
      cursorColor: Theme.of(context).accentColor,
      autofocus: false,
      decoration: InputDecoration(
        suffixIcon: Icon(Icons.insert_emoticon),
        hintText: 'Username',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
      ),
    );

    final email = TextFormField(
      keyboardType: TextInputType.emailAddress,
      cursorColor: Theme.of(context).accentColor,
      autofocus: false,
      decoration: InputDecoration(
        suffixIcon: Icon(Icons.alternate_email),
        hintText: 'Email',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
      ),
    );

    final password = TextFormField(
      autofocus: false,
      cursorColor: Theme.of(context).accentColor,
      obscureText: true,
      decoration: InputDecoration(
        suffixIcon: Icon(Icons.vpn_key),
        hintText: 'Password',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
      ),
    );

    final signupbutton = Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        borderRadius: BorderRadius.circular(30.0),
        shadowColor: Colors.lightBlueAccent.shade100,
        elevation: 5.0,
        child: MaterialButton(
          minWidth: 150.0,
          height: 20.0,
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SignUp()),
            );
          },
          color: Colors.lightBlueAccent,
          child: Text('Sign Up',
              style: TextStyle(
                color: Colors.white,
              )),
        ),
      ),
    );

    return Scaffold(
        body: Center(
      child: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [Colors.blue, Colors.white])),
        child: ListView(
          padding: EdgeInsets.only(left: 45.0, right: 45.0),
          children: <Widget>[
            SizedBox(height: 130.0),
            text,
            SizedBox(height: 50.0),
            logo,
            SizedBox(height: 48.0),
            username,
            SizedBox(height: 20),
            email,
            SizedBox(height: 20),
            password,
            SizedBox(height: 20),
            signupbutton,
            BackButton()
          ],
        ),
      ),
    ));
  }
}
