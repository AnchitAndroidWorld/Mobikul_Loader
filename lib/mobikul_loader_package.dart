library mobikul_loader_package;

import 'package:flutter/material.dart';

/// A loader with message.
class MobikulLoader extends StatelessWidget {
  final String? message;
  final Color? loaderColor;
  final Color? fontColor;
  final double? fontSize;

  const MobikulLoader({Key? key, this.message, this.loaderColor, this.fontSize, this. fontColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            message ?? '',
            textAlign: TextAlign.center,
            style:  TextStyle(
              fontSize: fontSize?? 16,
              color: fontColor ?? Theme.of(context).primaryColor ,
            ),
          ),
          const SizedBox(height: 24),
          CircularProgressIndicator(
            valueColor: AlwaysStoppedAnimation<Color?>(
              loaderColor ?? Theme.of(context).iconTheme.color,
            ),
          ),
        ],
      ),
    );
  }
}
