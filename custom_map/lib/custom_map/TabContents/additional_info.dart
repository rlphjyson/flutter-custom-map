import 'package:custom_map/constants/colors.dart';
import 'package:flutter/material.dart';

class AdditionalInfo extends StatelessWidget {
  const AdditionalInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
          height: 500,
          color: TimberlandColor.background,
          width: MediaQuery.of(context).size.width * 1,
          child: Align(
            alignment: Alignment.topCenter,
            child: Container(
              height: 300,
              width: 420,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    //info 1
                    Row(
                      children: [
                        SizedBox(
                          height: 50,
                          width: 100,
                          child: Center(
                            child: Image.asset(
                              'assets/arrowsWhite.png',
                              width: 50,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 50,
                          width: 320,
                          child: Center(
                            child: Text(
                                'Directional arrows. Trails are one way unless specified.'),
                          ),
                        )
                      ],
                    ),
                    //info 2
                    Row(
                      children: [
                        SizedBox(
                          height: 50,
                          width: 100,
                          child: Center(
                            child: Image.asset(
                              'assets/greenDots.png',
                              width: 50,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 50,
                          width: 320,
                          child: Center(
                            child: Text(
                                'Green dots indicate the recommended route for first-time visitors to TMBP.'),
                          ),
                        )
                      ],
                    ),
                    //info 3
                    Row(
                      children: [
                        SizedBox(
                          height: 20,
                          width: 100,
                          child: Center(
                            child: Image.asset(
                              'assets/yellowCircleIcon.png',
                              width: 50,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 50,
                          width: 320,
                          child: Center(
                            child: Text(
                                'Wayfinders contain directional information and also indicate when trails merge or branch out.'),
                          ),
                        )
                      ],
                    ),
                    //info 4
                    Row(
                      children: [
                        SizedBox(
                          height: 50,
                          width: 100,
                          child: Center(
                            child: Image.asset(
                              'assets/CameraIcons.png',
                              width: 50,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 50,
                          width: 320,
                          child: Center(
                            child: Text(
                                'Points of interest, rest stops & designated photo spots. These locations also contain airhorns for emergency signalling'),
                          ),
                        )
                      ],
                    ),
                  ]),
            ),
          )),
    );
  }
}
