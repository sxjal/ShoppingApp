import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shoppingapp/constants/images.dart';
import 'package:shoppingapp/screens/innerscreen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(context) {
    final paddinghori = MediaQuery.of(context).size.width * 0.082;
    final paddingvert = MediaQuery.of(context).size.height * 0.15;

    return Scaffold(
      body: Center(
        child: GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus();
          },
          child: Stack(
            children: [
              Container(
                height: double.infinity,
                width: double.infinity,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(loginbg),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Container(
                height: double.infinity,
                width: double.infinity,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Color.fromARGB(74, 180, 107, 65),
                      Color.fromARGB(64, 180, 107, 65),
                      Color.fromARGB(38, 56, 87, 197),
                    ],
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 30.0, vertical: 70),
                child: Container(
                  height: double.infinity,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  //child: ,
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: paddinghori,
                  vertical: paddingvert,
                ),
                child: ClipRect(
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
                    child: Container(
                      width: double.infinity,
                      height: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        border: Border.all(
                          width: 1.0,
                          color: const Color.fromARGB(228, 255, 255, 255)
                              .withOpacity(0.2),
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: const Color.fromRGBO(73, 71, 71, 0.055)
                                .withOpacity(.2),
                            blurRadius: 10,
                            offset: const Offset(0, -20), // Shadow position
                          ),
                        ],
                        gradient: const LinearGradient(
                          colors: [
                            Color.fromRGBO(225, 225, 225, 0.069),
                            Color.fromRGBO(225, 225, 225, 0.203),
                            Color.fromRGBO(225, 225, 225, 0.038),
                          ],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                      ),
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const SizedBox(
                              height: 25,
                            ),
                            const Image(
                              image: AssetImage(logo),
                              height: 100,
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Text(
                              "SWIFT",
                              style: Theme.of(context)
                                  .textTheme
                                  .titleLarge!
                                  .copyWith(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 36,
                                    fontFamily:
                                        GoogleFonts.raleway().fontFamily,
                                  ),
                            ),
                            Text(
                              "Café",
                              style: Theme.of(context)
                                  .textTheme
                                  .titleLarge!
                                  .copyWith(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 28,
                                    fontFamily:
                                        GoogleFonts.raleway().fontFamily,
                                  ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Container(
                              decoration: const BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    color: Color.fromARGB(102, 231, 231, 231),
                                    spreadRadius: 10,
                                    blurRadius: 60,
                                  ),
                                ],
                              ),
                              child: Text(
                                "\"Latte but never late\"",
                                style: Theme.of(context)
                                    .textTheme
                                    .labelMedium!
                                    .copyWith(
                                      color: Colors.white,
                                      fontFamily: GoogleFonts.poppins(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w400,
                                      ).fontFamily,
                                    ),
                              ),
                            ),

                            Padding(
                              padding: EdgeInsets.symmetric(
                                horizontal: paddinghori,
                                vertical: paddingvert * .1,
                              ),
                              child: TextFormField(
                                decoration: const InputDecoration(
                                  fillColor: Colors.white,
                                  filled: false,
                                  enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Colors.white,
                                    ),
                                  ),
                                  border: UnderlineInputBorder(),
                                  labelText: 'Username',
                                  labelStyle: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(
                                horizontal: paddinghori,
                                vertical: 2,
                              ),
                              child: TextFormField(
                                decoration: const InputDecoration(
                                  fillColor: Colors.white,
                                  filled: false,
                                  enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Colors.white,
                                    ),
                                  ),
                                  border: UnderlineInputBorder(),
                                  labelText: 'Password',
                                  labelStyle: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: paddingvert * .2,
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(
                                horizontal: paddinghori * 1.2,
                                vertical: 10,
                              ),
                              child: SizedBox(
                                width: double.infinity,
                                child: DecoratedBox(
                                  decoration: BoxDecoration(
                                    gradient: const LinearGradient(
                                      colors: [
                                        Color.fromARGB(255, 77, 43, 26),
                                        Color.fromARGB(255, 167, 116, 90),
                                      ],
                                      begin: Alignment.centerLeft,
                                      end: Alignment.centerRight,
                                    ),
                                    borderRadius: BorderRadius.circular(20.0),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black.withOpacity(0.2),
                                        spreadRadius: 1,
                                        blurRadius: 7,
                                        offset: const Offset(0, 3),
                                      ),
                                    ],
                                  ),
                                  child: ElevatedButton(
                                    onPressed: () {
                                      Navigator.of(context)
                                          .push(MaterialPageRoute(
                                        builder: (context) => SecondScreen(),
                                      ));
                                    },
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.transparent,
                                      foregroundColor: Colors.white,
                                      shadowColor: Colors.transparent,
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(40.0),
                                      ),
                                    ),
                                    child: Text(
                                      "Login",
                                      style: Theme.of(context)
                                          .textTheme
                                          .labelMedium!
                                          .copyWith(
                                            color: Colors.white,
                                            fontWeight: FontWeight.w400,
                                            fontSize: 18,
                                          ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(
                                horizontal: paddinghori * 1.2,
                                vertical: 10,
                              ),
                              child: SizedBox(
                                width: double.infinity,
                                child: DecoratedBox(
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Colors.white,
                                    ),
                                    borderRadius: BorderRadius.circular(20.0),
                                  ),
                                  child: ElevatedButton(
                                    onPressed: () {},
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.transparent,
                                      foregroundColor: Colors.white,
                                      shadowColor: Colors.transparent,
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(40.0),
                                      ),
                                    ),
                                    child: Text(
                                      "SignUp",
                                      style: Theme.of(context)
                                          .textTheme
                                          .labelMedium!
                                          .copyWith(
                                            color: Colors.white,
                                            fontWeight: FontWeight.w400,
                                            fontSize: 18,
                                          ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: paddingvert * .122,
                            ),
                            TextButton(
                              onPressed: () {},
                              child: Text(
                                "Privacy Policy",
                                style: Theme.of(context)
                                    .textTheme
                                    .labelMedium!
                                    .copyWith(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 14,
                                    ),
                              ),
                            ),

                            //Text("sajal"),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
