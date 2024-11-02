import 'package:flutter/material.dart';
import '../../../components/animated_counter.dart';
import '../../../constants.dart';
import '../../../responsive.dart';
import 'heigh_light.dart';

class HighLightsInfo extends StatelessWidget {
  const HighLightsInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: defaultPadding,horizontal: 20),
      child: Responsive.isMobileLarge(context)
          ? const Column(
              children: [
                SizedBox(height: defaultPadding),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    HeighLight(
                      counter: AnimatedCounter(
                        value: 40,
                        text: "+",
                      ),
                      label: "GitHub Projects",
                    ),
                    HeighLight(
                      counter: AnimatedCounter(
                        value: 4,
                        text: "+",
                      ),
                      label: "Stars",
                    ),
                  ],
                ),
              ],
            )
          : const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                HeighLight(
                  counter: AnimatedCounter(
                    value: 40,
                    text: "+",
                  ),
                  label: "GitHub Projects",
                ),
                HeighLight(
                  counter: AnimatedCounter(
                    value: 4,
                    text: "+",
                  ),
                  label: "Stars",
                ),
              ],
            ),
    );
  }
}
