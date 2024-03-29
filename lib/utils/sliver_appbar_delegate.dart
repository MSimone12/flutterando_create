import 'package:flutter/material.dart';
import 'dart:math' as math;

class SliverAppBarDelegate extends SliverPersistentHeaderDelegate {

  final double minHeight;
  final double maxHeight;
  final Widget child;

  SliverAppBarDelegate({
    @required this.minHeight,
    @required this.maxHeight,
    @required this.child,
  });

  @override
  double get minExtent => minHeight;

  @override
  double get maxExtent => math.max(maxHeight, minHeight);

  @override
  Widget build(BuildContext context, double shrinkOffset, bool overlapsContent) => SizedBox.expand(child: child);

  @override
  bool shouldRebuild(SliverAppBarDelegate oldDelegate) {
    return false;
  }
}