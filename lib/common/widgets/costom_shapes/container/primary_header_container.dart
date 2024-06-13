import 'package:e_commerce_app/common/widgets/costom_shapes/container/circular_container.dart';
import 'package:e_commerce_app/common/widgets/costom_shapes/curved_edges/curved_edges_widgets.dart';
import 'package:e_commerce_app/utility/constants/colors.dart';
import 'package:flutter/material.dart';

class PrimaryHeaderContainer extends StatelessWidget {
  const PrimaryHeaderContainer({
    super.key,
    required this.child,
  });
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return CurvedEdgesWidgets(
      child: Container(
        color: TColors.primary,
        child: Stack(
          children: [
            Positioned(
              top: -150,
              right: -250,
              child: TCircularcontainer(
                backgroundcolor: TColors.white.withOpacity(0.1),
              ),
            ),
            Positioned(
              top: 100,
              right: -300,
              child: TCircularcontainer(
                backgroundcolor: TColors.white.withOpacity(0.1),
              ),
            ),
            child
          ],
        ),
      ),
    );
  }
}
