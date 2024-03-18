import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
// import 'package:google_fonts/google_fonts.dart';
import 'package:hma_assignment_7/constant/color.dart';
import 'package:hma_assignment_7/constant/space.dart';
import 'package:hma_assignment_7/cubit/random_food_cubit.dart';
import 'package:hma_assignment_7/helper/help_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: ListView(
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
        children: [
          Column(
            children: [
              SizedBox(
                width: context.getWidth(),
                height: context.getHeight() * 0.75,
                child: Stack(
                  children: [
                    Container(
                      width: context.getWidth(),
                      height: context.getHeight() * 0.5,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: brown,
                        borderRadius: const BorderRadius.only(
                            bottomLeft: Radius.circular(30),
                            bottomRight: Radius.circular(20)),
                      ),
                    ),
                    Positioned(
                      right: 15,
                      top: 55,
                      child: SizedBox(
                          width: context.getWidth() * 0.8,
                          height: context.getHeight() * 0.6,
                          child: Text(
                            "Health is much more dependent on our habits and nutrition than on medicine .. ",
                            style: 
                            GoogleFonts.acme(
                              textStyle: 
                              TextStyle(
                                color: white,
                                fontSize: 30,
                                fontWeight: FontWeight.w900),
                          ),),
                          ),
                    ),
                    Positioned(
                        bottom: 5,
                        child:  Container(
                      width: context.getWidth() * 0.7,
                      height: context.getHeight() * 0.45,
                      decoration: BoxDecoration(
                        color: brown2,
                        image: const DecorationImage(
                            image: AssetImage(
                              "assets/food.jpg",
                            ),
                            fit: BoxFit.cover),
                        borderRadius: const BorderRadius.only(
                            topRight: Radius.circular(30)),
                      ),
                    ),
                    ),
                        
                  ],
                ),
              ),
              height24,
              Text(
                "Click button to get random food photo",
                textAlign: TextAlign.center,
                style:  GoogleFonts.acme( textStyle: TextStyle(
                    color: brown1, fontSize: 20, fontWeight: FontWeight.w600),
              ),),
              height24,
              SizedBox(
                
                      width: context.getWidth() * 0.6,
                      height: context.getHeight() * 0.05,

                child: ElevatedButton(
                  
                    style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(brown1),),
                    onPressed: () {
                      context.read<RandomFoodCubit>().getRandomFoodPhoto();
                    },
                    child: Text("Random Food", style:  GoogleFonts.abel( textStyle: TextStyle(color: white, fontSize: 22, fontWeight: FontWeight.w700),),),),
              ),
              height24,
              BlocConsumer<RandomFoodCubit, RandomFoodState>(
                listener: (context, state) {
                  if (state is ErrorState) {
                    ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text("Error to load photo")));
                  }
                },
                builder: (context, state) {
                  if (state is LoadingState) {
                    return Center(
                      child: CircularProgressIndicator(
                        color: brown,
                      ),
                    );
                  }
                  if (state is SuccessState) {
                    return Container(
                      width: context.getWidth() * 0.8,
                      height: context.getHeight() * 0.3,
                      decoration: BoxDecoration(
                        color: brown2,
                        image: DecorationImage(
                            image: NetworkImage(
                              state.photo,
                            ),
                            fit: BoxFit.cover),
                        borderRadius: const BorderRadius.only(
                            topRight: Radius.circular(30)),
                      ),
                    );
                  }
                  return const Text("");
                },
              ),
              height40,
            ],
          ),
        ],
      )),
    );
  }
}
