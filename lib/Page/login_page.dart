import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:tds_check_in/Page/checkin_page.dart';
import 'package:tds_check_in/Page/home_page.dart';
import '../constant.dart';

Color firstcolor = const Color.fromARGB(255, 31, 56, 245);
Color secondcolor = const Color.fromARGB(255, 30, 129, 242);
Color bgColor = const Color.fromARGB(255, 255, 255, 255);

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

bool _obscureText = true;

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController unameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final UsernameField = TextFormField(
        controller: unameController,
        autofocus: false,
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'Invalid Username';
          }
          return null;
        },
        decoration: InputDecoration(
            prefixIcon: const Icon(
              Icons.email,
            ),
            contentPadding: const EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
            hintText: "Username",
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))));

    final passwordField = TextFormField(
        controller: passwordController,
        obscureText: _obscureText,
        autofocus: false,
        validator: (value) {
          if (value == null || value.trim().isEmpty) {
            return 'Masukkan Password';
          }
          // Return null if the entered password is valid
          return null;
        },
        decoration: InputDecoration(
            contentPadding: const EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
            hintText: "Password",
            prefixIcon: const Icon(
              Icons.vpn_key,
            ),
            suffixIcon: IconButton(
              icon:
                  Icon(_obscureText ? Icons.visibility : Icons.visibility_off),
              onPressed: () {
                setState(() {
                  _obscureText = !_obscureText;
                });
              },
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(32.0),
            )));

    final loginButton = Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(100),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [firstcolor, secondcolor],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter),
            borderRadius: const BorderRadius.all(Radius.circular(100))),
        child: MaterialButton(
          minWidth: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          onPressed: () async {
            // if (_formKey.currentState!.validate()) {
            Navigator.push(
                context,
                CupertinoPageRoute(
                  builder: (context) => const HomePage(),
                ));
            // } else {
            //   ScaffoldMessenger.of(context).showSnackBar(
            //       const SnackBar(content: Text("Masukkan Input")));
            // }

            // Navigator.push(
            //     context,
            //     CupertinoPageRoute(
            //       builder: (context) => const CheckinPage(),
            //     ));

            // // if (_formKey.currentState!.validate()) {
            //   dynamic result = await _auth.signInEmailPassword(
            //       LoginUser(email: _email.text, password: _password.text));
            //   if (result.uid == null) {
            //     showDialog(
            //         context: context,
            //         builder: (context) {
            //           return AlertDialog(
            //             content: Text(result.code),
            //           );
            //         });
            //   }
            // }
          },
          child: Text(
            "Log in",
            style: TextStyle(
                color: Theme.of(context).primaryColorLight,
                fontWeight: FontWeight.bold,
                fontSize: 20),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );

    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: bgColor,
      body: Container(
        key: _formKey,
        padding: EdgeInsets.only(bottom: 20),
        height: double.infinity,
        width: double.infinity,
        child: Column(
          children: <Widget>[
            Container(
              height: MediaQuery.of(context).size.height * 0.4,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [firstcolor, secondcolor],
                      end: Alignment.bottomCenter,
                      begin: Alignment.topCenter),
                  borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(100))),
              child: Stack(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // Image.asset(
                      //   "images/Logo-white.png",
                      //   height: 300,
                      //   width: 300,
                      // ),
                    ],
                  ),
                ],
              ),
            ),
            Form(
              // key: _formKey,
              child: Expanded(
                flex: 1,
                child: Container(
                  margin: const EdgeInsets.only(left: 20, right: 20, top: 30),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: <Widget>[
                      const SizedBox(
                        height: 30,
                      ),
                      UsernameField,
                      const SizedBox(
                        height: 10,
                      ),
                      passwordField,
                      // Container(
                      //     margin: const EdgeInsets.only(top: 10),
                      //     alignment: Alignment.centerRight,
                      //     child: Padding(
                      //       padding: const EdgeInsets.symmetric(horizontal: 5),
                      //       child: Row(
                      //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      //         children: [
                      //           Row(
                      //             children: [
                      //               Checkbox(
                      //                 // value: rememberMe,
                      //                 value: false,
                      //                 onChanged: (value) {
                      //                   // setState(() => rememberMe = value!);
                      //                 },
                      //                 activeColor: Colors.black26,
                      //                 checkColor: Colors.black,
                      //               ),
                      //               Text(
                      //                 'Rememeber Me ..',
                      //                 style: kBodyText.copyWith(
                      //                     color: Colors.black),
                      //               ),
                      //             ],
                      //           ),
                      //           GestureDetector(
                      //             onTap: () {},
                      //             child: Text(
                      //               'Forgot Password?',
                      //               style:
                      //                   kBodyText.copyWith(color: Colors.black),
                      //             ),
                      //           ),
                      //         ],
                      //       ),
                      //     )),
                      const Spacer(),
                      // Row(
                      //   mainAxisAlignment: MainAxisAlignment.center,
                      //   children: [
                      //     Text(
                      //       'New?',
                      //       overflow: TextOverflow.ellipsis,
                      //       style: kBodyText.copyWith(color: Colors.black),
                      //     ),
                      //     TextButton(
                      //         onPressed: () {
                      //           // widget.toggleView!();
                      //         },
                      //         child: Text(
                      //           'Register Here',
                      //           overflow: TextOverflow.ellipsis,
                      //           style: kBodyText.copyWith(
                      //               color: Colors.black,
                      //               fontWeight: FontWeight.bold),
                      //         )),
                      //   ],
                      // ),
                      const SizedBox(
                        height: 10,
                      ),
                      loginButton
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
