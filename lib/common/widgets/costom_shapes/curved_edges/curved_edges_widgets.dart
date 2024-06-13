import 'package:e_commerce_app/common/widgets/costom_shapes/curved_edges/curved_edges.dart';
import 'package:flutter/material.dart';

class CurvedEdgesWidgets extends StatelessWidget {
  const CurvedEdgesWidgets({
    super.key,
    this.child,
  });
  final Widget? child;
  @override
  Widget build(BuildContext context) {
    return ClipPath(clipper: TCustomCurvedEdges(), child: child);
  }
}
