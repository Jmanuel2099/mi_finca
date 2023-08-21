import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: [
            Container(
              padding: const EdgeInsets.only(top: 130, bottom: 40),
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 1.6,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(40),
                  bottomRight: Radius.circular(40),
                ),
                image: DecorationImage(
                    image: AssetImage("assets/images/welcome.jpg"),
                    fit: BoxFit.cover),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Mi finca",
                    style: GoogleFonts.jetBrainsMono(
                        fontSize: 70,
                        color: Colors.white,
                        fontWeight: FontWeight.w600),
                  )
                ],
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 2.666,
                padding: const EdgeInsets.only(top: 30, bottom: 30),
                decoration:const BoxDecoration(color: Colors.white),
                child: Column(
                  children: [
                    Text(
                      "Hola!          ",
                      style: GoogleFonts.jetBrainsMono(
                        color: const Color(0xFFEF8019),
                        fontSize: 45,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 40),
                      child: Text(
                        "Te ayudaremos a mejorar  la produccion y administracion de tu finca.",
                        textAlign: TextAlign.start,
                        style: GoogleFonts.jetBrainsMono(
                          fontSize: 20,
                          color: Colors.black.withOpacity(0.6),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 45,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Material(
                          color: const Color(0xFFF6D6B9),
                          borderRadius: BorderRadius.circular(10),
                          child: InkWell(
                            onTap: () {},
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 15, horizontal: 25),
                              child: Text(
                                "Registrarse",
                                style: GoogleFonts.jetBrainsMono(
                                    color: const Color(0xFFEF8019),
                                    fontSize: 22,
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: 1),
                              ),
                            ),
                          ),
                        ),
                        Material(
                          color: const Color(0xFFEF8019),
                          borderRadius: BorderRadius.circular(10),
                          child: InkWell(
                            onTap: () {},
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 15, horizontal: 40),
                              child: Text(
                                "Ingresar",
                                style: GoogleFonts.jetBrainsMono(
                                    color: const Color(0xFFF6D6B9),
                                    fontSize: 22,
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: 1),
                              ),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
