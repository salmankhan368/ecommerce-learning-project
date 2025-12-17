import 'package:flutter/material.dart';
import 'package:s_store/common/widgets/custom_shape/containers/circuler_container.dart';
import 'package:s_store/common/widgets/custom_shape/curved_edge/curved_edges_widget.dart';
import 'package:s_store/utils/constants/colors.dart';

class SPrimaryHeaderContainer extends StatelessWidget {
  const SPrimaryHeaderContainer({super.key, required this.child});
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return SCurvedEdgeWidget(
      child: Container(
        color: SColors.primary,
        padding: EdgeInsets.only(bottom: 0),
        child: Stack(
          children: [
            Positioned(
              top: -150,
              right: -250,
              child: SCirculerContainer(
                backgroundColor: SColors.textWhite.withOpacity(0.1),
              ),
            ),
            Positioned(
              top: 100,
              right: -300,
              child: SCirculerContainer(
                backgroundColor: SColors.textWhite.withOpacity(0.1),
              ),
            ),
            child,
          ],
        ),
      ),
    );
  }
}
