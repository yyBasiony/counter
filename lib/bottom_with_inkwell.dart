import 'package:flutter/material.dart';
class bottomWithInkwell extends StatelessWidget {
  final IconData icon;
  final VoidCallback onTap;
  final double size;
  final Color iconColor;
  final Color backgroundColor;
  final double borderRadius;

  const bottomWithInkwell({
    required this.icon,
    required this.onTap,
    this.size = 35.0,
    this.iconColor = const Color(0xFFf3d2c1),
    this.backgroundColor = const Color(0xFF8c7851),
    this.borderRadius = 10.0,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 50,
        width: 45,
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        child: Center(
          child: Icon(icon, size: size, color: iconColor),
        ),
      ),
    );
  }
}
