import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
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
          backgroundColor: mainBgColor,
          toolbarHeight: 30,
          elevation: 0,
          // padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Container(
              decoration: const BoxDecoration(
                color: mainBgColor,
              ),
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 20),
                  Container(
                    margin: const EdgeInsets.only(bottom: 10.0),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          backArrow,
                          Container(
                            margin: const EdgeInsets.only(top: 20),
                            child: const Text(
                              'Sign up',
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                  fontSize: 30.0, fontWeight: FontWeight.bold),
                            ),
                          )
                        ]),
                  ),
                  const SizedBox(height: 70),
                  const Card(
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
                  const SizedBox(height: 5),
                  const Card(
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
                  const SizedBox(height: 10),
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(context,
                          '/loginpage'); // Redirection vers la page "Forgot Password"
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        const Text(
                          'Already have an account ?',
                          style: TextStyle(fontSize: 15.0, color: Colors.black),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        redRightArrow,
                      ],
                    ),
                  ),
                  const SizedBox(height: 40),
                  Container(
                      width: double.infinity,
                      child: FilledButton(
                          onPressed: () {
                            Navigator.pushNamed(context, '/home');
                          },
                          style: const ButtonStyle(
                              backgroundColor:
                                  MaterialStatePropertyAll<Color>(Colors.red)),
                          child: Container(
                            padding: const EdgeInsets.only(top: 15, bottom: 15),
                            child: const Text(
                              "SIGN UP",
                              style: TextStyle(
                                  color: Colors.white, letterSpacing: 1),
                            ),
                          ))),
                ],
              ),
            ),
          ),
        ),
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
