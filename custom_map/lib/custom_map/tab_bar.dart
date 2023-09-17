import 'package:custom_map/constants/colors.dart';
import 'package:flutter/material.dart';

class MapTabBar extends StatelessWidget {
  final int currentIndex;
  final ValueChanged<int> onTap;

  const MapTabBar({super.key, required this.currentIndex, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 1,
      decoration: const BoxDecoration(
        color: Color.fromARGB(134, 211, 211, 211),
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20), topRight: Radius.circular(20)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          GestureDetector(
            onTap: () => onTap(0),
            child: _buildTabItem(0, 'Trail Directory'),
          ),
          GestureDetector(
            onTap: () => onTap(1),
            child: _buildTabItem(1, 'Trail Progression'),
          ),
          GestureDetector(
            onTap: () => onTap(2),
            child: _buildTabItem(2, 'Additional Info'),
          ),
        ],
      ),
    );
  }

  Widget _buildTabItem(int index, String title) {
    final isSelected = index == currentIndex;
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 16.0),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: isSelected ? TimberlandColor.primary : Colors.transparent,
            width: 2.0,
          ),
        ),
      ),
      child: Text(
        title,
        style: TextStyle(
          color: isSelected ? TimberlandColor.primary : Colors.white,
          fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
        ),
      ),
    );
  }
}
