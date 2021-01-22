import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:i_rich/home/bottomnavbar.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => new _LoginPageState();
}

final text = Text(
  'Login',
  maxLines: 3,
  overflow: TextOverflow.ellipsis,
  style: GoogleFonts.lato(
      color: Colors.white,
      decoration: TextDecoration.underline,
      decorationColor: Colors.white,
      decorationStyle: TextDecorationStyle.double,
      fontWeight: FontWeight.w900,
      fontStyle: FontStyle.italic,
      fontSize: 25),
);

class _LoginPageState extends State<LoginPage> {
  bool _secureText = true;
  showHide() {
    setState(() {
      _secureText = !_secureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    final logo = Hero(
        tag: 'hero',
        child: CircleAvatar(
          radius: 80.0,
          backgroundColor: Colors.transparent,
          child: Image.asset('images/user.png'),
        ));

    final email = TextFormField(
      // ignore: missing_return
      validator: (e) {
        if (e.isEmpty) {
          return "Please insert email";
        }
      },
      keyboardType: TextInputType.emailAddress,
      autofocus: false,
      decoration: InputDecoration(
        suffixIcon: Icon(Icons.email_rounded),
        hintText: 'Email',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
      ),
    );

    final password = TextFormField(
      autofocus: false,
      obscureText: _secureText,
      decoration: InputDecoration(
        suffixIcon: IconButton(
          onPressed: showHide,
          icon: Icon(_secureText ? Icons.visibility_off : Icons.visibility),
        ),
        hintText: 'Password',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
      ),
    );

    final loginbutton = Padding(
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
              MaterialPageRoute(builder: (context) => MyBottomNavigationBar()),
            );
          },
          color: Colors.lightBlueAccent,
          child: Text('Login', style: TextStyle(color: Colors.white)),
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
            email,
            SizedBox(height: 20),
            password,
            SizedBox(height: 20),
            loginbutton,
            BackButton()
          ],
        ),
      ),
    ));
  }
}
