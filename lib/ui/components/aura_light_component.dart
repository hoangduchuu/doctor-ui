import 'package:flutter/material.dart';

class AuraLightComponent extends StatelessWidget {
  const AuraLightComponent({Key? key, this.size = 210, this.space1 = 40,this.space2= 80}) : super(key: key);
  final double size;
  final double space1,space2;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size,
      width: size,
      decoration: BoxDecoration(
        color: const Color(0xFF6F75E6).withOpacity(0.25),
        borderRadius: BorderRadius.circular(size / 2),
      ),
      child: Center(
        child: Container(
          height: size - space1,
          width: size - space1,
          decoration: BoxDecoration(
            color: const Color(0xFF6D72E3).withOpacity(0.35),
            borderRadius: BorderRadius.circular((size - space1) / 2),
          ),
          child: Center(
            child: Container(
              height: size-space2,
              width: size-space2,
              decoration: BoxDecoration(
                color: const Color(0xFF6D72E3).withOpacity(0.50),
                borderRadius: BorderRadius.circular((size-space2) / 2),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
