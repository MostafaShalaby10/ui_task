import 'package:flutter/material.dart';

import '../../../../core/utils/app_assets.dart';

class BackgroundImage extends StatelessWidget {
  const BackgroundImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Transform.translate(
      offset: Offset(0, 0),
      child: Image.asset(AppAssets().backGround, fit: BoxFit.fill , height: double.infinity, width: double.infinity,),
    );
  }
}
