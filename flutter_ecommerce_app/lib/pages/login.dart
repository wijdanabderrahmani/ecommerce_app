import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final Widget backArrow = Image.asset(
    'assets/images/png/left-arrow.png',
    // semanticsLabel: 'Retour en arrière',
    width: 20,
    fit: BoxFit.scaleDown,
  );

  final Widget redRightArrow = Image.asset(
    'assets/images/png/red-right-arrow.png',
    width: 15,
    fit: BoxFit.scaleDown,
  );

  final Widget googleAsset = Image.asset(
    'assets/images/png/google.png',
    width: 25,
    fit: BoxFit.scaleDown,
  );
  final Widget facebookAsset = Image.asset(
    'assets/images/png/facebook.png',
    width: 25,
    fit: BoxFit.scaleDown,
  );

  Widget build(BuildContext context) {
    const mainBgColor = Color(0xfff9f9f9);
    const white = Color(0xffffffff);

    return Scaffold(
        appBar: AppBar(
            backgroundColor: mainBgColor, toolbarHeight: 30, elevation: 0),
        body: SafeArea(
            child: Container(
          decoration: const BoxDecoration(
            color: mainBgColor,
          ),
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                margin: const EdgeInsets.only(bottom: 80.0),
                child: Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        backArrow,
                        Container(
                          margin: const EdgeInsets.only(top: 20),
                          child: const Text('Login',
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                  fontSize: 30.0, fontWeight: FontWeight.bold)),
                        ),
                      ]),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 25),
                child: const Column(children: [
                  Card(
                    child: TextField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                          ),
                          labelText: 'Email',
                          floatingLabelStyle: TextStyle(height: 3),
                          contentPadding: EdgeInsets.only(left: 15, right: 15)),
                    ),
                  ),
                  Card(
                    child: TextField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                          ),
                          labelText: 'Password',
                          floatingLabelStyle: TextStyle(height: 3),
                          contentPadding: EdgeInsets.only(left: 15, right: 15)),
                    ),
                  ),
                ]),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(context,
                          '/forgotpassword'); // Redirection vers la page "Forgot Password"
                    },
                    child: const Text(
                      "Forgot your password ? ",
                      style: TextStyle(fontSize: 15.0, color: Colors.black),
                    ),
                  ),
                  redRightArrow,
                ],
              ),
              Container(
                  width: double.infinity,
                  padding: const EdgeInsets.only(top: 15, bottom: 15),
                  child: const FilledButton(
                    onPressed: null,
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStatePropertyAll<Color>(Colors.red),
                    ),
                    child: Text(
                      "LOGIN",
                      style: TextStyle(color: Colors.white, letterSpacing: 1),
                    ),
                  )),
            ],
          ),
        )),
        bottomNavigationBar: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text(
              "Or login with social account",
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: const EdgeInsets.only(
                      left: 20, top: 10, right: 20, bottom: 10),
                  decoration: const BoxDecoration(
                      color: white,
                      borderRadius: BorderRadius.all(Radius.circular(30))),
                  child: facebookAsset,
                ),
                Container(
                  padding: const EdgeInsets.only(
                      left: 20, top: 10, right: 20, bottom: 10),
                  decoration: const BoxDecoration(
                      color: white,
                      borderRadius: BorderRadius.all(Radius.circular(30))),
                  child: googleAsset,
                )
              ],
            ),
            const SizedBox(height: 50)
          ],
        ));
  }
}
