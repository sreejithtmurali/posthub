/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/image_not_found.png
  AssetGenImage get imageNotFound =>
      const AssetGenImage('assets/images/image_not_found.png');

  /// File path: assets/images/img_arrow_down.svg
  String get imgArrowDown => 'assets/images/img_arrow_down.svg';

  /// File path: assets/images/img_bi_eye_fill.svg
  String get imgBiEyeFill => 'assets/images/img_bi_eye_fill.svg';

  /// File path: assets/images/img_bi_eye_fill_onprimarycontainer.svg
  String get imgBiEyeFillOnprimarycontainer =>
      'assets/images/img_bi_eye_fill_onprimarycontainer.svg';

  /// File path: assets/images/img_ellipse_1.png
  AssetGenImage get imgEllipse1 =>
      const AssetGenImage('assets/images/img_ellipse_1.png');

  /// File path: assets/images/img_flatcoloriconsgoogle.svg
  String get imgFlatcoloriconsgoogle =>
      'assets/images/img_flatcoloriconsgoogle.svg';

  /// File path: assets/images/img_game_icons_click.svg
  String get imgGameIconsClick => 'assets/images/img_game_icons_click.svg';

  /// File path: assets/images/img_group_1.png
  AssetGenImage get imgGroup1 =>
      const AssetGenImage('assets/images/img_group_1.png');

  /// File path: assets/images/img_group_16.svg
  String get imgGroup16 => 'assets/images/img_group_16.svg';

  /// File path: assets/images/img_group_2.svg
  String get imgGroup2 => 'assets/images/img_group_2.svg';

  /// File path: assets/images/img_ic_round_home.svg
  String get imgIcRoundHome => 'assets/images/img_ic_round_home.svg';

  /// File path: assets/images/img_rectangle_3.png
  AssetGenImage get imgRectangle3 =>
      const AssetGenImage('assets/images/img_rectangle_3.png');

  /// File path: assets/images/img_rectangle_5.png
  AssetGenImage get imgRectangle5 =>
      const AssetGenImage('assets/images/img_rectangle_5.png');

  /// File path: assets/images/img_rectangle_6.png
  AssetGenImage get imgRectangle6 =>
      const AssetGenImage('assets/images/img_rectangle_6.png');

  /// File path: assets/images/img_rectangle_7.png
  AssetGenImage get imgRectangle7 =>
      const AssetGenImage('assets/images/img_rectangle_7.png');

  /// File path: assets/images/img_rectangle_7_304x329.png
  AssetGenImage get imgRectangle7304x329 =>
      const AssetGenImage('assets/images/img_rectangle_7_304x329.png');

  /// File path: assets/images/img_rectangle_8.png
  AssetGenImage get imgRectangle8 =>
      const AssetGenImage('assets/images/img_rectangle_8.png');

  /// File path: assets/images/img_user.svg
  String get imgUser => 'assets/images/img_user.svg';

  /// File path: assets/images/img_user_primarycontainer.svg
  String get imgUserPrimarycontainer =>
      'assets/images/img_user_primarycontainer.svg';

  /// File path: assets/images/img_vector.svg
  String get imgVector => 'assets/images/img_vector.svg';

  /// File path: assets/images/img_vector_black_900.svg
  String get imgVectorBlack900 => 'assets/images/img_vector_black_900.svg';

  /// File path: assets/images/img_vector_black_900_22x18.svg
  String get imgVectorBlack90022x18 =>
      'assets/images/img_vector_black_900_22x18.svg';

  /// List of all assets
  List<dynamic> get values => [
        imageNotFound,
        imgArrowDown,
        imgBiEyeFill,
        imgBiEyeFillOnprimarycontainer,
        imgEllipse1,
        imgFlatcoloriconsgoogle,
        imgGameIconsClick,
        imgGroup1,
        imgGroup16,
        imgGroup2,
        imgIcRoundHome,
        imgRectangle3,
        imgRectangle5,
        imgRectangle6,
        imgRectangle7,
        imgRectangle7304x329,
        imgRectangle8,
        imgUser,
        imgUserPrimarycontainer,
        imgVector,
        imgVectorBlack900,
        imgVectorBlack90022x18
      ];
}

class Assets {
  Assets._();

  static const $AssetsImagesGen images = $AssetsImagesGen();
}

class AssetGenImage {
  const AssetGenImage(this._assetName);

  final String _assetName;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.low,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider({
    AssetBundle? bundle,
    String? package,
  }) {
    return AssetImage(
      _assetName,
      bundle: bundle,
      package: package,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
