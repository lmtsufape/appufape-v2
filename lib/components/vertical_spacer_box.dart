import 'package:flutter/material.dart';
import 'package:appufapev2/constants/constants.dart';

enum SpacerSize { tiny, small, medium, large, verylarge }

class VerticalSpacerBox extends StatelessWidget {
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

  const VerticalSpacerBox({Key? key, required this.size}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(height: buildSizes(size));
  }
}
