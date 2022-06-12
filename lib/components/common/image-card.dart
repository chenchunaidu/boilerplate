import 'package:flutter/material.dart';
import 'package:interest_calculator/components/common/image.dart';
import 'package:interest_calculator/components/common/typography/index.dart';

class ImageCard extends StatelessWidget {
  ImageCard({
    Key? key,
    required this.image,
    this.frameBuilder,
    this.loadingBuilder,
    this.errorBuilder,
    this.semanticLabel,
    this.excludeFromSemantics = false,
    this.width,
    this.height,
    this.color,
    this.opacity,
    this.colorBlendMode,
    this.fit,
    this.alignment = Alignment.center,
    this.repeat = ImageRepeat.noRepeat,
    this.centerSlice,
    this.matchTextDirection = false,
    this.gaplessPlayback = false,
    this.isAntiAlias = false,
    this.filterQuality = FilterQuality.low,
    this.borderRadius = 0,
  }) : super(key: key);

  final ImageProvider<Object> image;
  final ImageFrameBuilder? frameBuilder;
  final ImageLoadingBuilder? loadingBuilder;
  final ImageErrorWidgetBuilder? errorBuilder;
  final double? width;
  final double? height;
  final Color? color;
  final Animation<double>? opacity;
  final FilterQuality filterQuality;
  final BlendMode? colorBlendMode;
  final BoxFit? fit;
  final AlignmentGeometry alignment;
  final ImageRepeat repeat;
  final Rect? centerSlice;
  final bool matchTextDirection;
  final bool gaplessPlayback;
  final String? semanticLabel;
  final bool excludeFromSemantics;
  final bool isAntiAlias;
  final double borderRadius;

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
      Stack(
        children: <Widget>[
          CustomImage(
            image: image,
            color: color,
            frameBuilder: frameBuilder,
            loadingBuilder: loadingBuilder,
            errorBuilder: errorBuilder,
            width: width,
            height: height,
            opacity: opacity,
            filterQuality: filterQuality,
            colorBlendMode: colorBlendMode,
            fit: fit,
            alignment: alignment,
            repeat: repeat,
            centerSlice: centerSlice,
            matchTextDirection: matchTextDirection,
            gaplessPlayback: gaplessPlayback,
            semanticLabel: semanticLabel,
            excludeFromSemantics: excludeFromSemantics,
            isAntiAlias: isAntiAlias,
          ),
          Positioned.fill(
              child: Container(
                  padding: const EdgeInsets.only(left: 10, top: 20, bottom: 20),
                  alignment: Alignment.bottomLeft,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: <Color>[
                        Colors.black.withAlpha(0),
                        Colors.black54,
                        Colors.black87,
                        Colors.black
                      ],
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      CustomTypography(
                        'Goa',
                        as: 'Header3',
                        color: Colors.white,
                      ),
                      CustomTypography(
                        'Goa is a state in western India with coastlines stretching along the Arabian Sea.',
                        as: 'Body',
                        color: Colors.white,
                      ),
                    ],
                  )))
        ],
      )
    ]);
  }
}
