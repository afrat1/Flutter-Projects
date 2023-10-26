import 'package:flutter/material.dart';
import 'package:takvimim_app/login.dart';
import 'package:takvimim_app/sign_up.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: MediaQuery.of(context).size.height,
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 49),
          color: Colors.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              const Column(
                children: <Widget>[
                  Text(
                    "Hoş Geldiniz",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                        color: Colors.blue),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Randevularınızı Tek Bir Uygulama İle Yönetin",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFF757575),
                      fontSize: 15,
                      decoration: TextDecoration.underline, // Add this line
                    ),
                  )
                ],
              ),
              Container(
                height: MediaQuery.of(context).size.height / 1.69,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/logo-no-background.png"),
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              Column(
                children: <Widget>[
                  Hero(
                    tag: 'loginButton',
                    child: MaterialButton(
                      minWidth: double.infinity,
                      height: 60,
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LoginPage()));
                      },
                      shape: RoundedRectangleBorder(
                        side: const BorderSide(color: Colors.black),
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: const Text(
                        "Giriş Yap",
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 18),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Hero(
                    tag: 'signupButton',
                    child: Container(
                      padding: const EdgeInsets.only(top: 0, left: 0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        border: const Border(
                          bottom: BorderSide(color: Colors.black),
                          top: BorderSide(color: Colors.black),
                          left: BorderSide(color: Colors.black),
                          right: BorderSide(color: Colors.black),
                        ),
                      ),
                      child: MaterialButton(
                        minWidth: double.infinity,
                        height: 60,
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SignupPage()));
                        },
                        color: Colors.black87,
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: const Text(
                          "Üye Ol",
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 18,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
