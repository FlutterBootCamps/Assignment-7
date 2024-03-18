import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:try_auth_suba/cubit/food_cubit.dart';

class cubitHome extends StatelessWidget {
  const cubitHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height/1,
      width: MediaQuery.of(context).size.width*1,
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/food2.avif"), fit: BoxFit.cover)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BlocBuilder<FoodCubit, FoodState>(
              builder: (context, state) {
                if (state is FoodShow) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 16.0, horizontal: 16),
                    child: Column(
                      children: [
                        Container(
                          height: 300,
                          width: MediaQuery.of(context).size.width,
                          decoration: const BoxDecoration(color: Colors.black12),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Image.network(
                                state.image,
                                height: 200,
                                width: 200,
                                loadingBuilder:
                                    (context, child, loadingProgress) {
                                  if (loadingProgress == null) {
                                    return child;
                                  }
                                  return const Center(
                                    child: CircularProgressIndicator(
                                      color: Colors.black,
                                    ),
                                  );
                                },
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                }
                return const Center();
              },
            ),
            ElevatedButton(
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all(Colors.transparent),
                  elevation: MaterialStateProperty.all(8),
                  padding: MaterialStateProperty.all(
                      const EdgeInsets.symmetric(vertical: 16, horizontal: 24)),
                  textStyle: MaterialStateProperty.all(
                    const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
                onPressed: () {
                  context.read<FoodCubit>().getFoodImage(true);
                },
                child: const Text(
                  "Press here to get Random Food Photo",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.black),
                ))
          ],
        ),
      ),
    );
  }
}
