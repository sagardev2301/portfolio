import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:velocity_x/velocity_x.dart';

// Completed
class Technologies extends StatelessWidget {
  const Technologies({super.key});

  @override
  Widget build(BuildContext context) {
    final width = context.screenWidth;
    final height = context.screenHeight;
    return Wrap(
      alignment: WrapAlignment.center,
      children: [
        Visibility(
          visible: width < 1000 ? false : true,
          child: SizedBox(
            width: width < 900 ? width * 1.0 : width * 0.45,
            height: width < 900 ? width * 0.6 : width * 0.3,
            child: Center(
              child: Lottie.asset('lottie/technology.json'),
            ),
          ),
        ),
        SizedBox(
          height: width < 900 ? 450 : 350,
          width: width < 900 ? width * 1.0 : width * 0.55,
          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: Stack(children: [
              Container(
                padding: const EdgeInsets.fromLTRB(30, 15, 30, 15),
                decoration: BoxDecoration(
                    border: Border.all(width: 1, color: Colors.black),
                    borderRadius: BorderRadius.circular(20)),
                height: width < 900 ? 450 : 350,
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
                      SizedBox(
                        height: width < 900 ? 310 : 210,
                        child: GridView.builder(
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                                  mainAxisSpacing: width < 900 ? 30 : 10,
                                  crossAxisCount: width < 900 ? 3 : 5,
                                  childAspectRatio:
                                      width < 900 ? 5 / 2 : 6 / 4),
                          itemCount: 10,
                          itemBuilder: (context, index) =>
                              Image.asset('images/$index' '_opaque.png'),
                        ),
                      )
                    ]),
              ),
            ]),
          ),
        )
      ],
    );
  }
}
