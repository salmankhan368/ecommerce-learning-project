import 'package:flutter/material.dart';

import 'package:s_store/common/widgets/custom_shape/curved_edge/curved_edges.dart';

class SCurvedEdgeWidget extends StatelessWidget {
  const SCurvedEdgeWidget({super.key, required this.child});
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return ClipPath(clipper: SCustomCurvedEdges(), child: child);
  }
}
