import 'package:custom_map/custom_map/TabContents/additional_info.dart';
import 'package:custom_map/custom_map/TabContents/trail_directory.dart';
import 'package:custom_map/custom_map/TabContents/trail_progression.dart';
import 'package:custom_map/custom_map/tab_bar.dart';
import 'package:flutter/material.dart';

import 'custom_map.dart';

class CustomMapPage extends StatefulWidget {
  const CustomMapPage({Key? key}) : super(key: key);

  @override
  State<CustomMapPage> createState() => _CustomMapPageState();
}

class _CustomMapPageState extends State<CustomMapPage> {
  int _currentIndex = 0;
  late TransformationController _controller;

  @override
  void initState() {
    _controller = TransformationController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Column(
        children: [
          SizedBox(
              width: MediaQuery.of(context).size.width * 1,
              child: CustomMap(
                controller: _controller,
              )),
          Expanded(
            child: Column(
              children: [
                MapTabBar(
                  currentIndex: _currentIndex,
                  onTap: (index) {
                    setState(() {
                      _currentIndex = index;
                    });
                  },
                ),
                Expanded(
                  child: IndexedStack(
                    index: _currentIndex,
                    children: [
                      TrailDirectory(
                        controller: _controller,
                      ),
                      const TrailProgression(),
                      const AdditionalInfo(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
