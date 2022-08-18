import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:recipe_detail_flutter_ui/config/colors.dart';

class RecipeDetailAppBar extends StatelessWidget {
  const RecipeDetailAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      systemOverlayStyle:
          const SystemUiOverlayStyle(statusBarBrightness: Brightness.dark),
      expandedHeight: 275.0,
      backgroundColor: Colors.white,
      elevation: 0.0,
      pinned: true,
      stretch: true,
      flexibleSpace: FlexibleSpaceBar(
        background: Image.asset(
          'assets/images/food_picture.png',
          fit: BoxFit.cover,
        ),
        stretchModes: const [
          StretchMode.blurBackground,
          StretchMode.zoomBackground,
        ],
      ),
      bottom: PreferredSize(
        preferredSize: const Size.fromHeight(0.0),
        child: Container(
          height: 32.0,
          alignment: Alignment.center,
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(32.0),
              topRight: Radius.circular(32.0),
            ),
          ),
          child: Container(
            width: 40.0,
            height: 5.0,
            decoration: BoxDecoration(
              color: kOutlineColor,
              borderRadius: BorderRadius.circular(100.0),
            ),
          ),
        ),
      ),
      leadingWidth: 80.0,
      leading: Container(
        margin: const EdgeInsets.only(left: 24.0),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(56.0),
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 3.0, sigmaY: 3.0),
            child: Container(
              height: 56.0,
              width: 56.0,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white.withOpacity(0.20),
              ),
              child:
                  SvgPicture.asset('assets/icons/arrow-ios-back-outline.svg'),
            ),
          ),
        ),
      ),
    );
  }
}
