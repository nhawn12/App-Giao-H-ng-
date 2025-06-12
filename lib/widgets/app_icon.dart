// lib/widgets/app_icon.dart
import 'package:flutter/material.dart';

class AppIcon extends StatelessWidget {
  final IconData icon;
  final double size;
  final Color backgroundColor;
  final Color iconColor;
  final double iconSize;
  final VoidCallback? onTap;

  const AppIcon({
    Key? key,
    required this.icon,
    this.size = 40,
    this.iconSize = 16,
    this.backgroundColor =const Color(0xFFfcf4e4),
    this.iconColor =const Color(0xFF756d54),
    
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: backgroundColor,
          shape: BoxShape.circle,
        ),
        child: Icon(icon, size: size, color: iconColor),
      ),
    );
  }
}
