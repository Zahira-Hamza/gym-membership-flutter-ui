import 'package:flutter/material.dart';

extension ResponsiveSizing on num {
  // Scaling relative to a baseline mobile design width (e.g. 390px for iPhone 12/13/14)
  double w(BuildContext context) => (this / 390) * MediaQuery.of(context).size.width;

  // Scaling relative to a baseline mobile design height (e.g. 844px)
  double h(BuildContext context) => (this / 844) * MediaQuery.of(context).size.height;

  // Font scaling, generally scaling relative to width to maintain readability
  double sp(BuildContext context) => (this / 390) * MediaQuery.of(context).size.width;
}
