import 'package:flutter/material.dart';

class MapTabBar extends StatelessWidget {
  final int currentIndex;
  final ValueChanged<int> onTap;

  const MapTabBar({super.key, required this.currentIndex, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(
          255, 194, 181, 155), // Customize the background color
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
            color: isSelected ? Colors.black : Colors.transparent,
            width: 2.0,
          ),
        ),
      ),
      child: Text(
        title,
        style: TextStyle(
          color: isSelected ? Colors.black : Colors.white,
          fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
        ),
      ),
    );
  }
}
