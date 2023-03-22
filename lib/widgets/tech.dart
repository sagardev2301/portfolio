import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Technologies extends StatelessWidget {
  const Technologies({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(100, 10, 100, 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            flex: 1,
            child: Center(
              child: SizedBox(
                height: 400,
                width: 400,
                child: Lottie.asset('lottie/technology.json'),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Stack(children: [
              Container(
                padding: const EdgeInsets.fromLTRB(30, 15, 30, 15),
                decoration: BoxDecoration(
                    border: Border.all(width: 1, color: Colors.black),
                    borderRadius: BorderRadius.circular(20)),
                height: 250,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Languages and tools",
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Expanded(
                        child: GridView.builder(
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 5, childAspectRatio: 6 / 4),
                          itemCount: 10,
                          itemBuilder: (context, index) =>
                              Image.asset('images/$index' '_opaque.png'),
                        ),
                      )
                    ]),
              ),
            ]),
          )
        ],
      ),
    );
  }
}
