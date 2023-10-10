import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool isHide = true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Text(
                  "Login Page",
                  style: TextStyle(color: Colors.black, fontSize: 20.0),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text("Phone Number"),
              SizedBox(
                height: 5,
              ),
              TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: 'Enter Your Phone Number',
                  hintText: "+91 90682220575",
                  border: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Colors.redAccent, width: 2)),
                  fillColor: Colors.white,
                  prefixIcon: Icon(Icons.phone),
                  filled: true,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text("User Name"),
              SizedBox(
                height: 5,
              ),
              TextField(
                keyboardType: TextInputType.number,
                obscureText: isHide,
                decoration: InputDecoration(
                  labelText: 'Enter Your Phone Number',
                  hintText: "+91 90682220575",
                  border: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Colors.redAccent, width: 2)),
                  fillColor: Colors.white,
                  prefixIcon: Icon(Icons.lock),
                  filled: true,
                  suffixIcon: isHide
                      ? InkWell(
                          onTap: () {
                            setState(() {
                              isHide = !isHide;
                            });
                          },
                          child: Icon(Icons.visibility_off))
                      : InkWell(
                          onTap: () {
                            setState(() {
                              isHide = !isHide;
                            });
                          },
                          child: Icon(Icons.visibility)),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Container(
                padding: EdgeInsets.all(20.0),
                decoration: BoxDecoration(
                    color: Color(0xFF4CE5B1),
                    borderRadius: BorderRadius.circular(10.0)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.lock_clock,
                      color: Color(0xFF944433),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      "Login",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
