import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tds_check_in/Page/home_page.dart';

Color firstcolor = const Color.fromARGB(255, 31, 56, 245);
Color secondcolor = const Color.fromARGB(255, 30, 129, 242);
Color secondcolor2 = Color.fromARGB(255, 197, 211, 227);
Color thirdcolor = const Color.fromARGB(255, 255, 255, 255);

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    final loginButton = Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(100),
      child: Container(
        width: 330,
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
            Navigator.push(
                context,
                CupertinoPageRoute(
                  builder: (context) => const HomePage(),
                ));
          },
          child: Text(
            "Register",
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
      backgroundColor: Colors.white70.withOpacity(0.9),
      appBar: AppBar(
        shadowColor: Colors.transparent,
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [firstcolor, secondcolor],
                end: Alignment.bottomCenter,
                begin: Alignment.topCenter),
          ),
          child: Padding(
            padding: const EdgeInsets.only(top: 25, left: 8, right: 8),
            child: Row(
              children: <Widget>[
                Container(
                  alignment: Alignment.centerLeft,
                  width: AppBar().preferredSize.height + 40,
                  height: AppBar().preferredSize.height,
                  child: const Material(
                    color: Colors.transparent,
                  ),
                ),
                const Expanded(
                    flex: 8,
                    child: Center(
                      child: Text(
                        'Personal Register',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 22,
                            fontWeight: FontWeight.w600),
                      ),
                    )),
                SizedBox(
                  width: AppBar().preferredSize.height + 40,
                  height: AppBar().preferredSize.height,
                ),
              ],
            ),
          ),
        ),
      ),
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [secondcolor, thirdcolor])),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Expanded(
              flex: 8,
              child: Container(
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(60),
                        topRight: Radius.circular(60))),
                child: Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: SingleChildScrollView(
                    child: Padding(
                      padding: const EdgeInsets.all(30),
                      child: Column(
                        children: <Widget>[
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text("Nama Peserta"),
                                  const SizedBox(height: 10),
                                  TextFormField(
                                    autofocus: false,
                                    decoration: InputDecoration(
                                        contentPadding:
                                            const EdgeInsets.fromLTRB(
                                                20, 15, 20, 15),
                                        hintText: "",
                                        border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(32))),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text("Tanggal Lahir"),
                                  const SizedBox(height: 10),
                                  TextFormField(
                                    autofocus: false,
                                    decoration: InputDecoration(
                                        contentPadding:
                                            const EdgeInsets.fromLTRB(
                                                20, 15, 20, 15),
                                        hintText: "",
                                        border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(32))),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text("Usia"),
                                  const SizedBox(height: 10),
                                  TextFormField(
                                    autofocus: false,
                                    decoration: InputDecoration(
                                        contentPadding:
                                            const EdgeInsets.fromLTRB(
                                                20, 15, 20, 15),
                                        hintText: "",
                                        border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(32))),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text("Nama Ayah/Ibu"),
                                  const SizedBox(height: 10),
                                  TextFormField(
                                    autofocus: false,
                                    decoration: InputDecoration(
                                        contentPadding:
                                            const EdgeInsets.fromLTRB(
                                                20, 15, 20, 15),
                                        hintText: "",
                                        border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(32))),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text("No HP Orang Tua"),
                                  const SizedBox(height: 10),
                                  TextFormField(
                                    autofocus: false,
                                    decoration: InputDecoration(
                                        contentPadding:
                                            const EdgeInsets.fromLTRB(
                                                20, 15, 20, 15),
                                        hintText: "",
                                        border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(32))),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text("Asal Gereja"),
                                  const SizedBox(height: 10),
                                  TextFormField(
                                    autofocus: false,
                                    decoration: InputDecoration(
                                        contentPadding:
                                            const EdgeInsets.fromLTRB(
                                                20, 15, 20, 15),
                                        hintText: "",
                                        border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(32))),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text("Asal Sekolah"),
                                  const SizedBox(height: 10),
                                  TextFormField(
                                    autofocus: false,
                                    decoration: InputDecoration(
                                        contentPadding:
                                            const EdgeInsets.fromLTRB(
                                                20, 15, 20, 15),
                                        hintText: "",
                                        border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(32))),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text("Deskripsi"),
                                  const SizedBox(height: 10),
                                  TextFormField(
                                    textAlign: TextAlign.start,
                                    autofocus: false,
                                    decoration: InputDecoration(
                                        contentPadding:
                                            const EdgeInsets.fromLTRB(
                                                20, 50, 20, 50),
                                        hintText: "",
                                        border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(32))),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Colors.white,
                ),
                child: Padding(
                    padding: const EdgeInsets.only(left: 30, right: 30),
                    child: Center(
                      child: loginButton,
                    )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
