import 'package:flutter/material.dart';

class AdditionalInfo extends StatelessWidget {
  const AdditionalInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 500,
        color: const Color.fromARGB(255, 194, 181, 155),
        width: MediaQuery.of(context).size.width * 1,
        child: Image.asset(
          'assets/addtionalInfo.png',
        ),
      ),
    );
  }
}
