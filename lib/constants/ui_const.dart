import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:twiffer/constants/assets.dart';
import 'package:twiffer/theme/pallete.dart';

class UIConst {
  static AppBar appbar() {
    return AppBar(
      title: SvgPicture.asset(
        AssetsConstants.twitterLogo,
        color: Pallete.blueColor,
        height: 30,
      ),
      centerTitle: true,
    );
  }
}
