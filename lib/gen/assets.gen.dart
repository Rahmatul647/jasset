/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';

class $AssetsIconsGen {
  const $AssetsIconsGen();

  /// File path: assets/icons/arrow-left_icons.svg
  String get arrowLeftIcons => 'assets/icons/arrow-left_icons.svg';

  /// File path: assets/icons/burger_menu_icon.svg
  String get burgerMenuIcon => 'assets/icons/burger_menu_icon.svg';

  /// File path: assets/icons/camera.svg
  String get camera => 'assets/icons/camera.svg';

  /// File path: assets/icons/clipboard.svg
  String get clipboard => 'assets/icons/clipboard.svg';

  /// File path: assets/icons/clock.svg
  String get clock => 'assets/icons/clock.svg';

  /// File path: assets/icons/database.svg
  String get database => 'assets/icons/database.svg';

  /// File path: assets/icons/eye-alt.svg
  String get eyeAlt => 'assets/icons/eye-alt.svg';

  /// File path: assets/icons/eye-close.svg
  String get eyeClose => 'assets/icons/eye-close.svg';

  /// File path: assets/icons/home.svg
  String get home => 'assets/icons/home.svg';

  /// File path: assets/icons/icon_wrap.svg
  String get iconWrap => 'assets/icons/icon_wrap.svg';

  /// File path: assets/icons/image-gallery.svg
  String get imageGallery => 'assets/icons/image-gallery.svg';

  /// File path: assets/icons/image.svg
  String get image => 'assets/icons/image.svg';

  /// File path: assets/icons/log_out_icon.svg
  String get logOutIcon => 'assets/icons/log_out_icon.svg';

  /// File path: assets/icons/page.svg
  String get page => 'assets/icons/page.svg';

  /// File path: assets/icons/pencil_edit.svg
  String get pencilEdit => 'assets/icons/pencil_edit.svg';

  /// File path: assets/icons/settings.svg
  String get settings => 'assets/icons/settings.svg';

  /// File path: assets/icons/switch-horizontal.svg
  String get switchHorizontal => 'assets/icons/switch-horizontal.svg';

  /// File path: assets/icons/user.svg
  String get user => 'assets/icons/user.svg';

  /// File path: assets/icons/icon_laptop.svg
  String get icon_laptop => 'assets/icons/user.svg';

  /// List of all assets
  List<String> get values => [
        arrowLeftIcons,
        burgerMenuIcon,
        camera,
        clipboard,
        clock,
        database,
        eyeAlt,
        eyeClose,
        home,
        iconWrap,
        imageGallery,
        image,
        logOutIcon,
        page,
        pencilEdit,
        settings,
        switchHorizontal,
        user
      ];
}

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/avatar.png
  AssetGenImage get avatar => const AssetGenImage('assets/images/avatar.png');

  /// File path: assets/images/contoh_tanda_tangan.png
  AssetGenImage get contohTandaTangan =>
      const AssetGenImage('assets/images/contoh_tanda_tangan.png');

  /// File path: assets/images/folder.svg
  String get folder => 'assets/images/folder.svg';

  /// File path: assets/images/logomark.svg
  String get logomark => 'assets/images/logomark.svg';

  /// File path: assets/images/signature_false.png
  AssetGenImage get signatureFalse =>
      const AssetGenImage('assets/images/signature_false.png');

  /// File path: assets/images/signature_true.png
  AssetGenImage get signatureTrue =>
      const AssetGenImage('assets/images/signature_true.png');

  /// List of all assets
  List<dynamic> get values => [
        avatar,
        contohTandaTangan,
        folder,
        logomark,
        signatureFalse,
        signatureTrue
      ];
}

class $AssetsLottieGen {
  const $AssetsLottieGen();

  /// File path: assets/lottie/check.json
  String get check => 'assets/lottie/check.json';

  /// File path: assets/lottie/empty_box.json
  String get emptyBox => 'assets/lottie/empty_box.json';

  /// File path: assets/lottie/warning_red.json
  String get warningRed => 'assets/lottie/warning_red.json';

  /// List of all assets
  List<String> get values => [check, emptyBox, warningRed];
}

class Assets {
  Assets._();

  static const $AssetsIconsGen icons = $AssetsIconsGen();
  static const $AssetsImagesGen images = $AssetsImagesGen();
  static const $AssetsLottieGen lottie = $AssetsLottieGen();
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
