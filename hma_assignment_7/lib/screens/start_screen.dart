import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hma_assignment_7/constant/color.dart';
import 'package:hma_assignment_7/constant/space.dart';
import 'package:hma_assignment_7/helper/help_screen.dart';
import 'package:hma_assignment_7/screens/home_screen.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
        child: Container(
          width: context.getWidth(),
          height: context.getHeight(),
          decoration: const BoxDecoration(
              image:
                  DecorationImage(image: AssetImage("assets/start_food.jpg"), fit: BoxFit.cover),),
          child: Column(
            children: [
              InkWell(
                onTap: (){
                  context.pushTo(view: const HomeScreen());
                },
                child: Container(
                  padding: const EdgeInsets.all(30),
                  width: context.getWidth(), // * 0.7,
                  height: context.getHeight(), // * 0.08,
                  alignment: Alignment.bottomCenter,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: brown,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        height24,
                         Text(
                            "Welcome",
                            style:
                            GoogleFonts.acme( textStyle: 

                             TextStyle(color: white, fontSize: 35, fontWeight: FontWeight.w800),
                          ),
                         ),
                        Container(
                          width: context.getWidth() * 0.7,
                                          height: context.getHeight() * 0.08,
                                          alignment: Alignment.center,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: black,
                        ),
                          child: Text(
                            "Start Explore Food",
                            style:  GoogleFonts.abel( textStyle: TextStyle(color: white, fontSize: 25, fontWeight: FontWeight.w800),
                          ),),
                        ),
                      ],
                    ),
                    ),
              ),
            ],
          ),
        ),
      )),
    );
  }
}
