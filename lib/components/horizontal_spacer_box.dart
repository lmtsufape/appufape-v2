import 'package:flutter/material.dart';
import 'package:appufapev2/constants/constants.dart';

import 'vertical_spacer_box.dart';

class HorizontalSpacerBox extends StatelessWidget {
  final SpacerSize size;
  double buildSizes(SpacerSize size) {
    switch (size) {
      case SpacerSize.tiny:
        return kTinyHeight;
      case SpacerSize.small:
        return kSmallHeight;
      case SpacerSize.medium:
        return kMediumtHeight;
      case SpacerSize.large:
        return kLargeHeight;
      case SpacerSize.verylarge:
        return kVeryLargeHeight;
      default:
        return kMediumtHeight;
    }
  }

  const HorizontalSpacerBox({Key? key, required this.size}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(width: buildSizes(size));
  }
}
