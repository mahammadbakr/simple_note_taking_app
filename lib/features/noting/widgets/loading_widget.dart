import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:shimmer/shimmer.dart';

import '../../../core/theme/theme.dart';

class LoadingWidget extends StatelessWidget {
  const LoadingWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: SizedBox(
        width: 45,
        height: 45,
        child: SpinKitFadingFour(
        color: kcBlack,
        size: 30,
      ),
      ),
    );
  }
}

class LoadingShimmerWidget extends StatelessWidget {
  final double width;
  final double height;
  const LoadingShimmerWidget(
      {Key? key, required this.width, required this.height})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Shimmer.fromColors(
        baseColor: kcDivider.withOpacity(0.2),
        highlightColor: kcDivider.withOpacity(0.6),
        child: Container(
          width: width,
          height: height,
          color: kcDivider,
        ),
      ),
    );
  }
}
